// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/src/api_plugin_options.dart';
import 'package:amplify_api_dart/src/graphql/helpers/send_graphql_request.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/connectivity_platform.dart';
import 'package:amplify_api_dart/src/util/amplify_api_config.dart';
import 'package:amplify_api_dart/src/util/amplify_authorization_rest_client.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/data/data_outputs.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/rest_api/rest_api_outputs.dart';
import 'package:meta/meta.dart';

/// {@template amplify_api_dart.amplify_api_dart}
/// The AWS implementation of the Amplify API category in Dart.
/// {@endtemplate}
class AmplifyAPIDart extends APIPluginInterface with AWSDebuggable {
  /// {@macro amplify_api_dart.amplify_api_dart}
  AmplifyAPIDart({
    APIPluginOptions options = const APIPluginOptions(),
    ConnectivityPlatform connectivity = const ConnectivityPlatform(),
  })  : _options = options,
        _connectivity = connectivity {
    _options.authProviders.forEach(registerAuthProvider);
  }

  final APIPluginOptions _options;
  late final Map<String, DataOutputs>? _dataConfig;
  late final Map<String, RestApiOutputs>? _restConfig;
  late final AmplifyAuthProviderRepository _authProviderRepo;

  /// Creates a stream representing network connectivity at the hardware level.
  final ConnectivityPlatform _connectivity;

  /// A map of the keys from the Amplify API config with auth modes to HTTP clients
  /// to use for requests to that endpoint/auth mode. e.g. { "myEndpoint.AWS_IAM": AWSHttpClient}
  final Map<String, AWSHttpClient> _clientPool = {};

  /// A map of the keys from the Amplify API config websocket connections to use
  /// for that endpoint.
  final Map<String, WebSocketBloc> _webSocketBlocPool = {};

  final StreamController<ApiHubEvent> _hubEventController =
      StreamController<ApiHubEvent>.broadcast();

  @override
  Future<void> reset() async {
    for (final bloc in _webSocketBlocPool.values) {
      bloc.add(const ShutdownEvent());
    }

    await Future.wait(
      _webSocketBlocPool.values.map((bloc) => bloc.done.future),
    );

    await _hubEventController.close();
    await super.reset();
  }

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final dataConfig = config?.data;
    // ignore: invalid_use_of_internal_member
    final restApiConfig = config?.restApi;
    _validateConfig(dataConfig, restApiConfig);
    _dataConfig = dataConfig;
    _restConfig = restApiConfig;
    _authProviderRepo = authProviderRepo;
    _registerApiPluginAuthProviders();
    Amplify.Hub.addChannel(HubChannel.Api, _hubEventController.stream);
  }

  void _validateConfig(
    Map<String, DataOutputs>? dataConfig,
    Map<String, RestApiOutputs>? restApiConfig,
  ) {
    if (dataConfig == null && restApiConfig == null) {
      throw ConfigurationError(
        'No API config found',
        recoverySuggestion: 'Add API configuration to use API plugin. See '
            'https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter/#configure-api',
      );
    }
    dataConfig?.forEach((key, value) {
      if (!value.url.startsWith('https')) {
        throw ConfigurationError(
          'Non-HTTPS url found for $key which is not supported.',
          recoverySuggestion:
              'Ensure the configured url for $key utilizes https.',
        );
      }
    });
    restApiConfig?.forEach((key, value) {
      if (!value.url.startsWith('https')) {
        throw ConfigurationError(
          'Non-HTTPS url found for $key which is not supported.',
          recoverySuggestion:
              'Ensure the configured url for $key utilizes https.',
        );
      }
    });
  }

  /// Register AmplifyAuthProviders that are specific to API category (API key,
  /// OIDC or Lambda).
  ///
  /// If an endpoint has an API key, ensure valid auth provider registered.
  ///
  /// Register OIDC/Lambda set to _authProviders in constructor.
  void _registerApiPluginAuthProviders() {
    _dataConfig?.forEach((key, value) {
      // Check the presence of apiKey (not auth type) because other modes might
      // have a key if not the primary auth mode.
      if (value.defaultAuthorizationType == APIAuthorizationType.apiKey ||
          value.authorizationTypes
              .any((element) => element == APIAuthorizationType.apiKey)) {
        _authProviderRepo.registerAuthProvider(
          APIAuthorizationType.apiKey.authProviderToken,
          AppSyncApiKeyAuthProvider(),
        );
      }
    });

    // Register OIDC/Lambda auth providers.
    for (final authProvider in authProviders.values) {
      _authProviderRepo.registerAuthProvider(
        authProvider.type.authProviderToken,
        OidcFunctionAuthProvider(authProvider),
      );
    }
  }

  // TODO(equartey): add [apiName] to event to distinguished when multiple blocs are running.
  void _emitHubEvent(WebSocketState state) {
    if (state is ConnectingState || state is ReconnectingState) {
      _hubEventController.add(SubscriptionHubEvent.connecting());
    } else if (state is ConnectedState) {
      _hubEventController.add(SubscriptionHubEvent.connected());
    } else if (state is PendingDisconnect) {
      _hubEventController.add(SubscriptionHubEvent.pendingDisconnect());
    } else if (state is DisconnectedState) {
      _hubEventController.add(SubscriptionHubEvent.disconnected());
    } else if (state is FailureState) {
      _hubEventController.add(SubscriptionHubEvent.failed());
    }
  }

  /// Returns the HTTP client to be used for REST/GraphQL operations.
  ///
  /// Use [apiName] if there are multiple endpoints of the same type.
  @visibleForTesting
  AWSHttpClient getHttpClient(
    EndpointType type, {
    String? apiName,
    APIAuthorizationType? authorizationMode,
  }) {
    final endpoint = _getEndpointConfig(type, apiName);
    final authModeForClientKey =
        authorizationMode ?? endpoint.config.authorizationType;
    final clientPoolKey = '${endpoint.name}.${authModeForClientKey.name}';
    return _clientPool[clientPoolKey] ??= AmplifyHttpClient(
      dependencies,
      baseClient: AmplifyAuthorizationRestClient(
        endpointConfig: endpoint.config,
        baseClient: _options.baseHttpClient ?? dependencies.getOrCreate(),
        authorizationMode: authorizationMode,
        authProviderRepo: _authProviderRepo,
      ),
    );
  }

  EndpointConfig _getEndpointConfig(EndpointType type, String? apiName) {
    if (type == EndpointType.graphQL) {
      if (_dataConfig == null) {
        throw ConfigurationError(
          'No GraphQL API endpoint found.',
        );
      }
      DataOutputs config;
      if (apiName != null) {
        config = _dataConfig.entries
            .firstWhere(
              (config) => config.key == apiName,
              orElse: () => throw ConfigurationError(
                'No GraphQL API endpoint found matching apiName $apiName.',
              ),
            )
            .value;
      } else {
        if (_dataConfig.length > 1) {
          throw ConfigurationError(
            'Multiple GraphQL API endpoints defined. Pass apiName parameter to specify '
            'which one to use.',
          );
        }
        config = _dataConfig.values.first;
        apiName = _dataConfig.keys.first;
      }
      return EndpointConfig(
        apiName,
        AWSApiConfig(
          region: config.awsRegion,
          endpoint: config.url,
          endpointType: EndpointType.graphQL,
          authorizationType: config.defaultAuthorizationType,
          apiKey: config.apiKey,
        ),
      );
    }
    if (type == EndpointType.rest) {
      if (_restConfig == null) {
        throw ConfigurationError(
          'No REST API endpoint found.',
        );
      }
      RestApiOutputs config;
      if (apiName != null) {
        config = _restConfig.entries
            .firstWhere(
              (config) => config.key == apiName,
              orElse: () => throw ConfigurationError(
                'No REST API endpoint found matching apiName $apiName.',
              ),
            )
            .value;
      } else {
        if (_restConfig.length > 1) {
          throw ConfigurationError(
            'Multiple REST API endpoints defined. Pass apiName parameter to specify '
            'which one to use.',
          );
        }
        config = _restConfig.values.first;
        apiName = _restConfig.keys.first;
      }
      return EndpointConfig(
        apiName,
        AWSApiConfig(
          region: config.awsRegion,
          endpoint: config.url,
          endpointType: EndpointType.rest,
          authorizationType: config.authorizationType,
          apiKey: config.apiKey,
        ),
      );
    }
    throw ConfigurationError(
      'Endpoint type $type is not supported.',
    );
  }

  WebSocketBloc _webSocketBloc({String? apiName}) {
    final endpoint = _getEndpointConfig(
      EndpointType.graphQL,
      apiName,
    );

    return _webSocketBlocPool[endpoint.name] ??= createWebSocketBloc(endpoint)
      ..stream.listen((event) {
        _emitHubEvent(event);
        if (event is PendingDisconnect) {
          _webSocketBlocPool.remove(endpoint.name);
        }
      });
  }

  /// Returns the websocket bloc to use for a given endpoint.
  ///
  /// Use [endpoint] if there are multiple endpoints.
  @visibleForTesting
  WebSocketBloc createWebSocketBloc(EndpointConfig endpoint) {
    return WebSocketBloc(
      config: endpoint.config,
      authProviderRepo: _authProviderRepo,
      wsService: AmplifyWebSocketService(),
      subscriptionOptions: _options.subscriptionOptions,
      connectivity: _connectivity,
    );
  }

  Uri _getGraphQLUri(String? apiName) {
    final endpoint = _getEndpointConfig(
      EndpointType.graphQL,
      apiName,
    );
    return endpoint.getUri();
  }

  Uri _getRestUri(
    String path,
    String? apiName,
    Map<String, dynamic>? queryParameters,
  ) {
    final endpoint = _getEndpointConfig(
      EndpointType.rest,
      apiName,
    );
    return endpoint.getUri(path: path, queryParameters: queryParameters);
  }

  @override
  ModelProviderInterface? get modelProvider => _options.modelProvider;
  // ====== GraphQL ======

  @override
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) {
    final graphQLClient = getHttpClient(
      EndpointType.graphQL,
      apiName: request.apiName,
      authorizationMode: request.authorizationMode,
    );
    final uri = _getGraphQLUri(request.apiName);

    return sendGraphQLRequest<T>(
      request: request,
      client: graphQLClient,
      uri: uri,
    );
  }

  @override
  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) {
    final graphQLClient = getHttpClient(
      EndpointType.graphQL,
      apiName: request.apiName,
      authorizationMode: request.authorizationMode,
    );
    final uri = _getGraphQLUri(request.apiName);

    return sendGraphQLRequest<T>(
      request: request,
      client: graphQLClient,
      uri: uri,
    );
  }

  @override
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    final event = SubscribeEvent(request, onEstablished);
    return _webSocketBloc(apiName: request.apiName).subscribe(event);
  }

  // ====== REST =======

  @override
  RestOperation delete(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSStreamedHttpRequest.delete(
        uri,
        body: body,
        headers: headers,
      ).send(client: client),
    );
  }

  @override
  RestOperation get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSHttpRequest.get(
        uri,
        headers: headers,
      ).send(client: client),
    );
  }

  @override
  RestOperation head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSHttpRequest.head(
        uri,
        headers: headers,
      ).send(client: client),
    );
  }

  @override
  RestOperation patch(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSStreamedHttpRequest.patch(
        uri,
        headers: headers,
        body: body ?? const HttpPayload.empty(),
      ).send(client: client),
    );
  }

  @override
  RestOperation post(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSStreamedHttpRequest.post(
        uri,
        headers: headers,
        body: body ?? const HttpPayload.empty(),
      ).send(client: client),
    );
  }

  @override
  RestOperation put(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return RestOperation.fromHttpOperation(
      AWSStreamedHttpRequest.put(
        uri,
        headers: headers,
        body: body ?? const HttpPayload.empty(),
      ).send(client: client),
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyAPIDart';
}

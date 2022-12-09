// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Amplify API for Dart
library amplify_api_dart;

import 'dart:async';

import 'package:amplify_api/src/graphql/helpers/send_graphql_request.dart';
import 'package:amplify_api/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/connectivity_status.dart';
import 'package:amplify_api/src/util/amplify_api_config.dart';
import 'package:amplify_api/src/util/amplify_authorization_rest_client.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

export 'package:amplify_api/src/graphql/model_helpers/model_mutations.dart';
export 'package:amplify_api/src/graphql/model_helpers/model_queries.dart';
export 'package:amplify_api/src/graphql/model_helpers/model_subscriptions.dart';
export 'package:amplify_api/src/graphql/web_socket/types/connectivity_status.dart';
export 'package:amplify_core/src/types/api/api_types.dart';

/// {@template amplify_api_dart.amplify_api_dart}
/// The AWS implementation of the Amplify API category in Dart.
/// {@endtemplate}
class AmplifyAPIDart extends APIPluginInterface with AWSDebuggable {
  /// {@macro amplify_api_dart.amplify_api_dart}
  AmplifyAPIDart({
    List<APIAuthProvider> authProviders = const [],
    AWSHttpClient? baseHttpClient,
    this.modelProvider,
    this.subscriptionOptions,
    this.connectivityStreamCreator,
  }) : _baseHttpClient = baseHttpClient {
    authProviders.forEach(registerAuthProvider);
    Amplify.Hub.addChannel(HubChannel.Api, _hubEventController.stream);
  }

  late final AWSApiPluginConfig _apiConfig;
  final AWSHttpClient? _baseHttpClient;
  late final AmplifyAuthProviderRepository _authProviderRepo;

  /// Creates a stream representing network connectivity at the hardware level.
  ConnectivityInterface? connectivityStreamCreator;

  /// A map of the keys from the Amplify API config with auth modes to HTTP clients
  /// to use for requests to that endpoint/auth mode. e.g. { "myEndpoint.AWS_IAM": AWSHttpClient}
  final Map<String, AWSHttpClient> _clientPool = {};

  /// A map of the keys from the Amplify API config websocket connections to use
  /// for that endpoint.
  final Map<String, WebSocketBloc> _webSocketBlocPool = {};

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  final StreamController<ApiHubEvent> _hubEventController =
      StreamController<ApiHubEvent>.broadcast();

  /// Subscription options
  final GraphQLSubscriptionOptions? subscriptionOptions;

  @override
  Future<void> reset() async {
    for (final bloc in _webSocketBlocPool.values) {
      bloc.add(const ShutdownEvent());
    }

    await Future.wait(
      _webSocketBlocPool.values.map((bloc) => bloc.done.future),
    );

    await _hubEventController.close();
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final apiConfig = config?.api?.awsPlugin;
    if (apiConfig == null) {
      throw const ApiException(
        'No AWS API config found',
        recoverySuggestion: 'Add API from the Amplify CLI. See '
            'https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter/#configure-api',
      );
    }
    for (final entry in apiConfig.endpoints.entries) {
      if (!entry.value.endpoint.startsWith('https')) {
        throw ApiException(
          'Non-HTTPS endpoint found for ${entry.key} which is not supported.',
          recoverySuggestion:
              'Ensure the configured endpoint for ${entry.key} utilizes https.',
        );
      }
    }
    _apiConfig = apiConfig;
    _authProviderRepo = authProviderRepo;
    _registerApiPluginAuthProviders();
  }

  /// Register AmplifyAuthProviders that are specific to API category (API key,
  /// OIDC or Lambda).
  ///
  /// If an endpoint has an API key, ensure valid auth provider registered.
  ///
  /// Register OIDC/Lambda set to _authProviders in constructor.
  void _registerApiPluginAuthProviders() {
    _apiConfig.endpoints.forEach((key, value) {
      // Check the presence of apiKey (not auth type) because other modes might
      // have a key if not the primary auth mode.
      if (value.apiKey != null) {
        _authProviderRepo.registerAuthProvider(
          APIAuthorizationType.apiKey.authProviderToken,
          AppSyncApiKeyAuthProvider(),
        );
      }
    });

    // Register OIDC/Lambda auth providers.
    for (final authProvider in _authProviders.values) {
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
    final endpoint = _apiConfig.getEndpoint(
      type: type,
      apiName: apiName,
    );
    final authModeForClientKey =
        authorizationMode ?? endpoint.config.authorizationType;
    final clientPoolKey = '${endpoint.name}.${authModeForClientKey.name}';
    return _clientPool[clientPoolKey] ??= AmplifyHttpClient(
      baseClient: AmplifyAuthorizationRestClient(
        endpointConfig: endpoint.config,
        baseClient: _baseHttpClient,
        authorizationMode: authorizationMode,
        authProviderRepo: _authProviderRepo,
      ),
    )..supportedProtocols = SupportedProtocols.http1;
  }

  WebSocketBloc _webSocketBloc({String? apiName}) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
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
      subscriptionOptions:
          subscriptionOptions ?? const GraphQLSubscriptionOptions(),
      connectivityStreamCreator: connectivityStreamCreator,
    );
  }

  Uri _getGraphQLUri(String? apiName) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
    );
    return endpoint.getUri();
  }

  Uri _getRestUri(
    String path,
    String? apiName,
    Map<String, dynamic>? queryParameters,
  ) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.rest,
      apiName: apiName,
    );
    return endpoint.getUri(path: path, queryParameters: queryParameters);
  }

  @override
  final ModelProviderInterface? modelProvider;

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {
    _authProviders[authProvider.type] = authProvider;
  }

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

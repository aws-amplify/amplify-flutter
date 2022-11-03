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

library amplify_api;

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/helpers/send_graphql_request.dart';
import 'package:amplify_api/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api/src/graphql/web_socket/web_socket_connection.dart';
import 'package:amplify_api/src/native_api_plugin.dart';
import 'package:amplify_api/src/util/amplify_api_config.dart';
import 'package:amplify_api/src/util/amplify_authorization_rest_client.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

/// {@template amplify_api.amplify_api_dart}
/// The AWS implementation of the Amplify API category.
/// {@endtemplate}
class AmplifyAPIDart extends AmplifyAPI {
  /// {@macro amplify_api.amplify_api_dart}
  AmplifyAPIDart({
    List<APIAuthProvider> authProviders = const [],
    AWSHttpClient? baseHttpClient,
    this.modelProvider,
    this.subscriptionOptions,
  })  : _baseHttpClient = baseHttpClient,
        super.protected() {
    authProviders.forEach(registerAuthProvider);
  }

  late final AWSApiPluginConfig _apiConfig;
  final AWSHttpClient? _baseHttpClient;
  late final AmplifyAuthProviderRepository _authProviderRepo;
  final _logger = AmplifyLogger.category(Category.api);

  /// A map of the keys from the Amplify API config with auth modes to HTTP clients
  /// to use for requests to that endpoint/auth mode. e.g. { "myEndpoint.AWS_IAM": AWSHttpClient}
  final Map<String, AWSHttpClient> _clientPool = {};

  /// A map of the keys from the Amplify API config websocket connections to use
  /// for that endpoint.
  final Map<String, WebSocketBloc> _webSocketBlocPool = {};

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  /// Subscription options
  final GraphQLSubscriptionOptions? subscriptionOptions;

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

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);

    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyApi(_authProviders);
    NativeApiPlugin.setup(nativePlugin);

    final nativeBridge = NativeApiBridge();
    try {
      final authProvidersList =
          _authProviders.keys.map((key) => key.rawValue).toList();
      await nativeBridge.addPlugin(authProvidersList);
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException' ||
          e.code == 'AlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
          AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
        );
      }
      throw AmplifyException.fromMap((e.details as Map).cast());
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

  /// Returns the websocket bloc to use for a given endpoint.
  ///
  /// Use [apiName] if there are multiple endpoints.
  @visibleForTesting
  WebSocketBloc getWebSocketBloc({String? apiName}) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
    );

    return _webSocketBlocPool[endpoint.name] ??= WebSocketBloc(
      endpoint.config,
      _authProviderRepo,
      wsService: AmplifyWebSocketService(),
    );
  }

  Uri _getGraphQLUri(String? apiName) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
    );
    return endpoint.getUri(path: null, queryParameters: null);
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
    return getWebSocketBloc(apiName: request.apiName).subscribe(event);
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
}

class _NativeAmplifyApi
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeApiPlugin {
  _NativeAmplifyApi(this._authProviders);

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders;

  @override
  Future<String?> getLatestAuthToken(String providerName) {
    final provider = APIAuthorizationTypeX.from(providerName);
    if (provider == null) {
      throw PlatformException(code: 'BAD_ARGUMENTS');
    }
    final authProvider = _authProviders[provider];
    if (authProvider == null) {
      throw PlatformException(
        code: 'NO_PROVIDER',
        message: 'No provider found for $authProvider',
      );
    }
    return authProvider.getLatestAuthToken();
  }

  @override
  String get runtimeTypeName => '_NativeAmplifyApi';
}

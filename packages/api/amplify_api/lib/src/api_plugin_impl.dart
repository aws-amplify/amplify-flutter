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
import 'package:amplify_api/src/graphql/ws/websocket_connection.dart';
import 'package:amplify_api/src/native_api_plugin.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'amplify_api_config.dart';
import 'amplify_authorization_rest_client.dart';
import 'graphql/app_sync_api_key_auth_provider.dart';
import 'graphql/send_graphql_request.dart';
import 'util.dart';

/// {@template amplify_api.amplify_api_dart}
/// The AWS implementation of the Amplify API category.
/// {@endtemplate}
class AmplifyAPIDart extends AmplifyAPI {
  late final AWSApiPluginConfig _apiConfig;
  final http.Client? _baseHttpClient;
  late final AmplifyAuthProviderRepository _authProviderRepo;

  /// A map of the keys from the Amplify API config to HTTP clients to use for
  /// requests to that endpoint.
  final Map<String, http.Client> _clientPool = {};

  /// A map of the keys from the Amplify API config websocket connections to use
  /// for that endpoint.
  final Map<String, WebSocketConnection> _webSocketConnectionPool = {};

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  /// {@macro amplify_api.amplify_api_dart}
  AmplifyAPIDart({
    List<APIAuthProvider> authProviders = const [],
    http.Client? baseHttpClient,
    this.modelProvider,
  })  : _baseHttpClient = baseHttpClient,
        super.protected() {
    authProviders.forEach(registerAuthProvider);
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final apiConfig = config?.api?.awsPlugin;
    if (apiConfig == null) {
      throw const ApiException('No AWS API config found',
          recoverySuggestion: 'Add API from the Amplify CLI. See '
              'https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter/#configure-api');
    }
    _apiConfig = apiConfig;
    _authProviderRepo = authProviderRepo;
    _registerApiPluginAuthProviders();
  }

  /// If an endpoint has an API key, ensure valid auth provider registered.
  void _registerApiPluginAuthProviders() {
    _apiConfig.endpoints.forEach((key, value) {
      // Check the presence of apiKey (not auth type) because other modes might
      // have a key if not the primary auth mode.
      if (value.apiKey != null) {
        _authProviderRepo.registerAuthProvider(
            value.authorizationType.authProviderToken,
            AppSyncApiKeyAuthProvider());
      }
    });
  }

  @override
  Future<void> addPlugin() async {
    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    final nativeBridge = NativeApiBridge();
    try {
      final authProvidersList =
          _authProviders.keys.map((key) => key.rawValue).toList();
      await nativeBridge.addPlugin(authProvidersList);
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
      }
      throw AmplifyException.fromMap((e.details as Map).cast());
    }
  }

  /// Returns the HTTP client to be used for REST/GraphQL operations.
  ///
  /// Use [apiName] if there are multiple endpoints of the same type.
  @visibleForTesting
  http.Client getHttpClient(EndpointType type, {String? apiName}) {
    final endpoint = _apiConfig.getEndpoint(
      type: type,
      apiName: apiName,
    );
    return _clientPool[endpoint.name] ??= AmplifyHttpClient(
        baseClient: AmplifyAuthorizationRestClient(
      endpointConfig: endpoint.config,
      baseClient: _baseHttpClient,
      authProviderRepo: _authProviderRepo,
    ));
  }

  /// Returns the websocket connection to use for a given endpoint.
  ///
  /// Use [apiName] if there are multiple endpoints.
  @visibleForTesting
  WebSocketConnection getWebsocketConnection({String? apiName}) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
    );
    return _webSocketConnectionPool[endpoint.name] ??=
        WebSocketConnection(endpoint.config, _authProviderRepo);
  }

  Uri _getGraphQLUri(String? apiName) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.graphQL,
      apiName: apiName,
    );
    return endpoint.getUri(path: null, queryParameters: null);
  }

  Uri _getRestUri(
      String path, String? apiName, Map<String, dynamic>? queryParameters) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.rest,
      apiName: apiName,
    );
    return endpoint.getUri(path: path, queryParameters: queryParameters);
  }

  /// NOTE: http does not support request abort https://github.com/dart-lang/http/issues/424.
  /// For now, just make a [CancelableOperation] to cancel the future.
  /// To actually abort calls at network layer, need to call in
  /// dart:io/dart:html or other library with custom http default Client() implementation.
  CancelableOperation<T> _makeCancelable<T>(Future<T> responseFuture) {
    return CancelableOperation.fromFuture(responseFuture);
  }

  CancelableOperation<AWSStreamedHttpResponse> _prepareRestResponse(
      Future<AWSStreamedHttpResponse> responseFuture) {
    return _makeCancelable(responseFuture);
  }

  @override
  final ModelProviderInterface? modelProvider;

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {
    _authProviders[authProvider.type] = authProvider;
  }

  // ====== GraphQL ======

  @override
  CancelableOperation<GraphQLResponse<T>> query<T>(
      {required GraphQLRequest<T> request}) {
    final graphQLClient =
        getHttpClient(EndpointType.graphQL, apiName: request.apiName);
    final uri = _getGraphQLUri(request.apiName);

    final responseFuture = sendGraphQLRequest<T>(
        request: request, client: graphQLClient, uri: uri);
    return _makeCancelable<GraphQLResponse<T>>(responseFuture);
  }

  @override
  CancelableOperation<GraphQLResponse<T>> mutate<T>(
      {required GraphQLRequest<T> request}) {
    final graphQLClient =
        getHttpClient(EndpointType.graphQL, apiName: request.apiName);
    final uri = _getGraphQLUri(request.apiName);

    final responseFuture = sendGraphQLRequest<T>(
        request: request, client: graphQLClient, uri: uri);
    return _makeCancelable<GraphQLResponse<T>>(responseFuture);
  }

  @override
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    return getWebsocketConnection(apiName: request.apiName)
        .subscribe(request, onEstablished);
  }

  // ====== REST =======

  @override
  CancelableOperation<AWSStreamedHttpResponse> delete(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(AWSStreamedHttpRequest.delete(
      uri,
      body: body ?? HttpPayload.empty(),
      headers: addContentTypeToHeaders(headers, body),
    ).send(client));
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(
      AWSHttpRequest.get(
        uri,
        headers: headers,
      ).send(client),
    );
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(
      AWSHttpRequest.head(
        uri,
        headers: headers,
      ).send(client),
    );
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> patch(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(
      AWSStreamedHttpRequest.patch(
        uri,
        headers: addContentTypeToHeaders(headers, body),
        body: body ?? HttpPayload.empty(),
      ).send(client),
    );
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> post(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(
      AWSStreamedHttpRequest.post(
        uri,
        headers: addContentTypeToHeaders(headers, body),
        body: body ?? HttpPayload.empty(),
      ).send(client),
    );
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> put(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    final uri = _getRestUri(path, apiName, queryParameters);
    final client = getHttpClient(EndpointType.rest, apiName: apiName);
    return _prepareRestResponse(
      AWSStreamedHttpRequest.put(
        uri,
        headers: addContentTypeToHeaders(headers, body),
        body: body ?? HttpPayload.empty(),
      ).send(client),
    );
  }
}

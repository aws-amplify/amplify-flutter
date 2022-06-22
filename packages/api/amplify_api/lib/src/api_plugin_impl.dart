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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'amplify_api_config.dart';
import 'amplify_authorization_rest_client.dart';
import 'util.dart';

/// {@template amplify_api.amplify_api_dart}
/// The AWS implementation of the Amplify API category.
/// {@endtemplate}
class AmplifyAPIDart extends AmplifyAPI {
  late final AWSApiPluginConfig _apiConfig;
  final http.Client? _baseHttpClient;

  /// A map of the keys from the Amplify API config to HTTP clients to use for
  /// requests to that endpoint.
  final Map<String, AmplifyAuthorizationRestClient> _clientPool = {};

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
  Future<void> configure({AmplifyConfig? config}) async {
    final apiConfig = config?.api?.awsPlugin;
    if (apiConfig == null) {
      throw const ApiException('No AWS API config found',
          recoverySuggestion: 'Add API from the Amplify CLI. See '
              'https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter/#configure-api');
    }
    _apiConfig = apiConfig;

    await super.configure(config: config);
  }

  /// Returns the HTTP client to be used for REST operations.
  ///
  /// Use [apiName] if there are multiple REST endpoints.
  @visibleForTesting
  http.Client getRestClient({String? apiName}) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.rest,
      apiName: apiName,
    );
    return _clientPool[endpoint.name] ??= AmplifyAuthorizationRestClient(
      endpointConfig: endpoint.config,
      baseClient: _baseHttpClient,
    );
  }

  Uri _getRestUri(
      String path, String? apiName, Map<String, dynamic>? queryParameters) {
    final endpoint = _apiConfig.getEndpoint(
      type: EndpointType.rest,
      apiName: apiName,
    );
    return endpoint.getUri(path, queryParameters);
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
    // ignore: todo
    // TODO: integrate with auth provider implementation.
    throw UnimplementedError(
        'registerAuthProvider() has not been implemented.');
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
    final client = getRestClient(apiName: apiName);
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
    final client = getRestClient(apiName: apiName);
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
    final client = getRestClient(apiName: apiName);
    return _prepareRestResponse(
      AWSHttpRequest(
        method: AWSHttpMethod.head,
        uri: uri,
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
    final client = getRestClient(apiName: apiName);
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
    final client = getRestClient(apiName: apiName);
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
    final client = getRestClient(apiName: apiName);
    return _prepareRestResponse(
      AWSStreamedHttpRequest.put(
        uri,
        headers: addContentTypeToHeaders(headers, body),
        body: body ?? HttpPayload.empty(),
      ).send(client),
    );
  }
}

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

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const _xApiKey = 'X-Api-Key';

/// Implementation of http [http.Client] that authorizes HTTP requests with
/// Amplify.
@internal
class AmplifyAuthorizationRestClient extends http.BaseClient
    implements Closeable {
  /// Determines how requests with this client are authorized.
  final AWSApiConfig endpointConfig;
  final http.Client _baseClient;
  final bool _useDefaultBaseClient;
  final AmplifyAuthProviderRepository _authProviderRepo;

  /// Provide an [AWSApiConfig] which will determine how requests from this
  /// client are authorized.
  AmplifyAuthorizationRestClient({
    required this.endpointConfig,
    required AmplifyAuthProviderRepository authRepo,
    http.Client? baseClient,
  })  : _authProviderRepo = authRepo,
        _useDefaultBaseClient = baseClient == null,
        _baseClient = baseClient ?? http.Client();

  /// Implementation of [send] that authorizes any request without "Authorization"
  /// header already set.
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async =>
      _baseClient.send(await _authorizeRequest(request));

  @override
  void close() {
    if (_useDefaultBaseClient) _baseClient.close();
  }

  Future<http.BaseRequest> _authorizeRequest(http.BaseRequest request) async {
    if (!request.headers.containsKey(AWSHeaders.authorization)) {
      final authType = endpointConfig.authorizationType;

      // TODO(ragingsquirrel3): Use auth providers from core to transform the request.
      final apiKey = endpointConfig.apiKey;
      if (authType == APIAuthorizationType.apiKey) {
        if (apiKey == null) {
          throw const ApiException(
              'Auth mode is API Key, but no API Key was found in config.');
        }

        request.headers.putIfAbsent(_xApiKey, () => apiKey);
        return request;
      }
      switch (authType) {
        case APIAuthorizationType.iam:
          var authProvider = _authProviderRepo
              .getAuthProvider(APIAuthorizationType.iam.authProviderToken!);
          authProvider = _validateAuthProvider(authProvider, authType);
          final service = endpointConfig.endpointType == EndpointType.graphQL
              ? AWSService.appSync
              : AWSService.apiGatewayManagementApi;

          final signed = await authProvider.authorizeRequest(
            _httpToAWSRequest(request),
            options: IamAuthProviderOptions(
                region: endpointConfig.region, service: service),
          );
          return signed.httpRequest;
        case APIAuthorizationType.apiKey:
        case APIAuthorizationType.function:
        case APIAuthorizationType.oidc:
        case APIAuthorizationType.userPools:
          throw UnimplementedError('${authType.name} not implemented.');
        case APIAuthorizationType.none:
          break;
      }
    }

    return request;
  }
}

T _validateAuthProvider<T extends AmplifyAuthProvider>(
    T? authProvider, APIAuthorizationType authType) {
  if (authProvider == null) {
    throw ApiException('No auth provider found for auth mode ${authType.name}.',
        recoverySuggestion: 'Ensure auth plugin correctly configured.');
  }
  return authProvider;
}

AWSBaseHttpRequest _httpToAWSRequest(http.BaseRequest request) {
  final method = AWSHttpMethod.fromString(request.method);
  if (request is http.Request) {
    return AWSHttpRequest(
      method: method,
      uri: request.url,
      headers: {
        AWSHeaders.contentType: 'application/x-amz-json-1.1',
        ...request.headers,
      },
      body: request.bodyBytes,
    );
  } else if (request is http.StreamedRequest) {
    return AWSStreamedHttpRequest(
      method: method,
      uri: request.url,
      headers: {
        AWSHeaders.contentType: 'application/x-amz-json-1.1',
        ...request.headers,
      },
      body: request.finalize(),
    );
  } else {
    throw UnimplementedError(
      'Multipart HTTP requests are not supported.',
    );
  }
}

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
    required AmplifyAuthProviderRepository authProviderRepo,
    http.Client? baseClient,
  })  : _useDefaultBaseClient = baseClient == null,
        _baseClient = baseClient ?? http.Client(),
        _authProviderRepo = authProviderRepo;

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
    if (!request.headers.containsKey(AWSHeaders.authorization) &&
        endpointConfig.authorizationType != APIAuthorizationType.none) {
      final authProvider = _authProviderRepo
          .getAuthProvider(endpointConfig.authorizationType.name);
      if (authProvider != null) {
        final region = endpointConfig.region;
        final service = endpointConfig.endpointType == EndpointType.graphQL
            ? AWSService.appSync
            : AWSService.apiGatewayManagementApi;
        return authProvider.authorizeRequest(request,
            options: IAMAuthProviderOptions(service: service, region: region));
      } else {
        throw ApiException(
            'Unable to authorize request for authorization mode: ${endpointConfig.authorizationType.name}. Ensure the correct plugin has been added from the CLI and Amplify.addPlugin.');
      }
    }
    return request;
  }
}

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

import 'package:amplify_api/src/decorators/authorize_http_request.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Implementation of [AWSHttpClient] that authorizes HTTP requests with
/// Amplify.
@internal
class AmplifyAuthorizationRestClient extends AWSBaseHttpClient {
  /// Provide an [AWSApiConfig] which will determine how requests from this
  /// client are authorized.
  AmplifyAuthorizationRestClient({
    required this.endpointConfig,
    required this.authProviderRepo,
    this.authorizationMode,
    AWSHttpClient? baseClient,
  }) : baseClient = baseClient ?? AWSHttpClient();

  /// [AmplifyAuthProviderRepository] for any auth modes this client may use.
  final AmplifyAuthProviderRepository authProviderRepo;

  /// Determines how requests with this client are authorized.
  final AWSApiConfig endpointConfig;

  /// The authorization mode to use for requests with this client.
  ///
  /// If provided, will override the authorizationType of [endpointConfig].
  final APIAuthorizationType? authorizationMode;

  @override
  final AWSHttpClient baseClient;

  /// Implementation of [transformRequest] that authorizes any request without "Authorization"
  /// or "X-Api-Key" header already set and enforces HTTPS.
  @override
  Future<AWSBaseHttpRequest> transformRequest(AWSBaseHttpRequest request) {
    if (request.scheme != 'https') {
      throw const ApiException('Non-HTTPS requests not supported.');
    }
    return authorizeHttpRequest(
      request,
      endpointConfig: endpointConfig,
      authProviderRepo: authProviderRepo,
      authorizationMode: authorizationMode,
    );
  }

  @override
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async {
    // For REST endpoints, throw [RestException] on non-successful responses.
    if (endpointConfig.endpointType == EndpointType.rest &&
        (response.statusCode < 200 || response.statusCode >= 300)) {
      late AWSHttpResponse responseForException;
      if (response is AWSStreamedHttpResponse) {
        responseForException = await response.read();
      } else {
        responseForException = response as AWSHttpResponse;
      }
      throw RestException(responseForException);
    }
    return response;
  }
}

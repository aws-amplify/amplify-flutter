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

/// Implementation of http [http.Client] that authorizes HTTP requests with
/// Amplify.
@internal
class AmplifyAuthorizationRestClient extends AWSBaseHttpClient {
  /// [AmplifyAuthProviderRepository] for any auth modes this client may use.
  final AmplifyAuthProviderRepository authProviderRepo;

  /// Determines the URL and API key (if applicable) to use for this client.
  final AWSApiConfig endpointConfig;

  /// The authorization mode to use for requests with this client.
  final APIAuthorizationType authorizationMode;

  /// Provide an [AWSApiConfig] which will determine how requests from this
  /// client are authorized.
  AmplifyAuthorizationRestClient({
    required this.endpointConfig,
    required this.authorizationMode,
    required this.authProviderRepo,
    AWSHttpClient? baseClient,
  }) : baseClient = baseClient ?? AWSHttpClient();

  @override
  final AWSHttpClient baseClient;

  /// Implementation of [transformRequest] that authorizes any request without "Authorization"
  /// or "X-Api-Key" header already set.
  @override
  Future<AWSBaseHttpRequest> transformRequest(AWSBaseHttpRequest request) {
    return authorizeHttpRequest(
      request,
      endpointConfig: endpointConfig,
      authProviderRepo: authProviderRepo,
      authorizationMode: authorizationMode,
    );
  }
}

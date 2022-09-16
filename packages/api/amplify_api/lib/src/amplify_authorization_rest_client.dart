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
import 'package:async/async.dart';
import 'package:meta/meta.dart';

/// Implementation of http [http.Client] that authorizes HTTP requests with
/// Amplify.
@internal
class AmplifyAuthorizationRestClient extends AWSBaseHttpClient {
  /// [AmplifyAuthProviderRepository] for any auth modes this client may use.
  final AmplifyAuthProviderRepository authProviderRepo;

  /// Determines how requests with this client are authorized.
  final AWSApiConfig endpointConfig;

  /// Provide an [AWSApiConfig] which will determine how requests from this
  /// client are authorized.
  AmplifyAuthorizationRestClient({
    required this.endpointConfig,
    required this.authProviderRepo,
    AWSHttpClient? baseClient,
  }) : baseClient = baseClient ?? AWSHttpClient();

  @override
  final AWSHttpClient baseClient;

  /// Implementation of [send] that authorizes any request without "Authorization"
  /// header already set.
  @override
  Future<AWSBaseHttpRequest> transformRequest(AWSBaseHttpRequest request) {
    return authorizeHttpRequest(
      request,
      endpointConfig: endpointConfig,
      authProviderRepo: authProviderRepo,
    );
  }

  /// Allows overriding default auth mode of the API config.
  ///
  /// Authorizes the request with `authorizationMode` before deferring to `send()`.
  AWSHttpOperation sendWithAuthorizationMode(
    AWSBaseHttpRequest request, {
    APIAuthorizationType? authorizationMode,
  }) {
    final completer = CancelableCompleter<AWSBaseHttpResponse>();
    final requestProgressCompleter = StreamCompleter<int>();
    final responseProgressCompleter = StreamCompleter<int>();
    authorizeHttpRequest(
      request,
      endpointConfig: endpointConfig,
      authProviderRepo: authProviderRepo,
      authorizationMode: authorizationMode,
    ).then(send).then((httpOperation) {
      requestProgressCompleter.setSourceStream(httpOperation.requestProgress);
      responseProgressCompleter.setSourceStream(httpOperation.responseProgress);
      httpOperation.operation.then(
        (resp) async {
          resp = await transformResponse(resp);
          completer.complete(resp);
        },
        onError: completer.completeError,
        onCancel: completer.operation.cancel,
      );
    });
    return AWSHttpOperation(
      completer.operation,
      requestProgress: responseProgressCompleter.stream,
      responseProgress: responseProgressCompleter.stream,
    );
  }
}

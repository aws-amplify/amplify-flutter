// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/src/decorators/authorize_http_request.dart';
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

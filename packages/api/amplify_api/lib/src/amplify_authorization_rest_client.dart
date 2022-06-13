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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'util.dart';

/// Implementation of http [http.Client] that authorizes HTTP requests with
/// Amplify.
@internal
class AmplifyAuthorizationRestClient extends http.BaseClient {
  /// Determines how requests with this client are authorized.
  final AWSApiConfig endpointConfig;
  final http.Client _baseClient;
  final bool _useDefaultBaseClient;

  /// Provide an [AWSApiConfig] which will determine how requests from this
  /// client are authorized.
  AmplifyAuthorizationRestClient({
    required this.endpointConfig,
    http.Client? baseClient,
  })  : _useDefaultBaseClient = baseClient == null,
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
    if (!request.headers.containsKey(AWSHeaders.authorization) &&
        endpointConfig.authorizationType != APIAuthorizationType.none) {
      // ignore: todo
      // TODO: Use auth providers from core to transform the request.
      if (endpointConfig.authorizationType == APIAuthorizationType.iam) {
        final authSession = await Amplify.Auth.fetchAuthSession(
                options: const CognitoSessionOptions(getAWSCredentials: true))
            as CognitoAuthSession;
        final credentials = authSession.credentials;
        if (credentials == null) {
          throw const ApiException(
              'No AWS credentials found for IAM authorization');
        }
        final region = endpointConfig.region;
        final service = endpointConfig.endpointType == EndpointType.graphQL
            ? AWSService.appSync
            : AWSService.apiGateway;
        final signedRequest = await generateAWSSignedRequest(
          request,
          region: region,
          service: service,
          credentials: credentials,
        );
        return signedRequest.httpRequest;
      }
    }
    return request;
  }
}

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

@internal
library amplify_auth_cognito.util.authorization_providers;

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// [AmplifyAuthProvider] implementation that signs a request using AWS credentials
/// from `Amplify.Auth.fetchAuthSession()` or allows getting credentials directly.
@internal
class AWSIAMAuthProvider extends AWSCredentialsAmplifyAuthProvider {
  /// AWS credentials from Auth category.
  @override
  Future<AWSCredentials?> getCredentials() async {
    final authSession = await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(getAWSCredentials: true),
    ) as CognitoAuthSession;
    return authSession.credentials;
  }

  /// Signs request with AWSSigV4Signer and AWS credentials from `.getCredentials()`.
  @override
  Future<http.BaseRequest> authorizeRequest(
    http.BaseRequest request, {
    IAMAuthProviderOptions? options,
  }) async {
    if (options == null) {
      throw const AuthException(
        'Unable to authorize request with IAM. No region or service provided.',
      );
    }

    final credentials = await getCredentials();
    if (credentials == null) {
      throw const InvalidCredentialsException(
        'Unable to authorize request with IAM. No AWS credentials.',
      );
    }

    final signedRequest = await _generateAWSSignedRequest(
      request,
      region: options.region,
      service: options.service,
      credentials: credentials,
    );
    return signedRequest.httpRequest;
  }

  /// Takes input [request] as canonical request and generates a signed version.
  Future<AWSSignedRequest> _generateAWSSignedRequest(
    http.BaseRequest request, {
    required String region,
    required AWSService service,
    required AWSCredentials credentials,
  }) {
    // Create signer helper params.
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(credentials),
    );
    final scope = AWSCredentialScope(
      region: region,
      service: service,
    );

    final method = AWSHttpMethod.fromString(request.method);

    AWSBaseHttpRequest requestToSign;
    if (request is http.Request) {
      requestToSign = AWSHttpRequest(
        method: method,
        uri: request.url,
        headers: {
          AWSHeaders.contentType: 'application/x-amz-json-1.1',
          ...request.headers,
        },
        body: request.bodyBytes,
      );
    } else if (request is http.StreamedRequest) {
      requestToSign = AWSStreamedHttpRequest(
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
        'Multipart HTTP requests are not supported with IAM authorization.',
      );
    }

    // Finally, create and sign canonical request.
    return signer.sign(
      requestToSign,
      credentialScope: scope,
    );
  }
}

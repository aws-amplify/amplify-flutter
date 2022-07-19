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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// [AmplifyAuthProvider] implementation that signs a request using AWS credentials
/// from `Amplify.Auth.fetchAuthSession()` or allows getting credentials directly.
@internal
class CognitoIamAuthProvider extends AWSIamAmplifyAuthProvider {
  /// AWS credentials from Auth category.
  @override
  Future<AWSCredentials> retrieve() async {
    final authSession = await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(getAWSCredentials: true),
    ) as CognitoAuthSession;
    final credentials = authSession.credentials;
    if (credentials == null) {
      throw const InvalidCredentialsException(
        'Unable to authorize request with IAM. No AWS credentials.',
      );
    }
    return credentials;
  }

  /// Signs request with AWSSigV4Signer and AWS credentials from `.getCredentials()`.
  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    if (options == null) {
      throw const AuthException(
        'Unable to authorize request with IAM. No region or service provided.',
      );
    }

    return _signRequest(
      request,
      region: options.region,
      service: options.service,
      credentials: await retrieve(),
    );
  }

  /// Takes input [request] as canonical request and generates a signed version.
  Future<AWSSignedRequest> _signRequest(
    AWSBaseHttpRequest request, {
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

    // Finally, create and sign canonical request.
    return signer.sign(
      request,
      credentialScope: scope,
    );
  }
}

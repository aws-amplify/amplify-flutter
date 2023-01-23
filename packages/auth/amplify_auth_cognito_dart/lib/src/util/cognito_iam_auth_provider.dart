// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito_dart.cognito_iam_auth_provider}
/// [AmplifyAuthProvider] implementation that signs a request using AWS
/// credentials from [AmplifyAuthCognitoDart.fetchAuthSession] or allows getting
/// credentials directly.
/// {@endtemplate}
@internal
class CognitoIamAuthProvider extends AWSIamAmplifyAuthProvider {
  /// {@macro amplify_auth_cognito_dart.cognito_iam_auth_provider}
  const CognitoIamAuthProvider();

  /// AWS credentials from Auth category.
  @override
  Future<AWSCredentials> retrieve() async {
    final authSession = await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(),
    ) as CognitoAuthSession;
    try {
      return authSession.credentialsResult.value;
    } on AuthNotAuthorizedException {
      throw const AuthNotAuthorizedException(
        'Unable to authorize request with IAM. No AWS credentials.',
      );
    }
  }

  /// Signs request with [AWSSigV4Signer] and AWS credentials from [retrieve].
  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    if (options == null) {
      throw const AuthNotAuthorizedException(
        'Unable to authorize request with IAM. No region or service provided.',
      );
    }

    return _signRequest(
      request,
      region: options.region,
      service: options.service,
      serviceConfiguration: options.serviceConfiguration,
      credentials: await retrieve(),
    );
  }

  /// Takes input [request] as canonical request and generates a signed version.
  Future<AWSSignedRequest> _signRequest(
    AWSBaseHttpRequest request, {
    required String region,
    required AWSService service,
    required AWSCredentials credentials,
    ServiceConfiguration? serviceConfiguration,
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
      serviceConfiguration:
          serviceConfiguration ?? const BaseServiceConfiguration(),
    );
  }
}

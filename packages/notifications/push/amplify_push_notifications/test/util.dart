// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

class TestIamAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(
      'fake-access-key-123',
      'fake-secret-access-key-456',
    );
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(await retrieve()),
    );
    final scope = AWSCredentialScope(
      region: options!.region,
      service: AWSService.appSync,
    );
    return signer.sign(
      request,
      credentialScope: scope,
      serviceConfiguration:
          options.serviceConfiguration ?? const BaseServiceConfiguration(),
    );
  }
}

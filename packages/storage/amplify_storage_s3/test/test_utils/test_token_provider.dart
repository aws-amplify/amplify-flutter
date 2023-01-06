// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

const _testToken = 'abc123-fake-token';
const _testIdentityId = 'identity-id-321';
const _testAccessKeyId = 'access-key-id';
const _testSecretAccessKey = 'secret-access-key';

class TestTokenIdentityProvider extends TokenIdentityAmplifyAuthProvider {
  @override
  Future<String> getLatestAuthToken() async {
    return _testToken;
  }

  @override
  Future<String> getIdentityId() async {
    return _testIdentityId;
  }
}

class TestIamAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(_testAccessKeyId, _testSecretAccessKey);
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    throw UnimplementedError();
  }
}

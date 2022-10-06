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

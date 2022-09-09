/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

const _testAuthKey = 'TestAuthKey';
const _testToken = 'abc123-fake-token';
const _testIdentityId = 'identity-id-321';

AWSHttpRequest _generateTestRequest() {
  return AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.parse('https://www.amazon.com'),
  );
}

class TestAuthProvider extends AmplifyAuthProvider {
  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  }) async {
    request.headers.putIfAbsent(_testAuthKey, () => 'foo');
    return request;
  }
}

class SecondTestAuthProvider extends AmplifyAuthProvider {
  @override
  Future<AWSBaseHttpRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant AuthProviderOptions? options,
  }) async {
    request.headers.putIfAbsent(_testAuthKey, () => 'bar');
    return request;
  }
}

class TestAWSCredentialsAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(
        'fake-access-key-123', 'fake-secret-access-key-456');
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    covariant IamAuthProviderOptions? options,
  }) async {
    request.headers.putIfAbsent(_testAuthKey, () => 'foo');
    return request as AWSSignedRequest;
  }
}

class TestTokenProvider extends TokenAmplifyAuthProvider {
  @override
  Future<String> getLatestAuthToken() async {
    return _testToken;
  }
}

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

void main() {
  final authProvider = TestAuthProvider();

  group('AmplifyAuthProvider', () {
    test('can authorize an HTTP request', () async {
      final authorizedRequest =
          await authProvider.authorizeRequest(_generateTestRequest());
      expect(authorizedRequest.headers[_testAuthKey], 'foo');
    });
  });

  group('TokenAmplifyAuthProvider', () {
    test('will assign the token to the "Authorization" header', () async {
      final tokenAuthProvider = TestTokenProvider();
      final authorizedRequest =
          await tokenAuthProvider.authorizeRequest(_generateTestRequest());
      expect(authorizedRequest.headers[AWSHeaders.authorization], _testToken);
    });
  });

  group('TokenIdentityAmplifyAuthProvider', () {
    test('will assign the token to the "Authorization" header', () async {
      final tokenAuthProvider = TestTokenProvider();
      final authorizedRequest =
          await tokenAuthProvider.authorizeRequest(_generateTestRequest());
      expect(authorizedRequest.headers[AWSHeaders.authorization], _testToken);
    });

    test('identityId() returns identityId', () async {
      final identityId = await TestTokenIdentityProvider().getIdentityId();
      expect(identityId, _testIdentityId);
    });
  });

  group('AmplifyAuthProviderRepository', () {
    test('can register a valid auth provider and use to retrieve', () async {
      final authRepo = AmplifyAuthProviderRepository();

      const providerKey = AmplifyAuthProviderToken();
      authRepo.registerAuthProvider(providerKey, authProvider);
      final actualAuthProvider = authRepo.getAuthProvider(providerKey);
      final authorizedRequest =
          await actualAuthProvider!.authorizeRequest(_generateTestRequest());
      expect(authorizedRequest.headers[_testAuthKey], 'foo');
    });

    test('will correctly type the retrieved auth provider', () async {
      final authRepo = AmplifyAuthProviderRepository();

      final credentialAuthProvider = TestAWSCredentialsAuthProvider();
      const providerKey = AmplifyAuthProviderToken<AWSIamAmplifyAuthProvider>();
      authRepo.registerAuthProvider(providerKey, credentialAuthProvider);
      AWSIamAmplifyAuthProvider? actualAuthProvider =
          authRepo.getAuthProvider(providerKey);
      expect(actualAuthProvider, isA<AWSIamAmplifyAuthProvider>());
    });

    test('will overwrite previous provider in same key', () async {
      final authRepo = AmplifyAuthProviderRepository();

      const providerKey = AmplifyAuthProviderToken();
      authRepo.registerAuthProvider(providerKey, authProvider);
      authRepo.registerAuthProvider(providerKey, SecondTestAuthProvider());
      final actualAuthProvider = authRepo.getAuthProvider(providerKey);

      final authorizedRequest =
          await actualAuthProvider!.authorizeRequest(_generateTestRequest());
      expect(authorizedRequest.headers[_testAuthKey], 'bar');
    });
  });
}

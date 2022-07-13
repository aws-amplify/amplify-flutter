/*
 * Copyright 202s Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

const _testAuthKey = 'TestAuthKey';
const _testToken = 'abc123-fake-token';

class TestAuthProvider extends AmplifyAuthProvider {
  @override
  Future<http.BaseRequest> authorizeRequest(
    http.BaseRequest request, {
    covariant AuthProviderOptions? options,
  }) async {
    request.headers.putIfAbsent(_testAuthKey, () => 'foo');
    return request;
  }
}

class SecondTestAuthProvider extends AmplifyAuthProvider {
  @override
  Future<http.BaseRequest> authorizeRequest(
    http.BaseRequest request, {
    covariant AuthProviderOptions? options,
  }) async {
    request.headers.putIfAbsent(_testAuthKey, () => 'bar');
    return request;
  }
}

class TestTokenProvider extends TokenAmplifyAuthProvider {
  @override
  Future<String> getLatestAuthToken() async {
    return _testToken;
  }
}

void main() {
  final authProvider = TestAuthProvider();

  group('AmplifyAuthProvider', () {
    test('can authorize an HTTP request', () async {
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      final authorizedRequest =
          await authProvider.authorizeRequest(inputRequest);
      expect(authorizedRequest.headers[_testAuthKey], 'foo');
    });
  });

  group('TokenAmplifyAuthProvider', () {
    test('will assign the token to the "Authorization" header', () async {
      final tokenAuthProvider = TestTokenProvider();
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      final authorizedRequest =
          await tokenAuthProvider.authorizeRequest(inputRequest);
      expect(authorizedRequest.headers[AWSHeaders.authorization], _testToken);
    });
  });

  group('AmplifyAuthProviderRepository', () {
    test('can register a valid auth provider and use to retrieve', () async {
      final authRepo = AmplifyAuthProviderRepository();

      const providerKey = 'superAuth';
      authRepo.registerAuthProvider(providerKey, authProvider);
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      final actualAuthProvider = authRepo.getAuthProvider(providerKey);
      final authorizedRequest =
          await actualAuthProvider!.authorizeRequest(inputRequest);
      expect(authorizedRequest.headers[_testAuthKey], 'foo');
    });

    test('will overwrite previous provider in same key', () async {
      final authRepo = AmplifyAuthProviderRepository();

      const providerKey = 'superAuth';
      authRepo.registerAuthProvider(providerKey, authProvider);
      authRepo.registerAuthProvider(providerKey, SecondTestAuthProvider());
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      final actualAuthProvider = authRepo.getAuthProvider(providerKey);

      final authorizedRequest =
          await actualAuthProvider!.authorizeRequest(inputRequest);
      expect(authorizedRequest.headers[_testAuthKey], 'bar');
    });
  });
}

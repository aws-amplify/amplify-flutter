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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/util/cognito_iam_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

AWSHttpRequest _generateTestRequest() {
  return AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.parse('https://www.amazon.com'),
  );
}

/// Returns dummy AWS credentials.
class TestAmplifyAuth extends AmplifyAuthCognitoDart {
  @override
  Future<AuthSession> fetchAuthSession({
    required AuthSessionRequest request,
  }) async {
    return const CognitoAuthSession(
      isSignedIn: true,
      credentials: AWSCredentials('fakeKeyId', 'fakeSecret'),
    );
  }
}

void main() {
  group(
      'AmplifyAuthCognitoDart plugin registers auth providers during configuration',
      () {
    late AmplifyAuthCognitoDart plugin;

    setUp(() async {
      plugin = AmplifyAuthCognitoDart(credentialStorage: MockSecureStorage());
    });

    test('registers CognitoIamAuthProvider', () async {
      final testAuthRepo = AmplifyAuthProviderRepository();
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );
      final authProvider = testAuthRepo.getAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
      );
      expect(authProvider, isA<CognitoIamAuthProvider>());
    });
  });

  group('CognitoIamAuthProvider', () {
    setUpAll(() async {
      await Amplify.addPlugin(TestAmplifyAuth());
    });

    test('gets AWS credentials from Amplify.Auth.fetchAuthSession', () async {
      final authProvider = CognitoIamAuthProvider();
      final credentials = await authProvider.retrieve();
      expect(credentials.accessKeyId, isA<String>());
      expect(credentials.secretAccessKey, isA<String>());
    });

    test('signs a request when calling authorizeRequest', () async {
      final authProvider = CognitoIamAuthProvider();
      final authorizedRequest = await authProvider.authorizeRequest(
        _generateTestRequest(),
        options: const IamAuthProviderOptions(
          region: 'us-east-1',
          service: AWSService.appSync,
        ),
      );
      // Note: not intended to be complete test of sigv4 algorithm.
      expect(authorizedRequest.headers[AWSHeaders.authorization], isNotEmpty);
      var userAgentHeader = AWSHeaders.userAgent;
      if (zIsWeb) {
        userAgentHeader = AWSHeaders.amzUserAgent;
      } else {
        expect(authorizedRequest.headers[AWSHeaders.host], isNotEmpty);
      }
      expect(
        authorizedRequest.headers[userAgentHeader],
        contains('aws-sigv4'),
      );
    });

    test('throws when no options provided', () async {
      final authProvider = CognitoIamAuthProvider();
      await expectLater(
        authProvider.authorizeRequest(_generateTestRequest()),
        throwsA(isA<AuthException>()),
      );
    });
  });
}

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
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/util/cognito_iam_auth_provider.dart';
import 'package:amplify_auth_cognito_dart/src/util/cognito_user_pools_auth_provider.dart';
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

/// Mock implementation of user pool only error when trying to get credentials.
class TestAmplifyAuthUserPoolOnly extends AmplifyAuthCognitoDart {
  @override
  Future<AuthSession> fetchAuthSession({
    required AuthSessionRequest request,
  }) async {
    final options = request.options as CognitoSessionOptions?;
    final getAWSCredentials = options?.getAWSCredentials;
    if (getAWSCredentials != null && getAWSCredentials) {
      throw const InvalidAccountTypeException.noIdentityPool(
        recoverySuggestion:
            'Register an identity pool using the CLI or set getAWSCredentials '
            'to false',
      );
    }
    return CognitoAuthSession(
      isSignedIn: true,
      userPoolTokens: CognitoUserPoolTokens(
        accessToken: accessToken,
        idToken: idToken,
        refreshToken: refreshToken,
      ),
    );
  }
}

void main() {
  late AmplifyAuthCognitoDart plugin;
  late AmplifyAuthProviderRepository testAuthRepo;

  setUpAll(() async {
    testAuthRepo = AmplifyAuthProviderRepository();
    final secureStorage = MockSecureStorage();
    final stateMachine = CognitoAuthStateMachine()..addInstance(secureStorage);
    plugin = AmplifyAuthCognitoDart(credentialStorage: secureStorage)
      ..stateMachine = stateMachine;

    seedStorage(
      secureStorage,
      userPoolKeys: CognitoUserPoolKeys(userPoolConfig),
      identityPoolKeys: CognitoIdentityPoolKeys(identityPoolConfig),
    );

    await plugin.configure(
      config: mockConfig,
      authProviderRepo: testAuthRepo,
    );
  });

  group(
      'AmplifyAuthCognitoDart plugin registers auth providers during configuration',
      () {
    test('registers CognitoIamAuthProvider', () async {
      final authProvider = testAuthRepo.getAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
      );
      expect(authProvider, isA<CognitoIamAuthProvider>());
    });

    test('registers CognitoUserPoolsAuthProvider', () async {
      final authProvider = testAuthRepo.getAuthProvider(
        APIAuthorizationType.userPools.authProviderToken,
      );
      expect(authProvider, isA<CognitoUserPoolsAuthProvider>());
    });
  });

  group('no auth plugin added', () {
    test('CognitoIamAuthProvider throws when trying to authorize a request',
        () async {
      final authProvider = CognitoIamAuthProvider();
      await expectLater(
        authProvider.authorizeRequest(
          _generateTestRequest(),
          options: const IamAuthProviderOptions(
            region: 'us-east-1',
            service: AWSService.appSync,
          ),
        ),
        throwsA(isA<AmplifyException>()),
      );
    });

    test('CognitoUserPoolsAuthProvider throws when trying to authorize request',
        () async {
      final authProvider = CognitoUserPoolsAuthProvider();
      await expectLater(
        authProvider.authorizeRequest(_generateTestRequest()),
        throwsA(isA<AmplifyException>()),
      );
    });
  });

  group('auth providers defined in auth plugin', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(plugin);
    });

    group('CognitoIamAuthProvider', () {
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
        const userAgentHeader =
            zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
        expect(
          authorizedRequest.headers[AWSHeaders.host],
          isNotEmpty,
          skip: zIsWeb,
        );
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

    group('CognitoUserPoolsAuthProvider', () {
      test('gets raw access token from Amplify.Auth.fetchAuthSession',
          () async {
        final authProvider = CognitoUserPoolsAuthProvider();
        final token = await authProvider.getLatestAuthToken();
        expect(token, accessToken.raw);
      });

      test('adds access token to header when calling authorizeRequest',
          () async {
        final authProvider = CognitoUserPoolsAuthProvider();
        final authorizedRequest = await authProvider.authorizeRequest(
          _generateTestRequest(),
        );
        expect(
          authorizedRequest.headers[AWSHeaders.authorization],
          accessToken.raw,
        );
      });
    });
  });

  group('auth providers with user pool-only configuration', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(TestAmplifyAuthUserPoolOnly());
    });

    group('CognitoIamAuthProvider', () {
      test('throws when trying to retrieve credentials', () async {
        final authProvider = CognitoIamAuthProvider();
        await expectLater(
          authProvider.retrieve(),
          throwsA(isA<InvalidAccountTypeException>()),
        );
      });
    });

    group('CognitoUserPoolsAuthProvider', () {
      test('adds access token to header when calling authorizeRequest',
          () async {
        final authProvider = CognitoUserPoolsAuthProvider();
        final authorizedRequest = await authProvider.authorizeRequest(
          _generateTestRequest(),
        );
        expect(
          authorizedRequest.headers[AWSHeaders.authorization],
          accessToken.raw,
        );
      });
    });
  });
}

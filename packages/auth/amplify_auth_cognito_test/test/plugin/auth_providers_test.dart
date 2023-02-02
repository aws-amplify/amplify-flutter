// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'dart:async';
import 'dart:convert';

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
  Future<CognitoAuthSession> fetchAuthSession({
    CognitoSessionOptions? options,
  }) async {
    return CognitoAuthSession(
      isSignedIn: true,
      userPoolTokensResult: AuthResult.success(
        CognitoUserPoolTokens(
          accessToken: accessToken,
          idToken: idToken,
          refreshToken: refreshToken,
        ),
      ),
      userSubResult: const AuthResult.success(userSub),
      credentialsResult: const AuthResult.error(
        InvalidAccountTypeException.noIdentityPool(
          recoverySuggestion: 'Register an identity pool using the CLI',
        ),
      ),
      identityIdResult: const AuthResult.error(
        InvalidAccountTypeException.noIdentityPool(
          recoverySuggestion: 'Register an identity pool using the CLI',
        ),
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

    await plugin.addPlugin(authProviderRepo: testAuthRepo);
    await plugin.configure(
      config: mockConfig,
      authProviderRepo: testAuthRepo,
    );
  });

  group(
      'AmplifyAuthCognitoDart plugin registers auth providers during addPlugin',
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
      const authProvider = CognitoIamAuthProvider();
      await expectLater(
        authProvider.authorizeRequest(
          _generateTestRequest(),
          options: const IamAuthProviderOptions(
            region: 'us-east-1',
            service: AWSService.appSync,
          ),
        ),
        throwsA(isA<PluginError>()),
      );
    });

    test('CognitoUserPoolsAuthProvider throws when trying to authorize request',
        () async {
      final authProvider = CognitoUserPoolsAuthProvider();
      await expectLater(
        authProvider.authorizeRequest(_generateTestRequest()),
        throwsA(isA<PluginError>()),
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
        const authProvider = CognitoIamAuthProvider();
        final credentials = await authProvider.retrieve();
        expect(credentials.accessKeyId, isA<String>());
        expect(credentials.secretAccessKey, isA<String>());
      });

      test('signs a request when calling authorizeRequest', () async {
        const authProvider = CognitoIamAuthProvider();
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

      test('does not sign body when ServiceConfiguration signBody false',
          () async {
        const authProvider = CognitoIamAuthProvider();
        const region = 'us-east-1';
        final inputRequest = AWSHttpRequest(
          method: AWSHttpMethod.post,
          body: json.encode({
            'foo': 'bar',
          }).codeUnits,
          uri: Uri.parse(
            'https://xyz456.execute-api.$region.amazonaws.com/test',
          ),
        );
        final authorizedRequest = await authProvider.authorizeRequest(
          inputRequest,
          options: const IamAuthProviderOptions(
            region: region,
            service: AWSService.apiGateway,
            serviceConfiguration: ServiceConfiguration(signBody: false),
          ),
        );
        expect(
          authorizedRequest.headers.containsKey(AWSHeaders.contentSHA256),
          isFalse,
        );
      });

      test('throws when no options provided', () async {
        const authProvider = CognitoIamAuthProvider();
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
        const authProvider = CognitoIamAuthProvider();
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

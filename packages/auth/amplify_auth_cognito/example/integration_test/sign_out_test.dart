// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signOut', () {
    late final cognitoPlugin = Amplify.Auth.getPlugin(
      AmplifyAuthCognito.pluginKey,
    );
    late String username;
    late String password;
    late final AWSHttpClient client;
    late final cognito_idp.CognitoIdentityProviderClient cognitoClient;

    Future<void> check(String accessToken, {required bool isValid}) async {
      await expectLater(
        cognitoClient
            .getUser(cognito_idp.GetUserRequest(accessToken: accessToken))
            .result,
        isValid
            ? completes
            : throwsA(isA<cognito_idp.NotAuthorizedException>()),
      );
    }

    setUpAll(() async {
      await configureAuth();

      final config = await Amplify.asyncConfig;
      final authConfig = config.auth!.awsPlugin!.cognitoUserPool!.default$!;
      client = AWSHttpClient()..supportedProtocols = SupportedProtocols.http1;
      cognitoClient = cognito_idp.CognitoIdentityProviderClient(
        region: authConfig.region,
      );
      addTearDown(client.close);
    });

    setUp(() async {
      await signOutUser();

      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      addTearDown(() => deleteUser(username));
    });

    tearDownAll(Amplify.reset);

    asyncTest('should sign a user out', (_) async {
      await Amplify.Auth.signIn(username: username, password: password);
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isTrue);

      final signOutResult = await Amplify.Auth.signOut();
      expect(signOutResult, isA<CognitoCompleteSignOut>());
      final finalAuthSession = await Amplify.Auth.fetchAuthSession();
      expect(finalAuthSession.isSignedIn, isFalse);
    });

    asyncTest(
      'should not throw even if there is no user to sign out',
      (_) async {
        final authSession = await Amplify.Auth.fetchAuthSession();
        expect(authSession.isSignedIn, isFalse);
        final signOutResult = await Amplify.Auth.signOut();
        expect(signOutResult, isA<CognitoCompleteSignOut>());
      },
    );

    asyncTest('global signout invalidates previous sessions', (_) async {
      await cognitoPlugin.signIn(username: username, password: password);
      final session1 = await cognitoPlugin.fetchAuthSession();
      final session1Tokens = session1.userPoolTokensResult.value;
      // Clear but do not sign out so that tokens are still valid.
      // ignore: invalid_use_of_protected_member
      await cognitoPlugin.stateMachine.clearCredentials();

      await cognitoPlugin.signIn(username: username, password: password);
      final session2 = await cognitoPlugin.fetchAuthSession();
      final session2Tokens = session2.userPoolTokensResult.value;
      expect(session1Tokens.userId, session2Tokens.userId);
      expect(
        session1Tokens.accessToken.raw,
        isNot(session2Tokens.accessToken.raw),
      );

      await check(session1Tokens.accessToken.raw, isValid: true);
      await check(session2Tokens.accessToken.raw, isValid: true);

      final signOutResult = await cognitoPlugin.signOut(
        options: const SignOutOptions(globalSignOut: true),
      );
      expect(signOutResult, isA<CognitoCompleteSignOut>());

      await check(session1Tokens.accessToken.raw, isValid: false);
      await check(session2Tokens.accessToken.raw, isValid: false);
    });
  });
}

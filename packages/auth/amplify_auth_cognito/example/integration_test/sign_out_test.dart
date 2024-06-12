// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
// ignore: invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

AmplifyAuthCognito get cognitoPlugin => Amplify.Auth.getPlugin(
      AmplifyAuthCognito.pluginKey,
    );

void main() {
  testRunner.setupTests();

  group('signOut', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        late String username;
        late String password;
        late AWSHttpClient client;
        late cognito_idp.CognitoIdentityProviderClient cognitoClient;

        Future<void> checkToken(
          String accessToken, {
          required bool isValid,
        }) async {
          await expectLater(
            cognitoClient
                .getUser(cognito_idp.GetUserRequest(accessToken: accessToken))
                .result,
            isValid
                ? completes
                : throwsA(isA<cognito_idp.NotAuthorizedException>()),
          );
        }

        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          // ignore: invalid_use_of_internal_member
          final config = await Amplify.asyncConfig;
          final authConfig = config.auth!;
          client = AWSHttpClient()
            ..supportedProtocols = SupportedProtocols.http1;
          cognitoClient = cognito_idp.CognitoIdentityProviderClient(
            region: authConfig.awsRegion,
          );
          addTearDown(client.close);

          await signOutUser();

          username = generateUsername();
          password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );
        });

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

          await checkToken(session1Tokens.accessToken.raw, isValid: true);
          await checkToken(session2Tokens.accessToken.raw, isValid: true);

          final signOutResult = await cognitoPlugin.signOut(
            options: const SignOutOptions(globalSignOut: true),
          );
          expect(signOutResult, isA<CognitoCompleteSignOut>());

          await checkToken(session1Tokens.accessToken.raw, isValid: false);
          await checkToken(session2Tokens.accessToken.raw, isValid: false);
        });

        asyncTest('can call sign out after admin delete', (_) async {
          final username = generateUsername();
          final password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(res.isSignedIn).isTrue();

          await adminDeleteUser(username);

          await check(
            because: 'Sign out should succeed even if user is deleted',
            cognitoPlugin.signOut(),
          ).completes(
            (it) => it
              ..has((res) => res.signedOutLocally, 'signedOutLocally').isTrue(),
          );
        });

        asyncTest('can call sign out after admin delete and session expiration',
            (_) async {
          final username = generateUsername();
          final password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(res.isSignedIn).isTrue();

          await adminDeleteUser(username);

          cognitoPlugin.stateMachine
              .expect(FetchAuthSessionStateMachine.type)
              .invalidate();

          await check(
            because: 'Sign out should succeed even if user is deleted and '
                'credentials are expired',
            cognitoPlugin.signOut(),
          ).completes(
            (it) => it
                .has((res) => res.signedOutLocally, 'signedOutLocally')
                .isTrue(),
          );
        });
      });
    }
  });
}

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

  group('signIn (SRP)', () {
    late String username;
    late String password;

    tearDownAll(Amplify.reset);

    setUp(() async {
      await configureAuth();

      // create new user for each test
      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
    });

    asyncTest('should signIn a user', (_) async {
      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.isSignedIn, true);
    });

    asyncTest(
      'should throw a NotAuthorizedException with an incorrect password',
      (_) async {
        final incorrectPassword = generatePassword();
        await expectLater(
          Amplify.Auth.signIn(
            username: username,
            password: incorrectPassword,
          ),
          throwsA(isA<AuthNotAuthorizedException>()),
        );
      },
    );

    asyncTest(
      'should throw an InvalidParameterException if a password is not provided '
      'and Custom Auth is not configured',
      (_) async {
        await expectLater(
          Amplify.Auth.signIn(username: username),
          throwsA(isA<InvalidParameterException>()),
        );
      },
    );

    asyncTest(
      'should throw a UserNotFoundException with a non-existent user',
      (_) async {
        final incorrectUsername = generateUsername();
        await expectLater(
          Amplify.Auth.signIn(
            username: incorrectUsername,
            password: password,
          ),
          throwsA(isA<UserNotFoundException>()),
        );
      },
    );

    asyncTest('additionalInfo should be null for SRP sign-in', (_) async {
      final result = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(result.nextStep.additionalInfo, isNull);
    });

    asyncTest('identity ID should be the same between sessions', (_) async {
      // Get unauthenticated identity
      final unauthSession =
          await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;

      // Sign in
      {
        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInRes.nextStep.signInStep, AuthSignInStep.done);
      }

      // Get authenticated identity
      final authSession =
          await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
      final authenticatedIdentity = authSession.identityIdResult;
      expect(
        authenticatedIdentity,
        isNot(unauthSession.identityIdResult.value),
        reason:
            'Unauthenticated identities should be distinct from authenticated '
            'identities, since unauthenticated identities are vended to all '
            'new devices when guest access is enabled but should converge to '
            'a singular authenticated identity across all devices',
      );
      expect(
        authSession.credentialsResult.value,
        isNot(unauthSession.credentialsResult.value),
      );

      await Amplify.Auth.signOut();
      {
        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInRes.nextStep.signInStep, AuthSignInStep.done);
      }

      final newSession =
          await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
      expect(
        newSession.identityIdResult.value,
        authenticatedIdentity.value,
        reason: 'Authenticated identity should be the same between sessions',
      );
    });
  });

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
        session1Tokens.idToken.raw,
        isNot(session2Tokens.idToken.raw),
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

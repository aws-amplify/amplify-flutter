// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
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
    setUpAll(() async {
      await configureAuth();
    });

    setUp(() async {
      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    asyncTest('should sign a user out', (_) async {
      final username = generateUsername();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await Amplify.Auth.signIn(username: username, password: password);
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isTrue);

      await Amplify.Auth.signOut();
      final finalAuthSession = await Amplify.Auth.fetchAuthSession();
      expect(finalAuthSession.isSignedIn, isFalse);
    });

    asyncTest(
      'should not throw even if there is no user to sign out',
      (_) async {
        final authSession = await Amplify.Auth.fetchAuthSession();
        expect(authSession.isSignedIn, isFalse);
        await expectLater(Amplify.Auth.signOut(), completes);
      },
    );
  });
}

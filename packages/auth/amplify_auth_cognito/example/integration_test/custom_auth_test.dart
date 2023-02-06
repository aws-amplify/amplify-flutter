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

  group('signIn (custom)', () {
    // Arbitrary challenge answer defined in Lambda
    const confirmationValue = '123';
    const options = CognitoSignInOptions(
      // ignore: deprecated_member_use
      authFlowType: AuthenticationFlowType.customAuth,
    );

    final username = generateUsername();
    final password = generatePassword();

    setUpAll(() async {
      await configureAuth();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
    });

    tearDownAll(Amplify.reset);

    setUp(() async {
      await signOutUser();
    });

    asyncTest(
      'signIn should return data from the auth challenge lambda '
      '(passwordless)',
      (_) async {
        final res = await Amplify.Auth.signIn(
          username: username,
          options: options,
        );
        expect(
          res.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithCustomChallenge,
        );

        final additionalInfo = res.nextStep.additionalInfo ?? const {};

        // additionalInfo key values defined in lambda code
        expect(additionalInfo, hasLength(2));
        expect(additionalInfo, containsPair('test-key', 'test-value'));
        expect(additionalInfo, contains('USERNAME'));
      },
    );

    asyncTest(
      'a correct challenge reply should sign in the user in',
      (_) async {
        await Amplify.Auth.signIn(
          username: username,
          options: options,
        );
        final res = await Amplify.Auth.confirmSignIn(
          confirmationValue: confirmationValue,
        );
        expect(res.isSignedIn, true);
      },
    );

    asyncTest(
      'an incorrect challenge reply should throw a NotAuthorizedException',
      (_) async {
        await Amplify.Auth.signIn(
          username: username,
          options: options,
        );
        // '123' is the arbitrary challenge answer defined in lambda code
        await expectLater(
          Amplify.Auth.confirmSignIn(confirmationValue: 'wrong'),
          throwsA(isA<AuthNotAuthorizedException>()),
        );
      },
    );

    asyncTest(
      'if a password is provided but is incorrect, throw '
      'NotAuthorizedException',
      (_) async {
        // '123' is the arbitrary challenge answer defined in lambda code
        await expectLater(
          Amplify.Auth.signIn(
            username: username,
            password: 'wrong',
            options: options,
          ),
          throwsA(isA<AuthNotAuthorizedException>()),
        );
      },
    );

    asyncTest(
      'a correct password and correct challenge reply should sign in '
      'the user',
      (_) async {
        await Amplify.Auth.signIn(
          username: username,
          password: password,
          options: options,
        );
        final res = await Amplify.Auth.confirmSignIn(
          confirmationValue: confirmationValue,
        );
        expect(res.isSignedIn, true);
      },
    );

    asyncTest(
      'should return data from the auth challenge lambda '
      '(with password)',
      (_) async {
        final res = await Amplify.Auth.signIn(
          username: username,
          password: password,
          options: options,
        );
        expect(
          res.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithCustomChallenge,
        );

        final additionalInfo = res.nextStep.additionalInfo ?? const {};

        // additionalInfo key values defined in lambda code
        expect(additionalInfo, hasLength(1));
        expect(additionalInfo, containsPair('test-key', 'test-value'));
      },
    );
  });
}

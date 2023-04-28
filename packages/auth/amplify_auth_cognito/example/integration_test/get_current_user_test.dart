// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/validation_utils.dart';

void main() {
  testRunner.setupTests();

  group('getCurrentUser', () {
    for (final environmentName in userPoolEnvironments) {
      group('no alias', () {
        group(environmentName, () {
          final username = generateUsername();
          final password = generatePassword();

          setUpAll(() async {
            await testRunner.configure(
              environmentName: environmentName,
            );

            await adminCreateUser(
              username,
              password,
              autoConfirm: true,
              verifyAttributes: true,
            );
          });

          setUp(() async {
            await signOutUser();
            await Amplify.Auth.signIn(
              username: username,
              password: password,
            );
          });

          asyncTest('should return the current user', (_) async {
            final authUser = await Amplify.Auth.getCurrentUser();
            expect(authUser.username, username);
            expect(isValidUserSub(authUser.userId), isTrue);
            expect(
              authUser.signInDetails,
              isA<CognitoSignInDetailsApiBased>().having(
                (details) => details.username,
                'username',
                authUser.username,
              ),
              reason: 'Should return the same username as AuthUser.username',
            );
          });

          asyncTest(
            'should throw SignedOutException if the user is signed out',
            (_) async {
              await Amplify.Auth.signOut();
              await expectLater(
                Amplify.Auth.getCurrentUser(),
                throwsA(isA<SignedOutException>()),
              );
            },
          );
        });
      });
    }

    group(
      'with alias',
      () {
        late String username;
        late String password;

        setUpAll(() async {
          await testRunner.configure(
            environmentName: 'sign-in-with-phone',
          );
        });

        tearDownAll(Amplify.reset);

        setUp(() async {
          username = generatePhoneNumber();
          password = generatePassword();
          final cognitoUsername = await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            enableMfa: true,
            attributes: [
              AuthUserAttribute(
                userAttributeKey: AuthUserAttributeKey.phoneNumber,
                value: username,
              ),
            ],
          );

          final code = await getOtpCode(
            UserAttribute.username(cognitoUsername),
          );
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(
            signInRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );
          final confirmSignInRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await code.code,
          );
          expect(confirmSignInRes.isSignedIn, isTrue);
        });

        asyncTest('should return the current user', (_) async {
          final authUser = await Amplify.Auth.getCurrentUser();
          expect(
            authUser.username,
            isNot(username),
            reason: 'Cognito should assign an alias username',
          );
          expect(isValidUserSub(authUser.userId), isTrue);
          expect(
            authUser.signInDetails,
            isA<CognitoSignInDetailsApiBased>().having(
              (details) => details.username,
              'username',
              username,
            ),
            reason: 'Should return the phone number alias since it '
                'was used to sign in',
          );
        });
      },
    );
  });
}

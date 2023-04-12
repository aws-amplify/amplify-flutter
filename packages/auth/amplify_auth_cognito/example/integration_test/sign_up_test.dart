// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  initTests();

  group('signUp', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName]!,
          );
        });

        asyncTest('should signUp a user with valid parameters', (_) async {
          final username = generateUsername();
          final password = generatePassword();

          final res = await Amplify.Auth.signUp(
            username: username,
            password: password,
            options: SignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: generateEmail(),
                CognitoUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            ),
          ) as CognitoSignUpResult;
          expect(
            res.isSignUpComplete,
            isFalse,
            reason: 'Sign up is not complete until user is confirmed',
          );
          expect(res.userId, isNotNull);
        });

        asyncTest(
          'should throw an InvalidParameterException without required attributes',
          (_) async {
            final username = generateUsername();
            final password = generatePassword();
            await expectLater(
              Amplify.Auth.signUp(username: username, password: password),
              throwsA(isA<InvalidParameterException>()),
            );
          },
        );

        asyncTest(
          'should throw an InvalidPasswordException for a password that does not '
          'meet requirements',
          (_) async {
            final username = generateUsername();
            const invalidPassword = '123';
            final options = SignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: generateEmail(),
                CognitoUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await expectLater(
              Amplify.Auth.signUp(
                username: username,
                password: invalidPassword,
                options: options,
              ),
              throwsA(isA<InvalidPasswordException>()),
            );
          },
        );

        asyncTest(
          'should throw a UsernameExistsException for a username that '
          'already exists',
          (_) async {
            // create username for both sign up attempts
            final username = generateUsername();

            // sign up first user
            final userOnePassword = generatePassword();
            final userOneOptions = SignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: generateEmail(),
                CognitoUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await Amplify.Auth.signUp(
              username: username,
              password: userOnePassword,
              options: userOneOptions,
            );

            // attempt to sign up second user with the same username
            final userTwoPassword = generatePassword();
            final userTwoOptions = SignUpOptions(
              userAttributes: {
                CognitoUserAttributeKey.email: generateEmail(),
                CognitoUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await expectLater(
              Amplify.Auth.signUp(
                username: username,
                password: userTwoPassword,
                options: userTwoOptions,
              ),
              throwsA(isA<UsernameExistsException>()),
            );
          },
        );
      });
    }

    group('identity pool-only', () {
      setUpAll(() async {
        await configureAuth(
          config: amplifyEnvironments['identity-pool-only']!,
        );
      });

      asyncTest('throws on sign-up attempt', (_) async {
        final username = generateUsername();
        final password = generatePassword();
        await expectLater(
          Amplify.Auth.signUp(
            username: username,
            password: password,
          ),
          throwsA(isA<InvalidAccountTypeException>()),
        );
      });
    });
  });
}

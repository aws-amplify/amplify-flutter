/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signUp', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    asyncTest('should signUp a user with valid parameters', (_) async {
      final username = generateUsername();
      final password = generatePassword();

      final res = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: CognitoSignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
          },
        ),
      );
      expect(
        res.isSignUpComplete,
        isFalse,
        reason: 'Sign up is not complete until user is confirmed',
      );
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
        final options = CognitoSignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
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
        final userOneOptions = CognitoSignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
          },
        );
        await Amplify.Auth.signUp(
          username: username,
          password: userOnePassword,
          options: userOneOptions,
        );

        // attempt to sign up second user with the same username
        final userTwoPassword = generatePassword();
        final userTwoOptions = CognitoSignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
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

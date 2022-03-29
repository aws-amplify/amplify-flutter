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

import 'package:amplify_api/amplify_api.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signUp', () {
    setUpAll(() async {
      await configureAuth(additionalPlugins: [
        AmplifyAPI(),
      ]);
      await signOutUser();
    });

    testWidgets('should signUp a user with valid parameters',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      var _ = await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
          }));
      // should be uncommented when https://github.com/aws-amplify/amplify-flutter/issues/581 is closed
      // currently this just confirms there is no error thrown
      // expect(res.isSignUpComplete, true);
    });

    testWidgets(
        'should throw an InvalidParameterException without required attributes',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();
      try {
        await Amplify.Auth.signUp(username: username, password: password);
      } catch (e) {
        expect(e, TypeMatcher<InvalidParameterException>());
        return;
      }
      fail('Expected InvalidParameterException');
    });

    testWidgets(
        'should throw an InvalidPasswordException for a password that does not meet requirements',
        (WidgetTester tester) async {
      final username = generateUsername();
      final invalidPassword = '123';
      final options = CognitoSignUpOptions(userAttributes: {
        CognitoUserAttributeKey.email: generateEmail(),
        CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
      });
      try {
        await Amplify.Auth.signUp(
            username: username, password: invalidPassword, options: options);
      } catch (e) {
        expect(e, TypeMatcher<InvalidPasswordException>());
        return;
      }
      fail('Expected InvalidPasswordException');
    });

    testWidgets(
        'should throw a UsernameExistsException for a username that already exists',
        (WidgetTester tester) async {
      // create username for both sign up attempts
      final username = generateUsername();

      // sign up first user
      final userOnePassword = generatePassword();
      final userOneOptions = CognitoSignUpOptions(userAttributes: {
        CognitoUserAttributeKey.email: generateEmail(),
        CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
      });
      await Amplify.Auth.signUp(
        username: username,
        password: userOnePassword,
        options: userOneOptions,
      );

      // attempt to sign up second user with the same username
      final userTwoPassword = generatePassword();
      final userTwoOptions = CognitoSignUpOptions(userAttributes: {
        CognitoUserAttributeKey.email: generateEmail(),
        CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
      });
      try {
        await Amplify.Auth.signUp(
          username: username,
          password: userTwoPassword,
          options: userTwoOptions,
        );
      } catch (e) {
        expect(e, TypeMatcher<UsernameExistsException>());
        return;
      }
      fail('Expected UsernameExistsException');
    });
  });
}

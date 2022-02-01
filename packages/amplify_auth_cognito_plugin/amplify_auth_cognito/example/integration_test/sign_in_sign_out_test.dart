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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signIn', () {
    late String username;
    late String password;
    setUp(() async {
      await configureAuth();

      // create new user for each test
      username = generateUsername();
      password = generatePassword();

      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
          }));

      await signOutUser();
    });

    testWidgets('should signIn a user', (WidgetTester tester) async {
      final res =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(res.isSignedIn, true);
    });

    testWidgets(
        'should throw a NotAuthorizedException with an incorrect password',
        (WidgetTester tester) async {
      final incorrectPassword = generatePassword();
      try {
        await Amplify.Auth.signIn(
            username: username, password: incorrectPassword);
      } catch (e) {
        expect(e, TypeMatcher<NotAuthorizedException>());
        return;
      }
      fail('Expected NotAuthorizedException');
    });

    testWidgets('should throw a UserNotFoundException with a non-existent user',
        (WidgetTester tester) async {
      final incorrectUsername = generateUsername();
      try {
        await Amplify.Auth.signIn(
            username: incorrectUsername, password: password);
      } catch (e) {
        expect(e, TypeMatcher<UserNotFoundException>());
        return;
      }
      fail('Expected UserNotFoundException');
    });

    testWidgets(
        'should throw an InvalidStateException if a user is already signed in',
        (WidgetTester tester) async {
      await Amplify.Auth.signIn(username: username, password: password);
      try {
        await Amplify.Auth.signIn(username: username, password: password);
      } catch (e) {
        expect(e, TypeMatcher<InvalidStateException>());
        return;
      }
      fail('Expected InvalidStateException');
    });
  });

  group('signOut', () {
    setUp(() async {
      await configureAuth();
      await signOutUser();
    });

    testWidgets('should sign a user out', (WidgetTester tester) async {
      // sign up user
      final username = generateUsername();
      final password = generatePassword();
      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            CognitoUserAttributeKey.email: generateEmail(),
            CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
          }));

      // Ensure signed in before testing signOut.
      await Amplify.Auth.signIn(username: username, password: password);
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isTrue);

      // assert user is signed out after calling signOut
      await Amplify.Auth.signOut();
      final finalAuthSession = await Amplify.Auth.fetchAuthSession();
      expect(finalAuthSession.isSignedIn, isFalse);
    });

    testWidgets('should not throw even if there is no user to sign out',
        (WidgetTester tester) async {
      // ensure that no user is currently logged in
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isFalse);

      // call signOut without an expectation for an exception
      await Amplify.Auth.signOut();
    });
  });
}

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
import 'package:amplify_test/amplify_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late String username;
  late String password;
  group('signIn', () {
    setUp(() async {
      await configureAuth(additionalPlugins: [
        AmplifyAPI(),
      ]);

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

    testWidgets(
        'should throw an NotAuthorizedException if a password is not provided and Custom Auth is not configured without SRP',
        (WidgetTester tester) async {
      try {
        await Amplify.Auth.signIn(username: username);
      } catch (e) {
        expect(e, isA<NotAuthorizedException>());
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

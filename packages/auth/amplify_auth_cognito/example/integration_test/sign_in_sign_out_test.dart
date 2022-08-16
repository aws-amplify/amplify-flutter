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
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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
      expect(
        Amplify.Auth.signIn(
          username: username,
          password: incorrectPassword,
        ),
        throwsA(isA<NotAuthorizedException>()),
      );
    });

    testWidgets(
        'should throw an NotAuthorizedException if a password is not provided and Custom Auth is not configured without SRP',
        (WidgetTester tester) async {
      expect(
        Amplify.Auth.signIn(username: username),
        throwsA(isA<NotAuthorizedException>()),
      );
    });

    testWidgets('should throw a UserNotFoundException with a non-existent user',
        (WidgetTester tester) async {
      final incorrectUsername = generateUsername();
      expect(
        Amplify.Auth.signIn(username: incorrectUsername, password: password),
        throwsA(isA<UserNotFoundException>()),
      );
    });

    testWidgets('additionalInfo should be null', (WidgetTester tester) async {
      final result =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(result.nextStep?.additionalInfo, isNull);
    });
  });

  group('signOut', () {
    setUp(() async {
      await configureAuth();
      await signOutUser();
    });

    testWidgets('should sign a user out', (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

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

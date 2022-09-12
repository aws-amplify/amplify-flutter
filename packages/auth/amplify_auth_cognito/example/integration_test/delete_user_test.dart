/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  group('deleteUser', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
    });

    testWidgets('should delete a confirmed user', (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect subsequent sign in to fail
      expect(
        Amplify.Auth.signIn(
          username: username,
          password: password,
        ),
        throwsA(isA<UserNotFoundException>()),
      );
    });

    testWidgets(
        'fetchAuthSession should throw NotAuthorizedException after user deletion',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect fetchAuthSession to throw a NotAuthorizedException
      // (the tokens have been cleared and guest users are not allowed).
      expect(
        Amplify.Auth.fetchAuthSession(
          options: const CognitoSessionOptions(getAWSCredentials: true),
        ),
        throwsA(isA<NotAuthorizedException>()),
      );
    });
  });
}

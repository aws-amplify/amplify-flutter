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
import 'package:amplify_authenticator/src/screens/confirm_signup_screen.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'finders/signUp_finder.dart';
import 'utils/mock_data.dart';
import 'package:amplify_authenticator_example/main.dart' as app;

void main() {
  group('Sign In and Sign Out', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    setUpAll(() async {});

    testWidgets("Creates an account", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      //Going to sign up screen
      await tester.tap(gotToSignUpButton);
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      //Creating account
      await tester.enterText(usernameSignUpFormField, generateUsername());
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignUpFormField, generatePassword());
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(emailSignUpFormField, generatePassword());
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(phoneNumberSignUpFormField, generatePassword());
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(signUpButton);
      await tester.pumpAndSettle();

      expect(ConfirmSignUpScreen, true);

      //Confirm sign up

      await tester.enterText(
          usernameConfirmSignUpFormField, generateUsername());
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      final res1 = await Amplify.Auth.fetchAuthSession();
      expect(res1.isSignedIn, false);
    });

    testWidgets("Signing in an unregistered  user",
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();
      app.main();
      await tester.pumpAndSettle();

      await tester.enterText(usernameSignInFormField, username);
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignInFormField, password);
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      try {
        await Amplify.Auth.signIn(username: username, password: password);
      } catch (e) {
        expect(e, TypeMatcher<UserNotFoundException>());
        return;
      }

      await tester.tap(signInButton);
    });
  });
}

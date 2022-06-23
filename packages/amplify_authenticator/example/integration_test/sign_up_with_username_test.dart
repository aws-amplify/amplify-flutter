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

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_up_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = Authenticator(
    child: MaterialApp(
      builder: Authenticator.builder(),
      home: const Scaffold(
        body: Center(
          child: SignOutButton(),
        ),
      ),
    ),
  );

  group('sign-in-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-up-with-username',
      );
    });

    // Scenario: Login mechanism set to "username"
    testWidgets('Login mechanism set to "username"', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();
      signUpPage.expectUserNameIsPresent();
    });

    // Scenario: "Preferred Username" is included from `aws_cognito_signup_attributes`
    testWidgets(
        '"Preferred Username" is included from aws_cognito_signup_attributes',
        (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();
      signUpPage.expectPreferredUserNameIsPresent();
    });

    // Scenario: "Email" is included from `aws_cognito_verification_mechanisms`
    testWidgets('"Email" is included from aws_cognito_verification_mechanisms',
        (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();
      signUpPage.expectEmailIsPresent();
    });

    // Scenario: "Phone Number" is not included
    testWidgets('"Phone Number" is not included', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();
      signUpPage.expectPhoneIsNotPresent();
    });

    // Scenario: Sign up a new username & password
    testWidgets('Sign up a new username & password', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();

      // TODO: Clarify requirements
      // Given I intercept '{ "headers": { "X-Amz-Target": "AWSCognitoIdentityProviderService.SignUp" } }'
      // with fixture "sign-up-with-username"

      final username = generateUsername();
      final password = generatePassword();
      final email = generateEmail();

      await signUpPage.enterUsername(username);
      await signUpPage.enterPassword(password);
      await signUpPage.enterPasswordConfirmation(password);
      await signUpPage.enterEmail(email);
      await signUpPage.enterPreferredUsername(username);
      await signUpPage.submitSignUp();

      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();
    });

    // Scenario: Username field autocompletes username
    // TODO: Clarify requirements
    // testWidgets('Username field autocompletes username', (tester) async {});

    // Scenario: Password fields autocomplete "new-password"
    // TODO: Clarify requirements
    // testWidgets('Then "Password" field autocompletes "new-password"',
    //     (tester) async {});
  });
}

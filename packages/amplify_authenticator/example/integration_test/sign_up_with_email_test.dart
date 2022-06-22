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

// This test follows the Amplify UI feature "sign-up-with-email"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-email.feature

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

  group('sign-up-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-up-with-email',
      );
    });

    // Scenario: Login mechanism set to "email"
    testWidgets('Login mechanism set to "email"', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();

      // Then I see "Email" as an input field
      await signUpPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // And I don't see "Username" as an input field
      signUpPage.expectPlainUsernameNotPresent();

      // And I don't see "Phone Number" as an input field
      signUpPage.expectPhoneIsNotPresent();
    });

    // Scenario: Sign up a new email & password
    testWidgets('Sign up a new email & password', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      await loadAuthenticator(tester: tester, authenticator: authenticator);
      await signInPage.navigateToSignUp();

      // TODO: Clarify requirements
      // Given I intercept '{ "headers": { "X-Amz-Target": "AWSCognitoIdentityProviderService.SignUp" } }'
      // with fixture "sign-up-with-email"

      final username = generateEmail();
      final password = generatePassword();

      // When I type a new "email"
      await signUpPage.enterUsername(username);

      // And I type my password
      await signUpPage.enterPassword(password);

      // And I confirm my password
      await signUpPage.enterPasswordConfirmation(password);

      // And I click the "Create Account" button
      await signUpPage.submitSignUp();

      // Then I see "Confirmation Code"
      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();
    });

    // Scenario: Username field autocompletes username
    // TODO: Clarify requirements
    // testWidgets('Email field autocompletes username', (tester) async {});

    // Scenario: Password fields autocomplete "new-password"
    // TODO: Clarify requirements
    // testWidgets('Then "Password" field autocompletes "new-password"',
    //     (tester) async {});
  });
}

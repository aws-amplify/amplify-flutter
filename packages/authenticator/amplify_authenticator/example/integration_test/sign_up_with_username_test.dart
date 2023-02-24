// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  group('sign-up-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-username',
      );
    });

    // Scenario: Login mechanism set to "username"
    testWidgets('Login mechanism set to "username"', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);
      await signInPage.navigateToSignUp();
      signUpPage.expectUserNameIsPresent();
    });

    // Scenario: "Email" is included from `aws_cognito_verification_mechanisms`
    testWidgets('"Email" is included from aws_cognito_verification_mechanisms',
        (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);
      await signInPage.navigateToSignUp();
      signUpPage.expectEmailIsPresent();
    });

    // Scenario: "Phone Number" is not included
    testWidgets('"Phone Number" is not included', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);
      await signInPage.navigateToSignUp();
      signUpPage.expectPhoneIsNotPresent();
    });

    // Scenario: Sign up a new username & password
    testWidgets('Sign up a new username & password', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      await loadAuthenticator(tester: tester);
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

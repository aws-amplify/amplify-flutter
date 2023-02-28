// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-up-with-email"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-email.feature

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  group('sign-up-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-email"
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-email',
      );
    });

    // Scenario: Login mechanism set to "email"
    testWidgets('Login mechanism set to "email"', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.signUp,
          emitsDone,
        ]),
      );

      await signInPage.navigateToSignUp();

      // Then I see "Email" as an input field
      signUpPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // And I don't see "Username" as an input field
      signUpPage.expectPlainUsernameNotPresent();

      // And I don't see "Phone Number" as an input field
      signUpPage.expectPhoneIsNotPresent();

      await tester.bloc.close();
    });

    // Scenario: Sign up a new email & password
    testWidgets('Sign up a new email & password', (tester) async {
      SignUpPage signUpPage = SignUpPage(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.signUp,
          UnauthenticatedState.confirmSignUp,
          emitsDone,
        ]),
      );

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

      await tester.bloc.close();
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

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-up-with-email"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-email.feature

void main() {
  testRunner.setupTests();

  group('sign-up-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-email"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-email',
      );
    });

    // Scenario: Login mechanism set to "email"
    testWidgets('Login mechanism set to "email"', (tester) async {
      final signUpPage = SignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);
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
      final signUpPage = SignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);

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
  });
}

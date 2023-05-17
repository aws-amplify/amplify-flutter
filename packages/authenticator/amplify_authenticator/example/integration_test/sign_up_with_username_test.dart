// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-up-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-username',
      );
    });

    // Scenario: Login mechanism set to "username"
    testWidgets('Login mechanism set to "username"', (tester) async {
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
      signUpPage.expectUserNameIsPresent();

      await tester.bloc.close();
    });

    // Scenario: "Email" is included from `aws_cognito_verification_mechanisms`
    testWidgets('"Email" is included from aws_cognito_verification_mechanisms',
        (tester) async {
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
      signUpPage.expectEmailIsPresent();
    });

    // Scenario: "Phone Number" is not included
    testWidgets('"Phone Number" is not included', (tester) async {
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
      signUpPage.expectPhoneIsNotPresent();

      await tester.bloc.close();
    });

    // Scenario: Sign up a new username & password
    testWidgets('Sign up a new username & password', (tester) async {
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

      await tester.bloc.close();
    });
  });
}

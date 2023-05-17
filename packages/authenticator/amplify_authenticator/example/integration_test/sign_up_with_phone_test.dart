// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-up-with-phone"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-phone.feature

void main() {
  testRunner.setupTests();

  group('sign-up-with-phone', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-phone',
      );
    });

    // Scenario: Login mechanism set to "phone"
    testWidgets('Login mechanism set to "phone"', (tester) async {
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

      // Then I see "Phone Number" as an input field
      signUpPage.expectUserNameIsPresent(usernameLabel: 'Phone Number');

      // And I don't see "Username" as an input field
      signUpPage.expectPlainUsernameNotPresent();

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

      // Then I see "Email" as an "email" field
      signUpPage.expectEmailIsPresent();

      await tester.bloc.close();
    });

    // Scenario: Sign up with valid phone number & password
    testWidgets('Sign up a new phone number & password', (tester) async {
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

      final phoneNumber = generateUSPhoneNumber();
      final password = generatePassword();
      final email = generateEmail();

      // When I select my country code
      await signUpPage.selectCountryCode();
      await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signUpPage.enterPassword(password);

      // And I confirm my password
      await signUpPage.enterPasswordConfirmation(password);

      // And I type my "email" with a randomized email
      await signUpPage.enterEmail(email);

      // And I click the "Create Account" button
      await signUpPage.submitSignUp();

      // Then I see "Confirmation Code"
      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      await tester.bloc.close();
    });

    testWidgets('Sign up with a non US number', (tester) async {
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

      final phoneNumber = generateFrenchPhoneNumber();
      final password = generatePassword();
      final email = generateEmail();

      // When I select my country code as UK
      await signUpPage.selectCountryCode(
        countryName: 'France',
        countryCode: phoneNumber.countryCode,
      );
      await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signUpPage.enterPassword(password);

      // And I confirm my password
      await signUpPage.enterPasswordConfirmation(password);

      // And I type my "email" with a randomized email
      await signUpPage.enterEmail(email);

      // And I click the "Create Account" button
      await signUpPage.submitSignUp();

      // Then I see "Confirmation Code"
      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      await tester.bloc.close();
    });
  });
}

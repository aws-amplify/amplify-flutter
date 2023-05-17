// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-in-sms-mfa', () {
    late PhoneNumber phoneNumber;
    late String password;

    // Given I'm running the example "ui/components/authenticator/sign-in-sms-mfa.feature"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-phone',
      );

      phoneNumber = generateUSPhoneNumber();
      password = generatePassword();
      await adminCreateUser(
        phoneNumber.toE164(),
        password,
        autoConfirm: true,
        enableMfa: true,
        verifyAttributes: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.phoneNumber,
            value: phoneNumber.toE164(),
          ),
        ],
      );
    });

    // Scenario: Sign in using a valid phone number and SMS MFA
    testWidgets('Sign in using a valid phone number and SMS MFA',
        (tester) async {
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignInMfa,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUsername(label: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I will be redirected to the confirm sms mfa page
      await confirmSignInPage.expectConfirmSignInMFAIsPresent();

      await tester.bloc.close();
    });

    // Scenario: Redirect to sign in page
    testWidgets('Redirect to sign in page', (tester) async {
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignInMfa,
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUsername(label: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // And I click the "Back to Sign In" button
      await confirmSignInPage.navigateToSignIn();

      // Then I see "Sign in"
      signInPage.expectStep(AuthenticatorStep.signIn);

      await tester.bloc.close();
    });

    // Scenario: Incorrect SMS code
    testWidgets('Incorrect SMS code', (tester) async {
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignInMfa,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUsername(label: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();
      signInPage.expectStep(AuthenticatorStep.confirmSignInMfa);

      // And I type an invalid SMS code
      await confirmSignInPage.enterVerificationCode('123456');

      // And I click the "Confirm" button
      await confirmSignInPage.submitConfirmSignIn();

      // Then I see 'Invalid code or auth state for the user'.
      await confirmSignInPage.expectInvalidCode();

      await tester.bloc.close();
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final phoneNumber = generateUSPhoneNumber();
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "UNKNOWN"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      signInPage.expectUserNotFound();

      await tester.bloc.close();
    });
  });
}

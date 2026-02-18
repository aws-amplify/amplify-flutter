// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-up-with-phone"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-phone.feature

/// The maximum number of sign-up attempts before giving up.
/// This handles the case where a randomly generated phone number
/// is already registered in the Cognito user pool from a previous test run.
const maxSignUpAttempts = 10;

/// Keywords in Cognito error messages that indicate the phone number (or alias)
/// is already registered. When we detect one of these we can safely retry with
/// a freshly generated number instead of failing the test immediately.
const _duplicateAccountKeywords = [
  'already exists',
  'UsernameExists',
  'AliasExists',
];

/// Returns the current [AuthenticatorStep] shown on screen.
AuthenticatorStep _currentStep(WidgetTester tester) {
  final screen = tester.widget<AuthenticatorScreen>(
    find.byType(AuthenticatorScreen),
  );
  return screen.step;
}

/// Checks if an error banner is currently displayed and returns its text,
/// or `null` if no banner is visible.
String? _bannerText(WidgetTester tester) {
  final bannerFinder = find.byKey(keyAuthenticatorBanner);
  if (bannerFinder.evaluate().isEmpty) return null;

  // Walk the banner's widget subtree and collect all Text content.
  final textFinder = find.descendant(
    of: bannerFinder,
    matching: find.byType(Text),
  );
  final buffer = StringBuffer();
  for (final element in textFinder.evaluate()) {
    final widget = element.widget;
    if (widget is Text && widget.data != null) {
      buffer.write(widget.data);
    }
  }
  return buffer.isEmpty ? null : buffer.toString();
}

/// Returns `true` when the current error banner indicates that the phone
/// number (or alias) is already registered in the user pool.
bool _isDuplicateAccountError(WidgetTester tester) {
  final text = _bannerText(tester);
  if (text == null) return false;
  final lower = text.toLowerCase();
  return _duplicateAccountKeywords.any(
    (kw) => lower.contains(kw.toLowerCase()),
  );
}

void main() {
  testRunner.setupTests();

  group('sign-up-with-phone', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUp(() async {
      await testRunner.configure(environmentName: 'sign-in-with-phone');
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
    testWidgets(
      '"Email" is included from aws_cognito_verification_mechanisms',
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
      },
    );

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

      // Retry sign-up with a new phone number if the generated number
      // is already registered in the Cognito user pool.
      for (var attempt = 1; attempt <= maxSignUpAttempts; attempt++) {
        final phoneNumber = generateUSPhoneNumber();
        final password = generatePassword();
        final email = generateEmail();

        // When I enter my phone number
        await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I type my "email" with a randomized email
        await signUpPage.enterEmail(email);

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // If we've advanced to confirmSignUp, sign-up succeeded.
        if (_currentStep(tester) == AuthenticatorStep.confirmSignUp) {
          // Clean up the created user after the test completes,
          // even if later assertions fail.
          addTearDown(() => adminDeleteUser(phoneNumber.toE164()));
          break;
        }

        // Still on the signUp page – check *why* sign-up failed.
        if (_isDuplicateAccountError(tester)) {
          // The phone number is already registered – retry with a new one
          // unless we've exhausted all attempts.
          if (attempt == maxSignUpAttempts) {
            fail(
              'Sign-up failed after $maxSignUpAttempts attempts. '
              'Every generated phone number was already registered.',
            );
          }
          // Continue to next iteration with a fresh number.
          continue;
        }

        // A non-duplicate error occurred – fail immediately so we don't
        // mask real issues behind retries.
        final errorText = _bannerText(tester) ?? 'unknown error';
        fail(
          'Sign-up failed on attempt $attempt with a non-retryable error: '
          '$errorText',
        );
      }

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

      // Retry sign-up with a new phone number if the generated number
      // is already registered in the Cognito user pool.
      for (var attempt = 1; attempt <= maxSignUpAttempts; attempt++) {
        final phoneNumber = generateFrenchPhoneNumber();
        final password = generatePassword();
        final email = generateEmail();

        // When I select my country code as France
        if (attempt == 1) {
          await signUpPage.selectCountryCode(
            countryName: 'France',
            countryCode: phoneNumber.countryCode,
          );
        }
        await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I type my "email" with a randomized email
        await signUpPage.enterEmail(email);

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // If we've advanced to confirmSignUp, sign-up succeeded.
        if (_currentStep(tester) == AuthenticatorStep.confirmSignUp) {
          // Clean up the created user after the test completes,
          // even if later assertions fail.
          addTearDown(() => adminDeleteUser(phoneNumber.toE164()));
          break;
        }

        // Still on the signUp page – check *why* sign-up failed.
        if (_isDuplicateAccountError(tester)) {
          // The phone number is already registered – retry with a new one
          // unless we've exhausted all attempts.
          if (attempt == maxSignUpAttempts) {
            fail(
              'Sign-up failed after $maxSignUpAttempts attempts. '
              'Every generated phone number was already registered.',
            );
          }
          // Continue to next iteration with a fresh number.
          continue;
        }

        // A non-duplicate error occurred – fail immediately so we don't
        // mask real issues behind retries.
        final errorText = _bannerText(tester) ?? 'unknown error';
        fail(
          'Sign-up failed on attempt $attempt with a non-retryable error: '
          '$errorText',
        );
      }

      // Then I see "Confirmation Code"
      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      await tester.bloc.close();
    });
  });
}

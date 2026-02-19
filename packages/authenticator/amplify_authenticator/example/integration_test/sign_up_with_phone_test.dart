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
import 'package:integration_test/integration_test.dart';

import 'test_runner.dart';
import 'utils/screenshot_helper.dart';
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

    testWidgets('Sign up with a non US number', (tester) async {
      final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      final screenshots = ScreenshotHelper(
        binding: binding,
        testName: 'sign_up_with_non_us_number',
      );

      final signUpPage = SignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      await loadAuthenticator(tester: tester);

      await screenshots.takeScreenshot('01_initial_sign_in_page');

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

      await screenshots.takeScreenshot('02_navigated_to_sign_up');

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
          await screenshots.takeScreenshot('03_selected_country_code_france');
        }
        await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

        await screenshots.takeScreenshot('04_entered_phone_number');

        // And I type my password
        await signUpPage.enterPassword(password);

        await screenshots.takeScreenshot('05_entered_password');

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        await screenshots.takeScreenshot('06_entered_password_confirmation');

        // And I type my "email" with a randomized email
        await signUpPage.enterEmail(email);

        await screenshots.takeScreenshot('07_entered_email');

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        await screenshots.takeScreenshot('08_submitted_sign_up');

        // If we've advanced to confirmSignUp, sign-up succeeded.
        if (_currentStep(tester) == AuthenticatorStep.confirmSignUp) {
          // Clean up the created user after the test completes,
          // even if later assertions fail.
          addTearDown(() => adminDeleteUser(phoneNumber.toE164()));
          await screenshots.takeScreenshot('09_confirm_sign_up_reached');
          break;
        }

        // Still on the signUp page – check *why* sign-up failed.
        if (_isDuplicateAccountError(tester)) {
          await screenshots.takeScreenshot(
            '08_duplicate_account_error_attempt_$attempt',
          );
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
        await screenshots.takeScreenshot('08_non_retryable_error');
        final errorText = _bannerText(tester) ?? 'unknown error';
        fail(
          'Sign-up failed on attempt $attempt with a non-retryable error: '
          '$errorText',
        );
      }

      // Then I see "Confirmation Code"
      await confirmSignUpPage.expectConfirmSignUpIsPresent();
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      await screenshots.takeScreenshot('10_confirmation_code_present');

      await tester.bloc.close();
    });
  });
}

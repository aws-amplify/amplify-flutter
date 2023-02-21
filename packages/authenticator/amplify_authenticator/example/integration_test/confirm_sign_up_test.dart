// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "confirm-sign-up"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/confirm-sign-up.feature

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final isMobile = !kIsWeb && (Platform.isIOS || Platform.isAndroid);

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

  group('confirm-sign-up', () {
    // Given I'm running the example "ui/components/authenticator/confirm-sign-up"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/confirm-sign-up',
        additionalConfigs: isMobile ? [AmplifyAPI()] : null,
      );
    });

    // Scenario: Confirm a new username & password with an invalid code
    testWidgets(
      'Confirm a new username & password with an invalid code',
      (tester) async {
        final SignUpPage signUpPage = SignUpPage(tester: tester);
        final ConfirmSignUpPage confirmSignUpPage =
            ConfirmSignUpPage(tester: tester);
        final SignInPage signInPage = SignInPage(tester: tester);

        await loadAuthenticator(tester: tester, authenticator: authenticator);

        final username = generateEmail();
        final password = generatePassword();

        await signInPage.navigateToSignUp();

        // When I type a new "email"
        await signUpPage.enterUsername(username);

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // And I see "Confirmation Code"
        confirmSignUpPage.expectConfirmationCodeIsPresent();

        // And I type an invalid confirmation code
        await confirmSignUpPage.enterCode('123456');

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Username/client id combination not found."
        await confirmSignUpPage.expectInvalidVerificationCode();
      },
    );

    // Scenario: Confirm a new username & password with a valid code
    testWidgets(
      'Confirm a new username & password with a valid code',
      (tester) async {
        final SignUpPage signUpPage = SignUpPage(tester: tester);
        final ConfirmSignUpPage confirmSignUpPage =
            ConfirmSignUpPage(tester: tester);
        final SignInPage signInPage = SignInPage(tester: tester);

        await loadAuthenticator(tester: tester, authenticator: authenticator);

        final username = generateEmail();
        final password = generatePassword();
        final otpResult = await getOtpCode(username);

        await signInPage.navigateToSignUp();

        // When I type a new "email"
        await signUpPage.enterUsername(username);

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // And I see "Confirmation Code"
        confirmSignUpPage.expectConfirmationCodeIsPresent();

        // And I type a valid confirmation code
        await confirmSignUpPage.enterCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Sign out"
        await signInPage.expectAuthenticated();
      },
      skip: !isMobile,
    );

    // Scenario: User is already confirmed and then clicks Resend Code
    testWidgets(
      'User is already confirmed and then clicks Resend Code',
      (tester) async {
        // TODO: clarify requirements
      },
      skip: true,
    );

    // Scenario: Supports "One-Time Code"
    testWidgets(
      'Supports "One-Time Code"',
      (tester) async {
        // TODO: clarify requirements
      },
      skip: true,
    );
  });
}

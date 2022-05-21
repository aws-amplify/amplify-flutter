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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_up_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

// This test follows the Amplify UI feature "confirm-sign-up"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/confirm-sign-up.feature

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

  group('confirm-sign-up', () {
    // Given I'm running the example "ui/components/authenticator/confirm-sign-up"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/confirm-sign-up',
        additionalConfigs: [AmplifyAPI()],
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
        final code = getOtpCode(username);

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
        await confirmSignUpPage.enterCode(await code);

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Sign out"
        await signInPage.expectAuthenticated();
      },
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

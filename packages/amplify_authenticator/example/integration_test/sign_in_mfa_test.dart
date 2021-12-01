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

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature
import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_in_page.dart';
import 'pages/confirm_sign_up_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/data_utils.dart';
import 'utils/mock_data.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = MaterialApp(
    home: Authenticator(
        child: const SignOutButton(
      key: Key('keySignOutButton'),
    )),
  );

  group('sign-in-with-phone', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-phone.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-phone',
        additionalConfigs: [AmplifyAPI()],
      );
    });

    // Scenario: Sign in using a valid phone number and SMS MFA
    testWidgets('Sign in using a valid phone number and SMS MFA',
        (tester) async {
      final phone = generatePhone();
      final password = generatePassword();
      await adminCreateUser(phone, password,
          autoConfirm: true, enableMfa: true, verifyAttributes: true);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUserNameIsPresent(usernameLabel: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phone);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I will be redirected to the confirm sms mfa page
      await confirmSignInPage.expectConfirmSignInMFAIsPresent();

      await deleteUser(phone);
    });

    // Scenario: Redirect to sign in page
    testWidgets('Redirect to sign in page', (tester) async {
      final phone = generatePhone();
      final password = generatePassword();
      await adminCreateUser(phone, password,
          autoConfirm: true, enableMfa: true, verifyAttributes: true);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUserNameIsPresent(usernameLabel: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phone);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // And I click the "Back to Sign In" button
      await confirmSignInPage.navigateToSignIn();

      // Then I see "Sign in"
      await signInPage.expectSignIn();

      await deleteUser(phone);
    });

    // Scenario: Incorrect SMS code
    testWidgets('Incorrect SMS code', (tester) async {
      final phone = generatePhone();
      final password = generatePassword();
      await adminCreateUser(phone, password,
          autoConfirm: true, enableMfa: true, verifyAttributes: true);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

      signInPage.expectUserNameIsPresent(usernameLabel: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "CONFIRMED"
      await signInPage.enterUsername(phone);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // And I type an invalid SMS code
      await confirmSignInPage.enterVerificationCode('123456');

      // And I click the "Confirm" button
      await confirmSignInPage.submitConfirmSignIn();

      // Then I see 'Invalid code or auth state for the user'.
      await confirmSignInPage.expectInvalidCode();

      await deleteUser(phone);
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final phone = generatePhone();
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "UNKNOWN"
      await signInPage.enterUsername(phone);

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      await signInPage.expectUserNotFound();
    });
  });
}

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
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_test/amplify_test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_in_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

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

  group('sign-in-sms-mfa', () {
    late PhoneNumber phoneNumber;
    late String password;

    // Given I'm running the example "ui/components/authenticator/sign-in-sms-mfa.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-sms-mfa',
      );
    });

    setUp(() async {
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
            userAttributeKey: CognitoUserAttributeKey.phoneNumber,
            value: phoneNumber.toE164(),
          ),
        ],
      );
    });

    tearDown(() async {
      await signOut();
      await deleteUser(phoneNumber.toE164());
    });

    // Scenario: Sign in using a valid phone number and SMS MFA
    testWidgets('Sign in using a valid phone number and SMS MFA',
        (tester) async {
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

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
    });

    // Scenario: Redirect to sign in page
    testWidgets('Redirect to sign in page', (tester) async {
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

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
    });

    // Scenario: Incorrect SMS code
    testWidgets('Incorrect SMS code', (tester) async {
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);

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
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final phoneNumber = generateUSPhoneNumber();
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "UNKNOWN"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      await signInPage.expectUserNotFound();
    });
  });
}

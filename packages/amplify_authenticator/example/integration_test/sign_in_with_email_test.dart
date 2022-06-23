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

// This test follows the Amplify UI feature "sign-in-with-email"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-in-with-email.feature

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_in_page.dart';
import 'pages/confirm_sign_up_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

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

  group('sign-in-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-email.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-email',
        additionalConfigs: isMobile ? [AmplifyAPI()] : null,
      );
    });

    tearDown(signOut);

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final username = generateEmail();
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      await signInPage.expectUserNotFound();
    });

    // Scenario: Sign in with unconfirmed credentials
    testWidgets(
      'Sign in with unconfirmed credentials',
      (tester) async {
        final email = generateEmail();
        final password = generatePassword();

        await loadAuthenticator(tester: tester, authenticator: authenticator);
        SignInPage signInPage = SignInPage(tester: tester);
        ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

        final code = getOtpCode(email);

        // Use the standard Amplify API to create the user in the Unconfirmed state
        await Amplify.Auth.signUp(
          username: email,
          password: password,
          options: CognitoSignUpOptions(
            userAttributes: {CognitoUserAttributeKey.email: email},
          ),
        );

        signInPage.expectUsername(label: 'Email');

        // When I type my "username" with status "unconfirmed"
        await signInPage.enterUsername(email);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I see "Confirmation Code"
        confirmSignUpPage.expectConfirmationCodeIsPresent();

        /// And I type a valid confirmation code
        await confirmSignUpPage.enterCode(await code);

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Sign out"
        await confirmSignUpPage.expectAuthenticated();
      },
      skip: !isMobile,
    );

    // Scenario: Sign in with confirmed credentials
    testWidgets('Sign in with confirmed credentials', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      await signInPage.submitSignOut();
    });

    // Scenario: Sign in with confirmed credentials then sign out
    testWidgets('Sign in with confirmed credentials then sign out',
        (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // Then I see "Sign in"
      signInPage.expectStep(AuthenticatorStep.signIn);
    });

    // Scenario: Sign in with force change password credentials
    testWidgets('Sign in with force change password credentials',
        (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(username, password);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "username"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Change Password"
      await confirmSignInPage.expectConfirmSignInNewPasswordIsPresent();
      confirmSignInPage.expectNewPasswordIsPresent();
    });
  });
}

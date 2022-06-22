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

// This test follows the Amplify UI feature "reset-password"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/reset-password.feature
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/forgot_password_page.dart';
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

  group('reset-password', () {
    // Given I'm running the example
    // "ui/components/authenticator/reset-password.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/reset-password',
      );
    });

    tearDown(() async {
      await Amplify.Auth.signOut();
    });

    // Scenario: Reset Password with valid username
    testWidgets('Reset Password with valid username', (tester) async {
      final username = generateUsername();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ForgotPasswordPage forgotPasswordPage =
          ForgotPasswordPage(tester: tester);
      await signInPage.expectUsername();

      // When I type my "username" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I click the "Forgot Password" button
      await signInPage.submitForgotPassword();

      // Then I will be redirected to the confirm forgot password page
      await forgotPasswordPage.expectForgotPassword();
    });

    // Scenario: Reset Password with invalid username
    testWidgets('Reset Password with invalid username', (tester) async {
      final username = generateUsername();
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ForgotPasswordPage forgotPasswordPage =
          ForgotPasswordPage(tester: tester);
      await signInPage.expectUsername();

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I click the "Forgot Password" button
      await signInPage.submitForgotPassword();
      await forgotPasswordPage.expectForgotPassword();
      await forgotPasswordPage.enterUsername(username);
      await forgotPasswordPage.submitSendCode();

      // Then I see "Username/client id combination not found."
      forgotPasswordPage.expectCombinationNotFound();
    });

    // Scenario: Reset Password with valid placeholder
    // TODO: Confirm Requirements
  });
}

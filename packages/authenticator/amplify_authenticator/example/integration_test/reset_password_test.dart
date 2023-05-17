// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "reset-password"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/reset-password.feature
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('reset-password', () {
    // "ui/components/authenticator/reset-password.feature"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-username',
      );
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
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.resetPassword,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final forgotPasswordPage = ForgotPasswordPage(tester: tester);
      signInPage.expectUsername();

      // When I type my "username" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I click the "Forgot Password" button
      await signInPage.submitForgotPassword();

      // Then I will be redirected to the confirm forgot password page
      await forgotPasswordPage.expectForgotPassword();

      await tester.bloc.close();
    });

    // Scenario: Reset Password with invalid username
    testWidgets('Reset Password with invalid username', (tester) async {
      final username = generateUsername();
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.resetPassword,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final forgotPasswordPage = ForgotPasswordPage(tester: tester);
      signInPage.expectUsername();

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I click the "Forgot Password" button
      await signInPage.submitForgotPassword();
      await forgotPasswordPage.expectForgotPassword();
      await forgotPasswordPage.enterUsername(username);
      await forgotPasswordPage.submitSendCode();

      // Then I see "Username/client id combination not found."
      forgotPasswordPage.expectCombinationNotFound();

      await tester.bloc.close();
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Forgot Password Page Object
class ForgotPasswordPage extends AuthenticatorPage {
  ForgotPasswordPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameSignInFormField);
  Finder get sendCodeButton => find.byKey(keySendCodeButton);

  /// Then I see "Forgot Password"
  Future<void> expectForgotPassword() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.step, equals(AuthenticatorStep.resetPassword));
  }

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.ensureVisible(usernameField);
    await tester.enterText(usernameField, username);
  }

  /// When I click 'Send Code'
  Future<void> submitSendCode() async {
    await tester.tap(sendCodeButton);
    await tester.pumpAndSettle();
  }
}

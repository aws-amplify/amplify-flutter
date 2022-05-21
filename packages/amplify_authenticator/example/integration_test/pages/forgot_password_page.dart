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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'authenticator_page.dart';

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
    await tester.enterText(usernameField, username);
  }

  /// When I click 'Send Code'
  Future<void> submitSendCode() async {
    await tester.tap(sendCodeButton);
    await tester.pumpAndSettle();
  }
}

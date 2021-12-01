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

/// Confirm Sign In Page Object
class ConfirmSignInPage extends AuthenticatorPage {
  ConfirmSignInPage({required WidgetTester tester}) : super(tester: tester);

  Finder get newPasswordField =>
      find.byKey(keyNewPasswordConfirmSignInFormField);
  Finder get verificationField => find.byKey(keyCodeConfirmSignInFormField);
  Finder get confirmSignInButton => find.byKey(keyConfirmSignInButton);
  Finder get backToSignIn => find.byKey(keyBackToSignInButton);

  /// Then I see "Confirm Sign In - New Password"
  Future<void> expectConfirmSignInNewPasswordIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.confirmSigninNewPassword));
  }

  /// Then I see "Confirm Sign In - MFA"
  Future<void> expectConfirmSignInMFAIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.confirmSigninMfa));
  }

  /// Then I see "New Password"
  void expectNewPasswordIsPresent() {
    expect(newPasswordField, findsOneWidget);
  }

  /// I enter a verification code
  Future<void> enterVerificationCode(String code) async {
    await tester.tap(verificationField);
    await tester.enterText(verificationField, code);
  }

  /// When I click the "Confirm Sign In" button
  Future<void> submitConfirmSignIn() async {
    await tester.ensureVisible(confirmSignInButton);
    await tester.tap(confirmSignInButton);
    await tester.pumpAndSettle();
  }

  /// When I navigate to the "Sign In" screen.
  Future<void> navigateToSignIn() async {
    await tester.tap(backToSignIn);
    await tester.pumpAndSettle();
  }
}

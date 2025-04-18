// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// Confirm Sign In Page Object
class ConfirmSignInPage extends AuthenticatorPage {
  ConfirmSignInPage({required super.tester});

  @override
  Finder get usernameField => throw UnimplementedError();

  Finder get newPasswordField =>
      find.byKey(keyNewPasswordConfirmSignInFormField);
  Finder get confirmNewPasswordField =>
      find.byKey(keyConfirmNewPasswordConfirmSignInFormField);
  Finder get verificationField => find.byKey(keyCodeConfirmSignInFormField);
  Finder get confirmSignInButton => find.byKey(keyConfirmSignInButton);
  Finder get confirmSignInMfaSelectionButton =>
      find.byKey(keyConfirmSignInMfaSelectionButton);
  Finder get confirmSignInMfaSetupSelectionButton =>
      find.byKey(keyConfirmSignInMfaSetupSelectionButton);
  Finder get selectMfaRadio =>
      find.byKey(keyMfaMethodRadioConfirmSignInFormField);
  Finder get selectMfaSetupRadio =>
      find.byKey(keyMfaSetupMethodRadioConfirmSignInFormField);
  Finder get backToSignIn => find.byKey(keyBackToSignInButton);

  /// Then I see "Confirm Sign In - New Password"
  Future<void> expectConfirmSignInNewPasswordIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.confirmSignInNewPassword),
    );
  }

  /// Then I see "Confirm Sign In - MFA"
  Future<void> expectConfirmSignInMFAIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.step, equals(AuthenticatorStep.confirmSignInMfa));
  }

  /// Then I see "Select your preferred MFA Method"
  Future<void> expectConfirmSignInMfaSelectionIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.continueSignInWithMfaSelection),
    );
  }

  /// Then I see "Select an MFA Method to set up"
  Future<void> expectContinueSignInWithMfaSetupSelectionIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.continueSignInWithMfaSetupSelection),
    );
  }

  /// Then I see "Enter your one-time passcode for Email"
  Future<void> expectConfirmSignInWithOtpCodeIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.confirmSignInWithOtpCode),
    );
  }

  /// Then I see "Setup an Authentication App"
  Future<void> expectSignInTotpSetupIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.continueSignInWithTotpSetup),
    );
  }

  /// Then I see "Enter your Authentication code"
  Future<void> expectConfirmSignInWithTotpMfaCodeIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.confirmSignInWithTotpMfaCode),
    );
  }

  /// Then I see "New Password"
  void expectNewPasswordIsPresent() {
    expect(newPasswordField, findsOneWidget);
  }

  /// Then I see "Invalid verification code"
  @override
  void expectInvalidVerificationCode() {
    expectError('Invalid code');
  }

  /// When I enter a verification code
  Future<void> enterVerificationCode(String code) async {
    await tester.ensureVisible(verificationField);
    await tester.enterText(verificationField, code);
  }

  /// When I enter a new password
  Future<void> enterNewPassword(String password) async {
    await tester.ensureVisible(newPasswordField);
    await tester.enterText(newPasswordField, password);
  }

  /// When I confirm a new password
  Future<void> enterPasswordConfirmation(String password) async {
    await tester.ensureVisible(confirmNewPasswordField);
    await tester.enterText(confirmNewPasswordField, password);
  }

  /// When I click the "Confirm Sign In" button
  Future<void> submitConfirmSignIn() async {
    await tester.ensureVisible(confirmSignInButton);
    await tester.tap(confirmSignInButton);
    await tester.pumpAndSettle();
  }

  /// When I select a MFA method
  Future<void> selectMfaMethod({required MfaType mfaMethod}) async {
    expect(selectMfaRadio, findsOneWidget);

    // if mfaMethod is email, don't make it uppercase except for the first letter
    // if mfa method is totp, make it all uppercase
    final mfaMethodWidget = find.descendant(
      of: selectMfaRadio,
      matching: find.textContaining(
        mfaMethod == MfaType.email
            ? 'Email'
            : '(${mfaMethod.name.toUpperCase()})',
      ),
    );

    await tester.tap(mfaMethodWidget);
    await tester.pumpAndSettle();
  }

  // When I select a MFA setup method
  Future<void> selectMfaSetupMethod({required MfaType mfaMethod}) async {
    expect(selectMfaSetupRadio, findsOneWidget);

    final mfaMethodWidget = find.descendant(
      of: selectMfaSetupRadio,
      matching: find.textContaining(
        mfaMethod == MfaType.email
            ? 'Email'
            : '(${mfaMethod.name.toUpperCase()})',
      ),
    );

    await tester.tap(mfaMethodWidget);
    await tester.pumpAndSettle();
  }

  /// When I click the "Confirm Sign In" button
  Future<void> submitConfirmSignInMfaSelection() async {
    await tester.ensureVisible(confirmSignInMfaSelectionButton);
    await tester.tap(confirmSignInMfaSelectionButton);
    await tester.pumpAndSettle();
  }

  /// When I click the continue sign in with MFA setup selection button
  Future<void> submitConfirmSignInMfaSetupSelection() async {
    await tester.ensureVisible(confirmSignInMfaSetupSelectionButton);
    await tester.tap(confirmSignInMfaSetupSelectionButton);
    await tester.pumpAndSettle();
  }

  /// When I navigate to the "Sign In" step.
  Future<void> navigateToSignIn() async {
    await tester.tap(backToSignIn);
    await tester.pumpAndSettle();
  }
}

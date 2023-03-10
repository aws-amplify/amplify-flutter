// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Confirm Sign Up Page Object
class ConfirmSignUpPage extends AuthenticatorPage {
  ConfirmSignUpPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameConfirmSignUpFormField);
  Finder get confirmationCodeField => find.byKey(keyCodeConfirmSignUpFormField);
  Finder get confirmSignUpButton => find.byKey(keyConfirmSignUpButton);

  /// Then I see "Confirm Sign Up"
  Future<void> expectConfirmSignUpIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.step, equals(AuthenticatorStep.confirmSignUp));
  }

  /// Then I see "Confirmation Code"
  void expectConfirmationCodeIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }

  /// When I type my code
  Future<void> enterCode(String code) async {
    await tester.ensureVisible(confirmationCodeField);
    await tester.tap(confirmationCodeField);
    await tester.enterText(confirmationCodeField, code);
  }

  /// When I click the "Confirm" button
  Future<void> submitConfirmSignUp() async {
    await tester.ensureVisible(confirmSignUpButton);
    await tester.tap(confirmSignUpButton);
    await tester.pumpAndSettle();
  }
}

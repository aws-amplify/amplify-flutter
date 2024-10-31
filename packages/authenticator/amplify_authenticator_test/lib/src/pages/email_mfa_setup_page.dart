// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

class EmailMfaSetupPage extends AuthenticatorPage {
  EmailMfaSetupPage({required super.tester});

  @override
  Finder get usernameField => throw UnimplementedError();

  Finder get emailField => find.byKey(keyEmailSetupFormField);
  Finder get continueSignIn =>
      find.byKey(keyConfirmSignInWithEmailMfaSetupButton);

  /// When I type my email
  Future<void> enterEmail(String email) async {
    await tester.ensureVisible(emailField);
    await tester.enterText(emailField, email);
    await tester.pumpAndSettle();
  }

  /// Then I see "Add Email for Two-Factor Authentication"
  Future<void> expectEmailMfaSetupIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(
      currentScreen.step,
      equals(AuthenticatorStep.continueSignInWithEmailMfaSetup),
    );
  }

  /// When I enter an email
  Future<void> submitEmail() async {
    await tester.ensureVisible(continueSignIn);
    await tester.tap(continueSignIn);
    await tester.pumpAndSettle();
  }
}

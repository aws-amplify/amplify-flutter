// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Confirm Verify User Page Object
class ConfirmVerifyUserPage extends AuthenticatorPage {
  ConfirmVerifyUserPage({required super.tester});

  @override
  Finder get usernameField =>
      throw UnimplementedError('Username does not exist on this page');

  Finder get confirmationCodeField => find.byKey(keyVerifyUserConfirmationCode);
  Finder get submitConfirmVerifyUserButton =>
      find.byKey(keySubmitConfirmVerifyUserButton);

  /// Then I see "Code"
  void expectCodeFieldIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }

  /// When I type my code
  Future<void> enterCode(String code) async {
    await tester.ensureVisible(confirmationCodeField);
    await tester.tap(confirmationCodeField);
    await tester.enterText(confirmationCodeField, code);
  }

  /// When I click the "Submit" button
  Future<void> submitConfirmationCode() async {
    await tester.ensureVisible(submitConfirmVerifyUserButton);
    await tester.tap(submitConfirmVerifyUserButton);
    await tester.pumpAndSettle();
  }
}

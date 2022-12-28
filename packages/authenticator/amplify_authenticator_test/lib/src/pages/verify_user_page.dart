// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Verify User Page Object
class VerifyUserPage extends AuthenticatorPage {
  VerifyUserPage({required super.tester});

  @override
  Finder get usernameField =>
      throw UnimplementedError('Username does not exist on this page');
  Finder get skipButton => find.byKey(keySkipVerifyUserButton);
  Finder get verifyButton => find.byKey(keySubmitVerifyUserButton);

  Finder get radioButtonField => find.byKey(keyVerifyUserRadioButtonFormField);

  /// When I click the "Skip" button
  Future<void> tapSkipButton() async {
    await tester.tap(skipButton);
    await tester.pumpAndSettle();
  }

  /// When I click the "attributeName" radio button
  Future<void> selectAttribute(String attributeName) async {
    final attributeRadioButtonOption = find.descendant(
      of: radioButtonField,
      matching: find.text(attributeName),
    );
    await tester.tap(attributeRadioButtonOption);
    await tester.pumpAndSettle();
  }

  /// When I click the "Verify" button
  Future<void> tapVerifyButton() async {
    await tester.tap(verifyButton);
    await tester.pumpAndSettle();
  }

  /// Then I see "Account recovery requires verified contact information"
  void expectTitleIsVisible() {
    expect(
      find.text('Account recovery requires verified contact information'),
      findsOneWidget,
    );
  }
}

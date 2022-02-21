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

import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'authenticator_page.dart';

/// Verify User Page Object
class VerifyUserPage extends AuthenticatorPage {
  VerifyUserPage({required WidgetTester tester}) : super(tester: tester);

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
    Finder attributeRadioButtonOption = find.descendant(
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

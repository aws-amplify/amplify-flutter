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

/// Sign Up Page Object
class SignUpPage extends AuthenticatorPage {
  SignUpPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameSignUpFormField);
  Finder get passwordField => find.byKey(keyPasswordSignUpFormField);
  Finder get confirmPasswordField =>
      find.byKey(keyPasswordConfirmationSignUpFormField);
  Finder get emailField => find.byKey(keyEmailSignUpFormField);
  Finder get phoneField => find.byKey(keyPhoneNumberSignUpFormField);
  Finder get preferredUsernameField =>
      find.byKey(keyPreferredUsernameSignUpFormField);
  Finder get signUpButton => find.byKey(keySignUpButton);

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.enterText(usernameField, username);
  }

  /// When I type my password
  Future<void> enterPassword(String password) async {
    await tester.enterText(passwordField, password);
  }

  /// When I type my password confirmation
  Future<void> enterPasswordConfirmation(String password) async {
    await tester.enterText(confirmPasswordField, password);
  }

  /// When I type my "email" with status "UNCONFIRMED"
  Future<void> enterEmail(String email) async {
    await tester.enterText(emailField, email);
  }

  /// When I type a new "preferred username"
  Future<void> enterPreferredUsername(String username) async {
    await tester.enterText(preferredUsernameField, username);
  }

  /// When I click the "Create Account" button
  Future<void> submitSignUp() async {
    await tester.ensureVisible(signUpButton);
    await tester.tap(signUpButton);
    await tester.pumpAndSettle();
  }

  /// Then I see "Username" as an input field
  void expectUserNameIsPresent({String usernameLabel = 'Username'}) {
    // username field is present
    expect(usernameField, findsOneWidget);
    // login type is "username"
    final Finder usernameFieldHint = find.descendant(
      of: find.byKey(keyUsernameSignUpFormField),
      matching: find.text(usernameLabel),
    );
    expect(usernameFieldHint, findsOneWidget);
  }

  /// Then I see "Preferred Username" as an input field
  void expectPreferredUserNameIsPresent() {
    expect(preferredUsernameField, findsOneWidget);
  }

  /// Then I see "Email" as an "email" field
  void expectEmailIsPresent() {
    expect(emailField, findsOneWidget);
  }

  /// Then I don't see "Phone Number"
  void expectPhoneIsNotPresent() {
    expect(phoneField, findsNothing);
  }

  /// Then I don't see "Username as an input field"
  void expectPlainUsernameNotPresent() {
    final Finder usernameFieldHint = find.descendant(
      of: find.byKey(keyUsernameSignUpFormField),
      matching: find.text('Username'),
    );
    expect(usernameFieldHint, findsNothing);
  }
}

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
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'authenticator_page.dart';

/// Sign In Page Object
class SignInPage extends AuthenticatorPage {
  SignInPage({required WidgetTester tester}) : super(tester: tester);

  Finder get usernameField => find.byKey(keyUsernameSignInFormField);
  Finder get passwordField => find.byKey(keyPasswordSignInFormField);
  Finder get signInButton => find.byKey(keySignInButton);
  Finder get signOutButton => find.byKey(const Key('keySignOutButton'));
  Finder get confirmSignInField => find.byKey(keyCodeConfirmSignInFormField);
  Finder get signUpTabBar => find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthScreen.signup)),
      );

  /// Then I see "SignIn"
  Future<void> expectSignIn() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.signin));
  }

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.enterText(usernameField, username);
  }

  /// When I type my password
  Future<void> enterPassword(String password) async {
    await tester.enterText(passwordField, password);
  }

  /// Then I see "Username" as an input field
  void expectUserNameIsPresent({String usernameLabel = 'Username'}) {
    // username field is present
    expect(usernameField, findsOneWidget);
    // login type is "username"
    Finder usernameFieldHint = find.descendant(
      of: find.byKey(keyUsernameSignInFormField),
      matching: find.text(usernameLabel),
    );
    expect(usernameFieldHint, findsOneWidget);
  }

  void expectAuthenticated() {
    expect(signOutButton, findsOneWidget);
  }

  /// When I click the "Sign In" button
  Future<void> submitSignIn() async {
    await tester.ensureVisible(signInButton);
    await tester.tap(signInButton);
    await tester.pumpAndSettle();
  }

  /// When I navigate to the "Sign Up" screen.
  Future<void> navigateToSignUp() async {
    await tester.tap(signUpTabBar);
    await tester.pumpAndSettle();
  }

  Future<void> submitSignOut() async {
    await tester.tap(signOutButton);
    await tester.pumpAndSettle();
  }
}

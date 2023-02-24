// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Sign In Page Object
class SignInPage extends AuthenticatorPage {
  SignInPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameSignInFormField);
  Finder get passwordField => find.byKey(keyPasswordSignInFormField);
  Finder get signInButton => find.byKey(keySignInButton);
  Finder get forgotPasswordButton => find.byKey(keyForgotPasswordButton);
  Finder get confirmSignInField => find.byKey(keyCodeConfirmSignInFormField);
  Finder get signUpTab => find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthenticatorStep.signUp)),
      );

  /// When I sign in with "username" and "password"
  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    await enterUsername(username);
    await enterPassword(password);
    await submitSignIn();
  }

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.ensureVisible(usernameField);
    await tester.enterText(usernameField, username);
    await tester.pumpAndSettle();
  }

  /// When I type my password
  Future<void> enterPassword(String password) async {
    await tester.ensureVisible(passwordField);
    await tester.enterText(passwordField, password);
    await tester.pumpAndSettle();
  }

  /// When I click the "Sign In" button
  Future<void> submitSignIn() async {
    await tester.ensureVisible(signInButton);
    await tester.tap(signInButton);
    await tester.pumpAndSettle();
  }

  /// When I navigate to the "Sign Up" step.
  Future<void> navigateToSignUp() async {
    await tester.tap(signUpTab);
    await tester.pumpAndSettle();
  }

  /// When I tap the "Forgot Password" button.
  Future<void> submitForgotPassword() async {
    await tester.tap(forgotPasswordButton);
    await tester.pumpAndSettle();
  }
}

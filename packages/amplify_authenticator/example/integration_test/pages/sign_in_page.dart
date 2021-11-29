import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Sign In Page Object
class SignInPage {
  SignInPage({required this.tester});

  final WidgetTester tester;

  Finder get usernameField => find.byKey(keyUsernameSignInFormField);
  Finder get passwordField => find.byKey(keyPasswordSignInFormField);
  Finder get bannerFinder => find.byKey(keyAuthenticatorBanner);
  Finder get signInButton => find.byKey(keySignInButton);

  Finder get signOutButton => find.byKey(const Key('keySignOutButton'));
  Finder get confirmSignInField => find.byKey(keyCodeConfirmSignInFormfield);
  Finder get signUpTabBar => find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthScreen.signup)),
      );

  /// When I type a new "username"
  Future<void> enterUsername(String username) async {
    await tester.enterText(usernameField, username);
  }

  /// When I type my password
  Future<void> enterPassword(String password) async {
    await tester.enterText(passwordField, password);
  }

  /// Then I see "Username" as an input field
  void expectUserNameIsPresent() {
    // username field is present
    expect(usernameField, findsOneWidget);
    // login type is "username"
    Finder usernameFieldHint = find.descendant(
      of: find.byKey(keyUsernameSignInFormField),
      matching: find.text('Username'),
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

  /// Then I see User not found banner
  Future<void> expectUserNotFound() async {
    expect(bannerFinder, findsOneWidget);
    Finder userNotFoundMessage = find.descendant(
      of: find.byKey(keyAuthenticatorBanner),
      matching: find.text('User does not exist.'),
    );
    expect(userNotFoundMessage, findsOneWidget);
  }
}

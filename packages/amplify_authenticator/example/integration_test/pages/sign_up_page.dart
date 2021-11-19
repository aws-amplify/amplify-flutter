import 'package:amplify_authenticator/src/keys.dart';

import 'package:flutter_test/flutter_test.dart';

/// Sign Up Page Object
class SignUpPage {
  SignUpPage({required this.tester});

  final WidgetTester tester;

  // Match on the title of the username field since it is dependent on
  // the username alias selected.
  Finder get usernameField => find.descendant(
        of: find.byKey(keyUsernameSignUpFormField),
        matching: find.text('Username'),
      );

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

  /// And I type my "email" with status "UNCONFIRMED"
  Future<void> enterEmail(String email) async {
    await tester.enterText(emailField, email);
  }

  /// And I type a new "preferred username"
  Future<void> enterPreferredUsername(String username) async {
    await tester.enterText(preferredUsernameField, username);
  }

  /// And I click the "Create Account" button
  Future<void> submitSignUp() async {
    await tester.ensureVisible(signUpButton);
    await tester.tap(signUpButton);
  }

  /// Then I see "Username" as an input field
  void expectUserNameIsPresent() {
    expect(usernameField, findsOneWidget);
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
}

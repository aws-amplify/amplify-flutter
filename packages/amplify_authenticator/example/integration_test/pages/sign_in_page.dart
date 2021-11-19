import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Sign In Page Object
class SignInPage {
  SignInPage({required this.tester});

  final WidgetTester tester;

  Finder get signUpTabBar => find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthScreen.signup)),
      );

  /// When I navigate to the "Sign Up" screen.
  Future<void> navigateToSignUp() async {
    await tester.tap(signUpTabBar);
    await tester.pumpAndSettle();
  }
}

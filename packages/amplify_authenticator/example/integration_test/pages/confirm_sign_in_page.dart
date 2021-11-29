import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';

import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

/// Confirm Sign In Page Object
class ConfirmSignInPage {
  ConfirmSignInPage({required this.tester});

  final WidgetTester tester;

  Finder get newPasswordField =>
      find.byKey(keyNewPasswordConfirmSignInFormField);

  /// Then I see "Confirm Sign In - New Password"
  Future<void> expectConfirmSignInNewPasswordIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.confirmSigninNewPassword));
  }

  /// Then I see "New Password"
  void expectNewPasswordIsPresent() {
    expect(newPasswordField, findsOneWidget);
  }
}

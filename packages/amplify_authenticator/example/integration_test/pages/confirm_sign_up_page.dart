import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';

import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

/// Confirm Sign Up Page Object
class ConfirmSignUpPage {
  ConfirmSignUpPage({required this.tester});

  final WidgetTester tester;

  Finder get confirmationCodeField => find.byKey(keyCodeConfirmSignUpFormfield);

  /// Then I see "Confirm Sign Up"
  Future<void> expectConfirmSignUpIsPresent() async {
    await nextBlocEvent(tester);
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.confirmSignup));
  }

  /// Then I see "Confirmation Code"
  void expectConfirmationCodeIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }
}

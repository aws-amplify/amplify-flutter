import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';

import 'package:flutter_test/flutter_test.dart';

import 'authenticator_page.dart';

/// Confirm Sign Up Page Object
class ConfirmSignUpPage {
  ConfirmSignUpPage({required this.tester});

  final WidgetTester tester;

  Finder get confirmationCodeField => find.byKey(keyCodeConfirmSignUpFormfield);

  /// Then I see "Confirm Sign Up"
  Future<void> expectConfirmSignUpIsPresent() async {
    await tester.nextBlocEvent();
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(AuthScreen.confirmSignup));
  }

  /// And I see "Confirmation Code"
  void expectConfirmationCodeIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }
}

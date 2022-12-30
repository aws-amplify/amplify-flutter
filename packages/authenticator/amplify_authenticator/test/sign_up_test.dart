// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  /// Tests an end to end "happy path" flow for sign up with email, with the
  /// auth library stubbed.
  testWidgets(
    'Create a new user with an email & password, and confirm the account',
    (tester) async {
      await tester.pumpWidget(const MockAuthenticatorApp());
      await tester.pumpAndSettle();

      final signUpPage = SignUpPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);

      const email = 'test-user@example.com';
      const password = 'Password123';

      await signInPage.navigateToSignUp();

      // When I type a new "email"
      await signUpPage.enterUsername(email);

      // And I type my password
      await signUpPage.enterPassword(password);

      // And I confirm my password
      await signUpPage.enterPasswordConfirmation(password);

      // And I click the "Create Account" button
      await binding.runAsync(signUpPage.submitSignUp);

      // And I see "Confirmation Code"
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      // And I type a valid confirmation code
      await confirmSignUpPage.enterCode(
        AmplifyAuthCognitoStub.verificationCode,
      );

      // And I click the "Confirm" button
      await binding.runAsync(confirmSignUpPage.submitConfirmSignUp);

      // Then I see "Sign out"
      await binding.runAsync(confirmSignUpPage.expectAuthenticated);
    },
  );
}

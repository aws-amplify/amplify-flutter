// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/mock_data.dart';
import 'utils/test_utils.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = Authenticator(
    authenticatorBuilder: (context, state) {
      switch (state.currentStep) {
        case AuthenticatorStep.signIn:
          return SafeArea(
            child: AuthenticatorForm(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // app logo
                    const Center(child: FlutterLogo(size: 100)),
                    // prebuilt form fields
                    SignInFormField.username(),
                    SignInFormField.password(),
                    // prebuilt button
                    const SignInButton(),
                  ],
                ),
              ),
            ),
          );
        default:
          return null;
      }
    },
    child: MaterialApp(
      builder: Authenticator.builder(),
      home: const Scaffold(
        body: Center(
          child: SignOutButton(),
        ),
      ),
    ),
  );

  group('custom ui', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-email.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-email',
      );
    });

    tearDown(signOut);

    // Scenario: Sign in then sign out
    testWidgets('Sign in then sign out', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      final SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // Then I see "Sign in"
      signInPage.expectUsername(label: 'Email');
    });
  });
}

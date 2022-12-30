// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Sign In View', () {
    group('navigation', () {
      testWidgets('via TabBar', (tester) async {
        await tester.pumpWidget(const MockAuthenticatorApp());
        await tester.pumpAndSettle();

        final signInPage = SignInPage(tester: tester);
        signInPage.expectStep(AuthenticatorStep.signIn);

        // Go to Sign Up
        await tester.tap(signInPage.signUpTab);
        await tester.pumpAndSettle();
        signInPage.expectStep(AuthenticatorStep.signUp);

        // Go to Sign In
        final signUpPage = SignUpPage(tester: tester);
        await tester.tap(signUpPage.signInTab);
        await tester.pumpAndSettle();
        signInPage.expectStep(AuthenticatorStep.signIn);
      });
    });

    group('form validation', () {
      testWidgets(
        'displays message when submitted without any data',
        (tester) async {
          await tester.pumpWidget(const MockAuthenticatorApp());
          await tester.pumpAndSettle();

          final signInPage = SignInPage(tester: tester);

          await signInPage.submitSignIn();

          final usernameFieldError = find.descendant(
            of: signInPage.usernameField,
            matching: find.text('Email field must not be blank.'),
          );

          expect(usernameFieldError, findsOneWidget);

          final passwordFieldError = find.descendant(
            of: signInPage.passwordField,
            matching: find.text('Password field must not be blank.'),
          );

          expect(passwordFieldError, findsOneWidget);
        },
      );

      testWidgets(
        'displays message when submitted with invalid email address',
        (tester) async {
          await tester.pumpWidget(const MockAuthenticatorApp());
          await tester.pumpAndSettle();

          final signInPage = SignInPage(tester: tester);

          await signInPage.enterUsername('not-an-email');
          await signInPage.enterPassword('Password123');

          await signInPage.submitSignIn();

          final usernameFieldError = find.descendant(
            of: signInPage.usernameField,
            matching: find.text('Invalid email format.'),
          );

          expect(usernameFieldError, findsOneWidget);
        },
      );
    });
  });
}

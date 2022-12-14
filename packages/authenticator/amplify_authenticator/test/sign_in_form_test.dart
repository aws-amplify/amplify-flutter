// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

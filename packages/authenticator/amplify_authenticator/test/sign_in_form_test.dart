// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements AmplifyAuthService {
  String? capturedUsername;

  @override
  Future<SignInResult> signIn(
    String username,
    String password, {
    SignInOptions? options,
  }) {
    capturedUsername = username;
    return Future.value(
      const CognitoSignInResult(
        isSignedIn: true,
        nextStep: AuthNextSignInStep(signInStep: AuthSignInStep.done),
      ),
    );
  }
}

class MockAuthPlugin extends AmplifyAuthCognitoStub {
  MockAuthPlugin(this.authService);
  final MockAuthService authService;

  @override
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    return authService.signIn(username, password ?? '');
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(TestWidgetsFlutterBinding.ensureInitialized);

  group('Sign In View', () {
    group('navigation', () {
      testWidgets('via TabBar', (tester) async {
        await tester.pumpWidget(const MockAuthenticatorApp());
        await tester.pumpAndSettle();

        final signInPage = SignInPage(tester: tester);

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
          // ignore: cascade_invocations
          signInPage.expectStep(AuthenticatorStep.signIn);
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

      testWidgets(
        'trims the username field before validation',
        (tester) async {
          await tester.pumpWidget(const MockAuthenticatorApp());
          await tester.pumpAndSettle();

          final signInPage = SignInPage(tester: tester);

          await signInPage.enterUsername('user@example.com ');
          await signInPage.enterPassword('Password123');

          await signInPage.submitSignIn();

          final usernameFieldError = find.descendant(
            of: signInPage.usernameField,
            matching: find.text('Invalid email format.'),
          );

          expect(usernameFieldError, findsNothing);
        },
      );

      testWidgets(
        'ensures email passed to the API is trimmed',
        (tester) async {
          final mockAuthService = MockAuthService();
          final mockAuthPlugin = MockAuthPlugin(mockAuthService);
          final app = MockAuthenticatorApp(authPlugin: mockAuthPlugin);

          await tester.pumpWidget(app);
          await tester.pumpAndSettle();

          final signInPage = SignInPage(tester: tester);

          // Enter email with trailing space and a valid password
          await signInPage.enterUsername('user@example.com ');
          await signInPage.enterPassword('Password123');

          await signInPage.submitSignIn();
          await tester.pumpAndSettle();

          // Verify the email was trimmed before being passed to the signIn method
          expect(mockAuthService.capturedUsername, 'user@example.com');
        },
      );
    });
  });
}

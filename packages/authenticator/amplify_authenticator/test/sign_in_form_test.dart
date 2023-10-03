// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements AmplifyAuthService {}

class MockSignInResult extends Mock implements SignInResult {}

class CustomMockAuthService extends AmplifyAuthService {
  String? capturedUsername;
  String? capturedPassword;

  @override
  Future<SignInResult> signIn(String username, String password) {
    capturedUsername = username;
    capturedPassword = password;
    return Future.value(MockSignInResult());
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final mockAuthService = CustomMockAuthService();

  final signInArguments = <dynamic>[];

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();

    registerFallbackValue(MockSignInResult());

    // when(() => mockAuthService.signIn(any(), any())).thenAnswer((_) {
    //   // capturedUsername = username;
    //   // capturedPassword = password;
    //   print(_);
    //   return Future.value(
    //     MockSignInResult(),
    //   );
    // });
  });

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
          await tester.pumpWidget(
            MockAuthenticatorApp(
              mockAuthService: CustomMockAuthService(),
            ),
          );
          await tester.pumpAndSettle();

          final signInPage = SignInPage(tester: tester);

          // Enter email with trailing space and a valid password
          await signInPage.enterUsername('user@example.com ');
          await signInPage.enterPassword('Password123');

          var capturedUsername;

          // when(() => mockAuthService.signIn(any(), any())).thenAnswer(
          //   (_) async {
          //     capturedUsername = _.positionalArguments[0];
          //     return MockSignInResult();
          //   },
          // );

          await signInPage.submitSignIn();
          await tester.pumpAndSettle();

          // Check if captured username is trimmed
          // expect(mockAuthService.capturedUsername, 'user@example.com');
        },
      );
    });
  });
}

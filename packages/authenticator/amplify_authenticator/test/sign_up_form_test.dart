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
  Future<SignUpResult> signUp(
    String username,
    String password,
    Map<CognitoUserAttributeKey, String> attributes,
  ) {
    capturedUsername = username;
    // Return mock result
    return Future.value(
      const CognitoSignUpResult(
        isSignUpComplete: true,
        nextStep: AuthNextSignUpStep(signUpStep: AuthSignUpStep.done),
      ),
    );
  }
}

class MockAuthPlugin extends AmplifyAuthCognitoStub {
  MockAuthPlugin(this.authService);

  final MockAuthService authService;

  final attributes = <CognitoUserAttributeKey, String>{};

  @override
  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    return authService.signUp(
      username,
      password,
      attributes,
    );
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Sign Up View', () {
    group('form validation', () {
      testWidgets(
        'displays message when submitted without any data',
        (tester) async {
          await tester.pumpWidget(
            const MockAuthenticatorApp(initialStep: AuthenticatorStep.signUp),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.submitSignUp();

          final usernameFieldError = find.descendant(
            of: signUpPage.usernameField,
            matching: find.text('Email field must not be blank.'),
          );

          expect(usernameFieldError, findsOneWidget);

          final passwordFieldError = find.descendant(
            of: signUpPage.passwordField,
            matching: find.text('Password field must not be blank.'),
          );

          expect(passwordFieldError, findsOneWidget);

          final passwordConfirmationFieldError = find.descendant(
            of: signUpPage.confirmPasswordField,
            matching: find.text('Confirm Password field must not be blank.'),
          );

          expect(passwordConfirmationFieldError, findsOneWidget);
        },
      );

      testWidgets(
        'displays message when submitted with invalid email address',
        (tester) async {
          await tester.pumpWidget(
            const MockAuthenticatorApp(initialStep: AuthenticatorStep.signUp),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.enterUsername('not-an-email');
          await signUpPage.enterPassword('Password123');
          await signUpPage.enterPasswordConfirmation('Password123');

          await signUpPage.submitSignUp();

          final usernameFieldError = find.descendant(
            of: signUpPage.usernameField,
            matching: find.text('Invalid email format.'),
          );

          expect(usernameFieldError, findsOneWidget);
        },
      );

      testWidgets(
        'displays message when submitted with invalid birth date',
        (tester) async {
          await tester.pumpWidget(
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              signUpForm: SignUpForm.custom(
                fields: [
                  SignUpFormField.username(),
                  SignUpFormField.birthdate(
                    validator: (value) {
                      if (value == null || value.isEmpty) return null;
                      final age = DateTime.now().difference(
                        DateTime.parse(value),
                      );
                      if (age < const Duration(days: 365 * 18)) {
                        return 'You must be 18 years or older.';
                      }
                      return null;
                    },
                  ),
                  SignUpFormField.password(),
                  SignUpFormField.passwordConfirmation(),
                ],
              ),
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.enterUsername('user123');
          await signUpPage.enterBirthDate('01/01/2020');
          await signUpPage.enterPassword('Password123');
          await signUpPage.enterPasswordConfirmation('Password123');

          await signUpPage.submitSignUp();

          final usernameFieldError = find.descendant(
            of: signUpPage.birthdateField,
            matching: find.text('You must be 18 years or older.'),
          );

          expect(usernameFieldError, findsOneWidget);
        },
      );

      testWidgets(
        'displays message when password does not meet requirements',
        (tester) async {
          await tester.pumpWidget(
            const MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              config: passwordReqConfig,
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.enterUsername('user@example.com');
          await signUpPage.enterPassword('1234');

          await signUpPage.submitSignUp();

          final passwordFieldErrorLine1 = find.descendant(
            of: signUpPage.passwordField,
            matching: find.textContaining(
              'Password must include',
            ),
          );

          final passwordFieldErrorLine2 = find.descendant(
            of: signUpPage.passwordField,
            matching: find.textContaining(
              '* at least 16 characters',
            ),
          );

          final passwordFieldErrorLine3 = find.descendant(
            of: signUpPage.passwordField,
            matching: find.textContaining(
              '* at least 1 uppercase character',
            ),
          );

          final passwordFieldErrorLine4 = find.descendant(
            of: signUpPage.passwordField,
            matching: find.textContaining(
              '* at least 1 symbol character',
            ),
          );

          expect(passwordFieldErrorLine1, findsOneWidget);
          expect(passwordFieldErrorLine2, findsOneWidget);
          expect(passwordFieldErrorLine3, findsOneWidget);
          expect(passwordFieldErrorLine4, findsOneWidget);
        },
      );

      testWidgets(
        'trims the username field before validation',
        (tester) async {
          await tester.pumpWidget(
            const MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
            ),
          );
          await tester.pumpAndSettle();

          final signInPage = SignUpPage(tester: tester);

          await signInPage.enterUsername('user@example.com ');
          await signInPage.enterPassword('Password123');

          await signInPage.submitSignUp();

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
          final app = MockAuthenticatorApp(
            authPlugin: mockAuthPlugin,
            initialStep: AuthenticatorStep.signUp,
          );

          await tester.pumpWidget(app);
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          // Enter email with trailing space
          await signUpPage.enterUsername('user@example.com ');
          await signUpPage.enterPassword('Password123!@#%^');
          await signUpPage.enterPasswordConfirmation('Password123!@#%^');

          await signUpPage.submitSignUp();
          await tester.pumpAndSettle();

          // Verify the email was trimmed before being passed to signUp
          expect(mockAuthService.capturedUsername, 'user@example.com');
        },
      );
    });
  });
}

const passwordReqConfig = '''{
  "auth": {
    "user_pool_id": "",
    "aws_region": "",
    "user_pool_client_id": "",
    "identity_pool_id": "",
    "mfa_methods": [
      "SMS"
    ],
    "standard_required_attributes": [
      "email"
    ],
    "username_attributes": [
      "email"
    ],
    "user_verification_types": [
      "email"
    ],
    "mfa_configuration": "NONE",
    "password_policy": {
      "min_length": 16,
      "require_uppercase": true,
      "require_symbols": true
    },
    "unauthenticated_identities_enabled": true
  },
  "version": "1"
}''';

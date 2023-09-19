// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

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
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              config: jsonEncode(passwordReqConfig.toJson()),
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
    });
  });
}

final passwordReqConfig = AmplifyConfig(
  auth: AuthConfig.cognito(
    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
    usernameAttributes: const [CognitoUserAttributeKey.email],
    signupAttributes: const [CognitoUserAttributeKey.email],
    passwordProtectionSettings: const PasswordProtectionSettings(
      passwordPolicyCharacters: [
        PasswordPolicyCharacters.requiresSymbols,
        PasswordPolicyCharacters.requiresUppercase,
      ],
      passwordPolicyMinLength: 16,
    ),
    verificationMechanisms: const [CognitoUserAttributeKey.email],
    socialProviders: const [],
    mfaConfiguration: MfaConfiguration.off,
    mfaTypes: const [MfaType.sms],
  ),
);

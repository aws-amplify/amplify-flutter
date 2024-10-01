// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockState {
  final MockDialCode dialCode = MockDialCode();
}

class MockDialCode {
  String value = '';
}

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

  group('PhoneNumberFormatter', () {
    late MockState state;
    late Map<String, int> countryPhoneNumberLengths;

    setUp(() {
      state = MockState();
      countryPhoneNumberLengths = {};
    });

    String displayPhoneNumber(String? phoneNumber) {
      phoneNumber = phoneNumber ?? '';
      final prefix = '+${state.dialCode.value}';
      if (phoneNumber.startsWith(prefix)) {
        phoneNumber = phoneNumber.substring(prefix.length);
      }
      // This is to handle the case where the user may errantly input their dial code again in their phone number
      // We make sure the user's phone number doesn't naturally just start with their dial code by checking if the number exceeds the maximum phone length of the country's phone number scheme before truncating it
      if (phoneNumber.startsWith(prefix.substring(1))) {
        if (countryPhoneNumberLengths.containsKey(prefix) &&
            phoneNumber.length > countryPhoneNumberLengths[prefix]!) {
          phoneNumber = phoneNumber.substring(prefix.length - 1);
        }
      }
      return phoneNumber;
    }

    test('removes country code prefix when present', () {
      state.dialCode.value = '1'; // US country code
      countryPhoneNumberLengths = {'+1': 10}; // US phone number length
      const input = '+11234567890';
      const expected = '1234567890';
      final result = displayPhoneNumber(input);
      expect(result, equals(expected));
    });

    test('removes dial code when phone number exceeds max length', () {
      state.dialCode.value = '1';
      countryPhoneNumberLengths = {'+1': 10};
      const input = '112345678901';
      const expected = '12345678901';
      final result = displayPhoneNumber(input);
      expect(result, equals(expected));
    });

    test('does not remove dial code when number is within max length', () {
      state.dialCode.value = '1';
      countryPhoneNumberLengths = {'+1': 10};
      const input = '1123456789';
      const expected = '1123456789';
      final result = displayPhoneNumber(input);
      expect(result, equals(expected));
    });
  });
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
        'Truncates the prefix with a phone number that accidentally resubmits the dial code already selected in the dropdown',
        (tester) async {
          await tester.pumpWidget(
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              signUpForm: SignUpForm.custom(
                fields: [
                  SignUpFormField.username(),
                  SignUpFormField.phoneNumber(required: true),
                  SignUpFormField.password(),
                ],
              ),
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.enterPhoneNumber('12235556789');

          await signUpPage.submitSignUp();
          await tester.pumpAndSettle();
          final phoneNumber = find
              .descendant(
                of: signUpPage.phoneField,
                matching: find.byType(Text),
              )
              .evaluate()
              .map((e) => (e.widget as Text).data)
              .where((text) => text != null)
              .first;

          expect(phoneNumber, equals('2235556789'));
        },
      );
      testWidgets(
        'displays message when submitted with empty phone number if the field is required',
        (tester) async {
          await tester.pumpWidget(
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              signUpForm: SignUpForm.custom(
                fields: [
                  SignUpFormField.username(),
                  SignUpFormField.phoneNumber(required: true),
                  SignUpFormField.password(),
                ],
              ),
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.submitSignUp();

          await tester.pumpAndSettle();

          Finder findPhoneFieldError() => find.descendant(
                of: signUpPage.phoneField,
                matching: find.text('Phone Number field must not be blank.'),
              );

          expect(findPhoneFieldError(), findsOneWidget);

          await signUpPage.enterPhoneNumber('1235556789');

          await signUpPage.submitSignUp();

          expect(findPhoneFieldError(), findsNothing);
        },
      );
      testWidgets(
        'displays message when submitted with empty phone number if the field is required',
        (tester) async {
          await tester.pumpWidget(
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              signUpForm: SignUpForm.custom(
                fields: [
                  SignUpFormField.username(),
                  SignUpFormField.phoneNumber(required: true),
                  SignUpFormField.password(),
                ],
              ),
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.submitSignUp();

          await tester.pumpAndSettle();

          Finder findPhoneFieldError() => find.descendant(
                of: signUpPage.phoneField,
                matching: find.text('Phone Number field must not be blank.'),
              );

          expect(findPhoneFieldError(), findsOneWidget);

          await signUpPage.enterPhoneNumber('1235556789');

          await signUpPage.submitSignUp();

          expect(findPhoneFieldError(), findsNothing);
        },
      );
      testWidgets(
        'displays message when submitted with empty phone number if the field is required',
        (tester) async {
          await tester.pumpWidget(
            MockAuthenticatorApp(
              initialStep: AuthenticatorStep.signUp,
              signUpForm: SignUpForm.custom(
                fields: [
                  SignUpFormField.username(),
                  SignUpFormField.phoneNumber(required: true),
                  SignUpFormField.password(),
                ],
              ),
            ),
          );
          await tester.pumpAndSettle();

          final signUpPage = SignUpPage(tester: tester);

          await signUpPage.submitSignUp();

          await tester.pumpAndSettle();

          Finder findPhoneFieldError() => find.descendant(
                of: signUpPage.phoneField,
                matching: find.text('Phone Number field must not be blank.'),
              );

          expect(findPhoneFieldError(), findsOneWidget);

          await signUpPage.enterPhoneNumber('1235556789');

          await signUpPage.submitSignUp();

          expect(findPhoneFieldError(), findsNothing);
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

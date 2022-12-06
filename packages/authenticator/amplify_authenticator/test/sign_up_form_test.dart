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

const passwordReqConfig = AmplifyConfig(
  auth: AuthConfig(
    plugins: {
      CognitoPluginConfig.pluginKey: CognitoPluginConfig(
        auth: AWSConfigMap({
          'Default': CognitoAuthConfig(
            authenticationFlowType: AuthenticationFlowType.userSrpAuth,
            usernameAttributes: [CognitoUserAttributeKey.email],
            signupAttributes: [CognitoUserAttributeKey.email],
            passwordProtectionSettings: PasswordProtectionSettings(
              passwordPolicyCharacters: [
                PasswordPolicyCharacters.requiresSymbols,
                PasswordPolicyCharacters.requiresUppercase,
              ],
              passwordPolicyMinLength: 16,
            ),
            verificationMechanisms: [CognitoUserAttributeKey.email],
            socialProviders: [],
            mfaConfiguration: MfaConfiguration.off,
            mfaTypes: [MfaType.sms],
          ),
        }),
      ),
    },
  ),
);

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

class CapturingAuthPlugin extends AmplifyAuthCognitoStub {
  String? capturedPhoneNumber;

  @override
  Future<SignUpResult> signUp({
    required String username,
    String? password,
    SignUpOptions? options,
  }) {
    capturedPhoneNumber =
        options?.userAttributes[CognitoUserAttributeKey.phoneNumber];
    return super.signUp(
      username: username,
      password: password,
      options: options,
    );
  }
}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  /// Signs up with [phoneNumber] entered against the [country] dial code and
  /// returns the phone number submitted to Cognito.
  Future<String?> signUpWithPhoneNumber(
    WidgetTester tester, {
    required String phoneNumber,
    String? country,
    String? countryCode,
  }) async {
    final authPlugin = CapturingAuthPlugin();
    await tester.pumpWidget(
      MockAuthenticatorApp(
        initialStep: AuthenticatorStep.signUp,
        authPlugin: authPlugin,
        signUpForm: SignUpForm.custom(
          fields: [
            SignUpFormField.username(),
            SignUpFormField.password(),
            SignUpFormField.passwordConfirmation(),
            SignUpFormField.phoneNumber(required: true),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();

    final signUpPage = SignUpPage(tester: tester);
    if (country != null && countryCode != null) {
      await signUpPage.selectCountryCode(
        countryName: country,
        countryCode: countryCode,
      );
    }
    await signUpPage.enterUsername('test-user@example.com');
    await signUpPage.enterPassword('Password123!@#%^');
    await signUpPage.enterPasswordConfirmation('Password123!@#%^');
    await signUpPage.enterPhoneNumber(phoneNumber);
    await tester.pumpAndSettle();

    await binding.runAsync(signUpPage.submitSignUp);
    await tester.pumpAndSettle();

    return authPlugin.capturedPhoneNumber;
  }

  group('Sign up phone number field', () {
    testWidgets('prefixes the selected dial code', (tester) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Sri Lanka',
        countryCode: '+94',
        phoneNumber: '771234567',
      );
      expect(phoneNumber, '+94771234567');
    });

    testWidgets('keeps a number already in international form', (tester) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Sri Lanka',
        countryCode: '+94',
        phoneNumber: '+94771234567',
      );
      expect(phoneNumber, '+94771234567');
    });

    testWidgets('drops a repeated dial code', (tester) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Sri Lanka',
        countryCode: '+94',
        phoneNumber: '94771234567',
      );
      expect(phoneNumber, '+94771234567');
    });

    testWidgets('drops a trunk prefix', (tester) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Sri Lanka',
        countryCode: '+94',
        phoneNumber: '0771234567',
      );
      expect(phoneNumber, '+94771234567');
    });

    testWidgets('drops a repeated dial code and a trunk prefix', (
      tester,
    ) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Sri Lanka',
        countryCode: '+94',
        phoneNumber: '940771234567',
      );
      expect(phoneNumber, '+94771234567');
    });

    testWidgets('drops a repeated dial code for the default country', (
      tester,
    ) async {
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        phoneNumber: '14155550123',
      );
      expect(phoneNumber, '+14155550123');
    });

    testWidgets('keeps a national number that begins with its dial code', (
      tester,
    ) async {
      // Kazakhstan assigns national numbers beginning with its own dial code
      final phoneNumber = await signUpWithPhoneNumber(
        tester,
        country: 'Kazakhstan',
        countryCode: '+7',
        phoneNumber: '7011234567',
      );
      expect(phoneNumber, '+77011234567');
    });
  });
}

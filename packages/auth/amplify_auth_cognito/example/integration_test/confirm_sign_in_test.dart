// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('confirmSignIn', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        late String username;
        late String password;
        late OtpResult otpResult;

        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          username = generateUsername();
          password = generatePassword();

          otpResult = await getOtpCode(UserAttribute.username(username));

          await adminCreateUser(
            username,
            password,
            enableMfa: true,
            verifyAttributes: true,
          );

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(signInRes.isSignedIn, isFalse);
          expect(
            signInRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithNewPassword,
          );
        });

        asyncTest('confirming signs in user', (_) async {
          final newPassword = generatePassword();

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );

          final otpCode = await otpResult.code;

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: otpCode,
            ),
            completion(
              isA<SignInResult>().having(
                (res) => res.isSignedIn,
                'isSignedIn',
                isTrue,
              ),
            ),
          );
        });

        asyncTest('allows retrying on code mismatch', (_) async {
          final newPassword = generatePassword();

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );

          final otpCode = await otpResult.code;

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: 'incorrect-code',
            ),
            throwsA(isA<CodeMismatchException>()),
          );

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: otpCode,
            ),
            completion(
              isA<SignInResult>().having(
                (res) => res.isSignedIn,
                'isSignedIn',
                isTrue,
              ),
            ),
          );
        });

        asyncTest('allows retrying on weak password', (_) async {
          const weakPassword = 'weak';
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: weakPassword,
            ),
            throwsA(isA<InvalidPasswordException>()),
          );

          final newPassword = generatePassword();
          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );
        });
      });
    }
  });
}

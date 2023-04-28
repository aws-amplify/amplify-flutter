// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  initTests();

  group('resetPassword', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        late String username;
        late String password;

        Future<void> signIn() async {
          final otpResult = await getOtpCode(UserAttribute.username(username));
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          if (signInRes.nextStep.signInStep ==
              AuthSignInStep.confirmSignInWithSmsMfaCode) {
            final confirmSignInRes = await Amplify.Auth.confirmSignIn(
              confirmationValue: await otpResult.code,
            );
            expect(confirmSignInRes.isSignedIn, isTrue);
          } else {
            expect(signInRes.isSignedIn, isTrue);
          }
        }

        setUp(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName]!,
          );

          // create new user for each test
          username = generateUsername();
          password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            enableMfa: true,
          );

          await signIn();
        });

        asyncTest('can reset password', (_) async {
          await signOutUser();

          final otpResult = await getOtpCode(UserAttribute.username(username));
          final resetPasswordRes = await Amplify.Auth.resetPassword(
            username: username,
          );
          expect(resetPasswordRes.isPasswordReset, isFalse);
          expect(
            resetPasswordRes.nextStep.updateStep,
            AuthResetPasswordStep.confirmResetPasswordWithCode,
          );
          expect(
            resetPasswordRes.nextStep.codeDeliveryDetails?.deliveryMedium,
            DeliveryMedium.email,
          );

          password = generatePassword();

          await expectLater(
            Amplify.Auth.confirmResetPassword(
              username: username,
              newPassword: password,
              confirmationCode: await otpResult.code,
            ),
            completes,
          );

          await signIn();
        });
      });
    }
  });
}

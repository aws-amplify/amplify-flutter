// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('resetPassword', () {
    for (final environment in userPoolEnvironments) {
      group(environment.name, () {
        late String username;
        late String password;

        setUp(() async {
          await testRunner.configure(
            environmentName: environment.name,
            useAmplifyOutputs: environment.useAmplifyOutputs,
          );

          // create new user for each test
          username = environment.generateUsername();
          password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            autoFillAttributes: environment.loginMethod.isUsername,
            attributes: environment.getDefaultAttributes(username),
          );

          await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
        });

        asyncTest('can reset password', (_) async {
          await signOutUser();

          final otpResult = await getOtpCode(
            environment.getLoginAttribute(username),
          );
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
            environment.resetPasswordDeliveryMedium,
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

          await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
        });
      });
    }
  });
}

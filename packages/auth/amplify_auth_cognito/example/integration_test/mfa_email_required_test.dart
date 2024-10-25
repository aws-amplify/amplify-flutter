// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('MFA (Email)', () {
    testRunner.withEnvironment(mfaRequiredEmail, (env) {
      asyncTest('can sign in with Email MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(signInRes.nextStep.signInStep)
            .equals(AuthSignInStep.confirmSignInWithOtpCode);

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        Future<void> signInWithEmail() async {
          await signOutUser(assertComplete: true);

          final otpResult = await getOtpCode(
            env.getLoginAttribute(username),
          );

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithOtpCode);
          check(signInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);
          final mfaSetupRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(mfaSetupRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        await signInWithEmail();
        await signInWithEmail();
      });
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('MFA (TOTP)', () {
    testRunner.withEnvironment(MfaEnvironment.mfaRequiredTotp, () {
      asyncTest('can sign in with TOTP MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          verifyAttributes: true,
          autoConfirm: true,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because:
              "TOTP MFA is automatically enabled when it's the only option",
        ).equals(AuthSignInStep.continueSignInWithTotpSetup);

        final sharedSecret = signInRes.nextStep.totpSetupDetails!.sharedSecret;
        final setupRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await generateTotpCode(sharedSecret),
          options: const ConfirmSignInOptions(
            pluginOptions: CognitoConfirmSignInPluginOptions(
              friendlyDeviceName: friendlyDeviceName,
            ),
          ),
        );
        check(setupRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        Future<void> signInWithTotp() async {
          await signOutUser(assertComplete: true);
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'TOTP MFA is performed on every sign-in attempt.',
          ).equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.totp)
            ..has((d) => d.destination, 'destination')
                .equals(friendlyDeviceName);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await generateTotpCode(sharedSecret),
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        await signInWithTotp();
        await signInWithTotp();

        await check(
          because:
              'Interestingly, Cognito does not throw and allows it to be disabled.',
          cognitoPlugin.updateMfaPreference(totp: MfaPreference.disabled),
        ).completes();
      });
    });
  });
}

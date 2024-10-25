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

  group('MFA (EMAIL + TOTP + SMS)', () {
    testRunner.withEnvironment(mfaRequiredUsernameLogin, (env) {
      asyncTest('can set up EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final email = generateEmail();

        final otpResult = await getOtpCode(UserAttribute.email(email));

        // Create a user with no phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          autoFillAttributes: false,
          verifyAttributes: false,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );

        check(
          signInRes.nextStep.signInStep,
          because:
              'When an email is registered and the userpool has email MFA enabled, Cognito will automatically enable email MFA as the preferred MFA method.',
        ).equals(AuthSignInStep.continueSignInWithMfaSetupSelection);

        await Amplify.Auth.confirmSignIn(
          confirmationValue: 'EMAIL',
        );

        await Amplify.Auth.confirmSignIn(
          confirmationValue: email,
        );

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

        await signOutUser(assertComplete: true);

        final otpResult2 = await getOtpCode(UserAttribute.email(email));

        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(resignInRes.nextStep.signInStep)
            .equals(AuthSignInStep.confirmSignInWithOtpCode);
        check(resignInRes.nextStep.codeDeliveryDetails)
            .isNotNull()
            .has((d) => d.deliveryMedium, 'deliveryMedium')
            .equals(DeliveryMedium.email);

        final confirmRes2 = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult2.code,
        );
        check(confirmRes2.nextStep.signInStep).equals(AuthSignInStep.done);
      });

      asyncTest('can setup TOTP MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        // Create a user with an unverified phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          autoFillAttributes: false,
        );

        {
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'MFA is required so users select a method to setup',
          ).equals(AuthSignInStep.continueSignInWithMfaSetupSelection);

          final selectRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: 'TOTP',
          );

          final sharedSecret =
              selectRes.nextStep.totpSetupDetails!.sharedSecret;
          final setupRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await generateTotpCode(sharedSecret),
            options: const ConfirmSignInOptions(
              pluginOptions: CognitoConfirmSignInPluginOptions(
                friendlyDeviceName: friendlyDeviceName,
              ),
            ),
          );

          check(setupRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because:
              'MFA is required so Cognito automatically enables EMAIL MFA, this is expected behavior',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await signOutUser(assertComplete: true);
      });

      asyncTest(
        'Can set up EMAIL and TOTP MFA and then choose a preferred method',
        (_) async {
          final username = env.generateUsername();
          final password = generatePassword();
          final email = generateEmail();

          final otpResult = await getOtpCode(UserAttribute.email(email));

          // Create a user with no phone number.
          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            autoFillAttributes: false,
            verifyAttributes: false,
          );

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );

          check(
            signInRes.nextStep.signInStep,
            because:
                'When both EMAIL and TOTP are enabled but email attribute isnt verified, choose an mfa method to set up.',
          ).equals(AuthSignInStep.continueSignInWithMfaSetupSelection);

          await Amplify.Auth.confirmSignIn(
            confirmationValue: 'EMAIL',
          );

          await Amplify.Auth.confirmSignIn(
            confirmationValue: email,
          );

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

          await signOutUser(assertComplete: true);

          final otpResult2 = await getOtpCode(UserAttribute.email(email));

          final resignInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );

          check(resignInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithOtpCode);
          check(resignInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes2 = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult2.code,
          );
          check(confirmRes2.nextStep.signInStep).equals(AuthSignInStep.done);

          await setUpTotp();

          check(await cognitoPlugin.fetchMfaPreference()).equals(
            const UserMfaPreference(
              enabled: {MfaType.email, MfaType.totp},
              preferred: null,
            ),
          );

          // sign out and sign back in and confirm TOTP
          await signOutUser(assertComplete: true);

          final resignInRes2 = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );

          check(resignInRes2.nextStep.signInStep)
              .equals(AuthSignInStep.continueSignInWithMfaSelection);

          // select totp as the preferred method
          await Amplify.Auth.confirmSignIn(
            confirmationValue: 'TOTP',
          );

          final confirmRes3 = await Amplify.Auth.confirmSignIn(
            confirmationValue: await generateTotpCode(),
          );

          check(confirmRes3.nextStep.signInStep).equals(AuthSignInStep.done);
        },
      );
    });
  });
}

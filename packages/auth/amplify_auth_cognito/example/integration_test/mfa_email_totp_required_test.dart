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

  group('MFA (EMAIL + TOTP)', () {
    testRunner.withEnvironment(mfaRequiredEmailTotp, (env) {
      asyncTest('can set up EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(UserAttribute.email(username));

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
        ).equals(AuthSignInStep.confirmSignInWithOtpCode);

        final setupRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        check(setupRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        await signOutUser(assertComplete: true);

        final otpResult2 = await getOtpCode(UserAttribute.email(username));

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

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult2.code,
        );
        check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
      });

      asyncTest('can select TOTP MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(UserAttribute.email(username));

        // Create a user with an unverified phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
        );

        {
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because:
                'MFA is required so Cognito automatically enables EMAIL MFA',
          ).equals(AuthSignInStep.confirmSignInWithOtpCode);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because:
              'MFA is required so Cognito automatically enables EMAIL MFA, this is expected behavior',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        await setUpTotp();

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        await signOutUser(assertComplete: true);

        {
          final resignInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            resignInRes.nextStep.signInStep,
            because: 'Both EMAIL + TOTP are activated with no preference',
          ).equals(AuthSignInStep.continueSignInWithMfaSelection);
          check(resignInRes.nextStep.allowedMfaTypes)
              .isNotNull()
              .deepEquals({MfaType.email, MfaType.totp});

          final selectRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: 'TOTP',
          );
          check(selectRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
          check(selectRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.totp)
            ..has((d) => d.destination, 'destination')
                .equals(friendlyDeviceName);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await generateTotpCode(),
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set TOTP as preferred and forego selection.

        await cognitoPlugin.updateMfaPreference(
          totp: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Preference is TOTP MFA now',
          ).equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.totp)
            ..has((d) => d.destination, 'destination')
                .equals(friendlyDeviceName);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await generateTotpCode(),
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify we can switch to EMAIL as preferred.

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: MfaType.email,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final otpResult = await getOtpCode(UserAttribute.email(username));

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Preference is EMAIL MFA now',
          ).equals(AuthSignInStep.confirmSignInWithOtpCode);
          check(signInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify marking enabled does not change preference.
        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: MfaType.email,
          ),
        );

        // Verify we can mark neither as preferred
        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.notPreferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should be marked not preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify that we can disable MFA
        {
          await check(
            because: 'Interestingly, Cognito does not throw and allows '
                'MFA to be disabled even when required.',
            cognitoPlugin.updateMfaPreference(
              email: MfaPreference.disabled,
              totp: MfaPreference.disabled,
            ),
          ).completes();

          check(
            because: 'Disabling MFA should mark it as not preferred',
            await cognitoPlugin.fetchMfaPreference(),
          ).equals(
            const UserMfaPreference(
              enabled: {},
              preferred: null,
            ),
          );
        }
      });
    });
  });
}

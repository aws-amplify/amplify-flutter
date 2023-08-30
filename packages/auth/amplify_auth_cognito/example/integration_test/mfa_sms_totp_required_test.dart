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

  group('MFA (SMS + TOTP)', () {
    testRunner.withEnvironment(MfaEnvironment.mfaRequiredSmsTotp, () {
      asyncTest('can set up TOTP MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Create a user with no phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          autoFillAttributes: false,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is required, and TOTP is chosen when '
              'no phone number is registered',
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

        await signOutUser(assertComplete: true);

        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(resignInRes.nextStep.signInStep)
            .equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
        check(resignInRes.nextStep.codeDeliveryDetails).isNotNull()
          ..has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.totp)
          ..has((d) => d.destination, 'destination').equals(friendlyDeviceName);

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await generateTotpCode(sharedSecret),
        );
        check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
      });

      asyncTest('can select TOTP MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        // Create a user with an unverified phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.phoneNumber: phoneNumber,
          },
        );

        {
          final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'MFA is required so Cognito automatically enables SMS MFA',
          ).equals(AuthSignInStep.confirmSignInWithSmsMfaCode);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await mfaCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        await setUpTotp();

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
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
            because: 'Both SMS + TOTP are activated with no preference',
          ).equals(AuthSignInStep.continueSignInWithMfaSelection);
          check(resignInRes.nextStep.allowedMfaTypes)
              .isNotNull()
              .deepEquals({MfaType.sms, MfaType.totp});

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
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set TOTP as preferred and forego selection.

        await cognitoPlugin.updateMfaPreference(
          totp: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
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

        // Verify we can switch to SMS as preferred.

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Preference is SMS MFA now',
          ).equals(AuthSignInStep.confirmSignInWithSmsMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.sms)
            ..has((d) => d.destination, 'destination')
                .isNotNull()
                .startsWith('+');

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await mfaCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify marking enabled does not change preference.
        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'SMS should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        // Verify we can mark neither as preferred
        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.notPreferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'SMS should be marked not preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify that we can disable MFA
        {
          await check(
            because: 'Interestingly, Cognito does not throw and allows '
                'MFA to be disabled even when required.',
            cognitoPlugin.updateMfaPreference(
              sms: MfaPreference.disabled,
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

      asyncTest('can select SMS MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        // Create a user with an unverified phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.phoneNumber: phoneNumber,
          },
        );

        {
          final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'MFA is required so Cognito automatically enables SMS MFA',
          ).equals(AuthSignInStep.confirmSignInWithSmsMfaCode);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await mfaCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        await setUpTotp();

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
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
            because: 'Both SMS + TOTP are activated',
          ).equals(AuthSignInStep.continueSignInWithMfaSelection);
          check(signInRes.nextStep.allowedMfaTypes)
              .isNotNull()
              .unorderedEquals([MfaType.sms, MfaType.totp]);

          final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));
          final selectRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: 'SMS',
          );
          check(selectRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode);
          check(selectRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.sms)
            ..has((d) => d.destination, 'destination')
                .isNotNull()
                .startsWith('+');

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await mfaCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set SMS as preferred and forego selection.

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Preference is SMS MFA now',
          ).equals(AuthSignInStep.confirmSignInWithSmsMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails).isNotNull()
            ..has((d) => d.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.sms)
            ..has((d) => d.destination, 'destination')
                .isNotNull()
                .startsWith('+');

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await mfaCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify we can switch to TOTP as preferred.

        await cognitoPlugin.updateMfaPreference(
          totp: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
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

        // Verify marking enabled does not change preference.
        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'TOTP should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        // Verify we can mark neither as preferred
        await cognitoPlugin.updateMfaPreference(
          totp: MfaPreference.notPreferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'TOTP should be marked not preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify that we can disable MFA
        {
          await check(
            because: 'Interestingly, Cognito does not throw and allows '
                'MFA to be disabled even when required.',
            cognitoPlugin.updateMfaPreference(
              sms: MfaPreference.disabled,
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

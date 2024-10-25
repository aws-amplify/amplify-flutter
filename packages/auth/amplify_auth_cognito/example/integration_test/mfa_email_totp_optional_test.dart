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
    testRunner.withEnvironment(mfaOptionalEmailTotp, (env) {
      asyncTest('can set up TOTP MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        // Create user with no phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          autoFillAttributes: false,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          because: 'MFA is optional',
          signInRes.nextStep.signInStep,
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

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
            because: 'Once TOTP MFA is preferred, it is performed '
                'on every sign-in attempt.',
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

        await signInWithTotp();
        await signInWithTotp();

        await check(
          because: 'TOTP can be disabled when optional',
          cognitoPlugin.updateMfaPreference(totp: MfaPreference.disabled),
        ).completes();

        check(
          because: 'Disabling TOTP should mark it as not preferred',
          await cognitoPlugin.fetchMfaPreference(),
        ).equals(
          const UserMfaPreference(enabled: {}, preferred: null),
        );
      });

      asyncTest('can select TOTP MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

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

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is optional',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.continueSignInWithMfaSelection);
          check(signInRes.nextStep.allowedMfaTypes)
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
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'TOTP should be marked preferred',
        ).equals(
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
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
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

          final otpRes = await getOtpCode(env.getLoginAttribute(username));
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

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpRes.code,
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

        // Verify that we can disable both
        await check(
          because: 'MFA can be disabled when optional',
          cognitoPlugin.updateMfaPreference(
            email: MfaPreference.disabled,
            totp: MfaPreference.disabled,
          ),
        ).completes();

        check(
          because: 'Disabling MFA should mark it as not preferred',
          await cognitoPlugin.fetchMfaPreference(),
        ).equals(
          const UserMfaPreference(enabled: {}, preferred: null),
        );
      });

      asyncTest('can select EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

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

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is optional',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        await signOutUser(assertComplete: true);

        final otpResult = await getOtpCode(UserAttribute.email(username));

        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(resignInRes.nextStep.signInStep)
            .equals(AuthSignInStep.continueSignInWithMfaSelection);
        check(resignInRes.nextStep.allowedMfaTypes)
            .isNotNull()
            .deepEquals({MfaType.email, MfaType.totp});

        final selectRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: 'EMAIL',
        );
        check(selectRes.nextStep.signInStep)
            .equals(AuthSignInStep.confirmSignInWithOtpCode);
        check(selectRes.nextStep.codeDeliveryDetails)
            .isNotNull()
            .has((d) => d.deliveryMedium, 'deliveryMedium')
            .equals(DeliveryMedium.email);

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set EMAIL as preferred and forego selection.

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
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithOtpCode);
          check(signInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify we can switch to TOTP as preferred.

        await cognitoPlugin.updateMfaPreference(
          totp: MfaPreference.preferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'TOTP should be marked preferred',
        ).equals(
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
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
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
          email: MfaPreference.enabled,
          totp: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'TOTP should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.email, MfaType.totp},
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
            enabled: {MfaType.email, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify that we can disable both
        await check(
          because: 'MFA can be disabled when optional',
          cognitoPlugin.updateMfaPreference(
            email: MfaPreference.disabled,
            totp: MfaPreference.disabled,
          ),
        ).completes();

        check(
          because: 'Disabling MFA should mark it as not preferred',
          await cognitoPlugin.fetchMfaPreference(),
        ).equals(
          const UserMfaPreference(enabled: {}, preferred: null),
        );
      });
    });
  });
}

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

  group('MFA (EMAIL + SMS)', () {
    testRunner.withEnvironment(mfaRequiredEmailSms, (env) {
      asyncTest('can set up EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );

        // Create a user with no phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
          autoFillAttributes: false,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is required, and EMAIL is chosen when '
              'no phone number is registered',
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

        // Verify we can sign in with EMAIL MFA as the preferred method and forego selection.

        final otpResult2 = await getOtpCode(
          env.getLoginAttribute(username),
        );

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

      asyncTest('can select EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));

        // Verify we can set EMAIL as preferred and forego selection.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.phoneNumber: phoneNumber,
            AuthUserAttributeKey.email: username,
          },
        );

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

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        await signOutUser(assertComplete: true);

        {
          final otpResult = await getOtpCode(
            env.getLoginAttribute(username),
          );
          final resignInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            resignInRes.nextStep.signInStep,
            because: 'Preference is EMAIL MFA now',
          ).equals(AuthSignInStep.confirmSignInWithOtpCode);
          check(resignInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        // Verify marking enabled does not change preference.
        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.enabled,
          email: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'SMS should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        // Verify that we can disable MFA
        {
          await check(
            because: 'Interestingly, Cognito does not throw and allows '
                'MFA to be disabled even when required.',
            cognitoPlugin.updateMfaPreference(
              sms: MfaPreference.disabled,
              email: MfaPreference.disabled,
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
        final username = env.generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        final mfaCode = await getOtpCode(UserAttribute.phone(phoneNumber));

        // Create a user with an unverified phone number.
        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.phoneNumber: phoneNumber,
            AuthUserAttributeKey.email: username,
          },
        );

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

        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        // Verify we can set SMS as preferred and forego selection.

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

        // Verify we can switch to EMAIL as preferred.

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final otpResult = await getOtpCode(
            env.getLoginAttribute(username),
          );

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
          sms: MfaPreference.enabled,
          email: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        // Verify that we can disable MFA
        {
          await check(
            because: 'Interestingly, Cognito does not throw and allows '
                'MFA to be disabled even when required.',
            cognitoPlugin.updateMfaPreference(
              sms: MfaPreference.disabled,
              email: MfaPreference.disabled,
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

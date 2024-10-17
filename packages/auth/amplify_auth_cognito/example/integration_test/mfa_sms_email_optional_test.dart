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

  group('MFA (SMS + EMAIL)', () {
    testRunner.withEnvironment(mfaOptionalEmailSms, (env) {
      asyncTest('can set up EMAIL MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );

        // Create user with no phone number.
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
          because: 'MFA is optional',
          signInRes.nextStep.signInStep,
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference())
            .equals(const UserMfaPreference());

        final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
        await plugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        Future<void> signInWithEmail() async {
          await signOutUser(assertComplete: true);
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Once Email MFA is preferred, it is performed '
                'on every sign-in attempt.',
          ).equals(AuthSignInStep.confirmSignInWithEmailMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        await signInWithEmail();
        await signInWithEmail();

        await check(
          because: 'EMAIL can be disabled when optional',
          cognitoPlugin.updateMfaPreference(email: MfaPreference.disabled),
        ).completes();

        check(
          because: 'Disabling EMAIL should mark it as not preferred',
          await cognitoPlugin.fetchMfaPreference(),
        ).equals(
          const UserMfaPreference(enabled: {}, preferred: null),
        );
      });

      asyncTest('can select Email MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );

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

        final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
        await plugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.enabled,
          email: MfaPreference.enabled,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
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
              .deepEquals({MfaType.sms, MfaType.email});

          final selectRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: 'EMAIL',
          );
          check(selectRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithEmailMfaCode);
          check(selectRes.nextStep.codeDeliveryDetails)
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
            preferred: null,
          ),
        );

        // Verify we can set EMAIL as preferred and forego selection.

        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithEmailMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails)
              .isNotNull()
              .has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.email);

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await otpResult.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        }

        // Verify we can switch to SMS as preferred.

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
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
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode);
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
          email: MfaPreference.enabled,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'SMS should still be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
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
            enabled: {MfaType.sms, MfaType.email},
            preferred: null,
          ),
        );

        // Verify that we can disable both
        await check(
          because: 'MFA can be disabled when optional',
          cognitoPlugin.updateMfaPreference(
            sms: MfaPreference.disabled,
            email: MfaPreference.disabled,
          ),
        ).completes();

        check(
          because: 'Disabling MFA should mark it as not preferred',
          await cognitoPlugin.fetchMfaPreference(),
        ).equals(
          const UserMfaPreference(enabled: {}, preferred: null),
        );
      });

      asyncTest('can select SMS MFA', (_) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final phoneNumber = generatePhoneNumber();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );

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

        final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
        await plugin.updateMfaPreference(
          email: MfaPreference.preferred,
        );

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.email},
            preferred: MfaType.email,
          ),
        );

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.enabled,
          email: MfaPreference.enabled,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: null,
          ),
        );

        await signOutUser(assertComplete: true);

        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(resignInRes.nextStep.signInStep)
            .equals(AuthSignInStep.continueSignInWithMfaSelection);
        check(resignInRes.nextStep.allowedMfaTypes)
            .isNotNull()
            .deepEquals({MfaType.sms, MfaType.email});

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

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: null,
          ),
        );

        // Verify we can set SMS as preferred and forego selection.

        await cognitoPlugin.updateMfaPreference(
          sms: MfaPreference.preferred,
        );
        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
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
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode);
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
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: MfaType.email,
          ),
        );

        {
          await signOutUser(assertComplete: true);

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithEmailMfaCode);
          check(signInRes.nextStep.codeDeliveryDetails).isNotNull()
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

        // Verify we can mark neither as preferred
        await cognitoPlugin.updateMfaPreference(
          email: MfaPreference.notPreferred,
        );
        check(
          await cognitoPlugin.fetchMfaPreference(),
          because: 'EMAIL should be marked not preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.email},
            preferred: null,
          ),
        );

        // Verify that we can disable both
        await check(
          because: 'MFA can be disabled when optional',
          cognitoPlugin.updateMfaPreference(
            sms: MfaPreference.disabled,
            email: MfaPreference.disabled,
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

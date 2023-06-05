// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/totp_utils.dart';

void main() {
  testRunner.setupTests();

  group('MFA (SMS + TOTP)', () {
    Future<void> signOut() async {
      final signOutRes = await Amplify.Auth.signOut();
      check(signOutRes).isA<CognitoCompleteSignOut>();
    }

    // When MFA is optional and both SMS+TOTP are available, signing in
    // with no phone number or Authenticator added will not prompt for MFA.
    //
    // When TOTP
    testRunner.withEnvironment(MfaEnvironment.mfaOptionalSmsTotp, () {
      asyncTest('can set up TOTP MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();

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
          signInRes.nextStep.signInStep,
          because: 'MFA is optional',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.getMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        Future<void> signInWithTotp() async {
          await signOut();
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

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is optional',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.getMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await cognitoPlugin.setMfaPreference(
          enabled: [MfaType.sms, MfaType.totp],
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        {
          await signOut();

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithMfaSelection);
          check(signInRes.nextStep.allowedMfaTypes)
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

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set TOTP as preferred and forego selection.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.totp,
        );
        check(
          await cognitoPlugin.getMfaPreference(),
          because: 'TOTP should be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        {
          await signOut();

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

        // Verify we can switch to sMS as preferred.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.sms,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOut();

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

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'MFA is optional',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.getMfaPreference())
            .equals(const UserMfaPreference());

        await setUpTotp();

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await cognitoPlugin.setMfaPreference(
          enabled: [MfaType.sms, MfaType.totp],
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        await signOut();

        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(resignInRes.nextStep.signInStep)
            .equals(AuthSignInStep.confirmSignInWithMfaSelection);
        check(resignInRes.nextStep.allowedMfaTypes)
            .isNotNull()
            .deepEquals({MfaType.sms, MfaType.totp});

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

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set SMS as preferred and forego selection.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.sms,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOut();

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

        // Verify we can switch to TOTP as preferred.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.totp,
        );
        check(
          await cognitoPlugin.getMfaPreference(),
          because: 'TOTP should be marked preferred',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        {
          await signOut();

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
      });
    });

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
        ).equals(AuthSignInStep.confirmSignInWithTotpSetup);

        final secretCode = signInRes.nextStep.totpSetupResult!.secretCode;
        final setupRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await generateTotpCode(secretCode),
          options: const ConfirmSignInOptions(
            pluginOptions: CognitoConfirmSignInPluginOptions(
              friendlyDeviceName: friendlyDeviceName,
            ),
          ),
        );
        check(setupRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        await signOut();

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
          confirmationValue: await generateTotpCode(secretCode),
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
          await cognitoPlugin.getMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        await setUpTotp();

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        await signOut();

        {
          final resignInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            resignInRes.nextStep.signInStep,
            because: 'Both SMS + TOTP are activated with no preference',
          ).equals(AuthSignInStep.confirmSignInWithMfaSelection);
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

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set TOTP as preferred and forego selection.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.totp,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        {
          await signOut();

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

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.sms,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOut();

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
          await cognitoPlugin.getMfaPreference(),
          because: 'MFA is required so Cognito automatically enables SMS MFA',
        ).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );

        await setUpTotp();

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        {
          await signOut();
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(
            signInRes.nextStep.signInStep,
            because: 'Both SMS + TOTP are activated',
          ).equals(AuthSignInStep.confirmSignInWithMfaSelection);
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

        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: null,
          ),
        );

        // Verify we can set SMS as preferred and forego selection.

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.sms,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.sms,
          ),
        );

        {
          await signOut();

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

        await cognitoPlugin.setMfaPreference(
          preferred: MfaType.totp,
        );
        check(await cognitoPlugin.getMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms, MfaType.totp},
            preferred: MfaType.totp,
          ),
        );

        {
          await signOut();

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
      });
    });
  });
}

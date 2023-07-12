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

  group('MFA (SMS)', () {
    final smsEnvironments = mfaEnvironments.where((env) => env.sms);
    for (final env in smsEnvironments) {
      testRunner.withEnvironment(env, () {
        asyncTest(
          'can sign in with SMS MFA enabled by administrator',
          (_) async {
            final username = generateUsername();
            final password = generatePassword();

            final otpResult =
                await getOtpCode(UserAttribute.username(username));

            await adminCreateUser(
              username,
              password,
              autoConfirm: true,
              verifyAttributes: true,
              enableMfa: true,
            );

            final signInRes = await Amplify.Auth.signIn(
              username: username,
              password: password,
            );
            check(signInRes.nextStep.signInStep)
                .equals(AuthSignInStep.confirmSignInWithSmsMfaCode);

            final confirmRes = await Amplify.Auth.confirmSignIn(
              confirmationValue: await otpResult.code,
            );
            check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);

            check(await cognitoPlugin.fetchMfaPreference()).equals(
              const UserMfaPreference(
                enabled: {MfaType.sms},
                preferred: MfaType.sms,
              ),
            );
          },
        );

        asyncTest('can resend MFA code', (_) async {
          final username = generateUsername();
          final password = generatePassword();
          final phoneNumber = generatePhoneNumber();

          final otpResult = await getOtpCode(UserAttribute.phone(phoneNumber));

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            enableMfa: true,
            attributes: {
              AuthUserAttributeKey.phoneNumber: phoneNumber,
            },
          );

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          check(signInRes.nextStep.signInStep)
              .equals(AuthSignInStep.confirmSignInWithSmsMfaCode);

          // Drop original code
          final _ = await otpResult.code;

          final newCode = await getOtpCode(UserAttribute.phone(phoneNumber));

          final resendResult = await Amplify.Auth.resendSignInCode();
          check(resendResult.codeDeliveryDetails)
            ..has((details) => details.deliveryMedium, 'deliveryMedium')
                .equals(DeliveryMedium.sms)
            ..has((details) => details.destination, 'destination').isNotNull();

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await newCode.code,
          );
          check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);
        });
      });
    }

    testRunner.withEnvironment(MfaEnvironment.mfaRequiredSms, () {
      asyncTest('must configure MFA when required', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );

        final otpResult = await getOtpCode(UserAttribute.username(username));

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'When MFA is required, it must be configured during '
              'the first sign-in',
        ).equals(AuthSignInStep.confirmSignInWithSmsMfaCode);

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        check(confirmRes.nextStep.signInStep).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference()).equals(
          const UserMfaPreference(
            enabled: {MfaType.sms},
            preferred: MfaType.sms,
          ),
        );
      });
    });

    testRunner.withEnvironment(MfaEnvironment.mfaOptionalSms, () {
      asyncTest('can skip configuring MFA when not required', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          signInRes.nextStep.signInStep,
          because: 'When MFA is not required, it can be skipped during '
              'the first sign-in',
        ).equals(AuthSignInStep.done);

        check(await cognitoPlugin.fetchMfaPreference())
            .equals(const UserMfaPreference());
      });
    });
  });
}

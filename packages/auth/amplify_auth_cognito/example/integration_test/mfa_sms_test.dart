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

        await check(
          because:
              'Interestingly, Cognito does not throw and allows it to be disabled.',
          cognitoPlugin.updateMfaPreference(sms: MfaPreference.disabled),
        ).completes();
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

      asyncTest(
        'fetchMfaPreference returns SMS when enabled outside library',
        (_) async {
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

          await adminEnableSmsMfa(username);

          check(await cognitoPlugin.fetchMfaPreference()).equals(
            const UserMfaPreference(
              enabled: {MfaType.sms},
              preferred: MfaType.sms,
            ),
          );

          await check(
            because: 'SMS can be disabled when optional',
            cognitoPlugin.updateMfaPreference(sms: MfaPreference.disabled),
          ).completes();

          check(
            because: 'Disabling SMS should mark it as not preferred',
            await cognitoPlugin.fetchMfaPreference(),
          ).equals(
            const UserMfaPreference(enabled: {}, preferred: null),
          );
        },
      );
    });
  });
}

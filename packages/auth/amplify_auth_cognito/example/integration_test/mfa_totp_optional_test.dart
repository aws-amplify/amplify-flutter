// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('MFA (TOTP)', () {
    Future<void> runTest({String? friendlyDeviceName}) async {
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
        because: 'MFA is optional',
      ).equals(AuthSignInStep.done);

      await setUpTotp(deviceName: friendlyDeviceName);

      await cognitoPlugin.updateMfaPreference(
        totp: MfaPreference.preferred,
      );
      check(await cognitoPlugin.fetchMfaPreference()).equals(
        const UserMfaPreference(
          enabled: {MfaType.totp},
          preferred: MfaType.totp,
        ),
      );

      Future<void> signInWithTotp() async {
        await signOutUser(assertComplete: true);
        final resignInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        check(
          resignInRes.nextStep.signInStep,
          because: 'Once TOTP MFA is enabled, it is performed '
              'on every sign-in attempt.',
        ).equals(AuthSignInStep.confirmSignInWithTotpMfaCode);
        check(resignInRes.nextStep.codeDeliveryDetails).isNotNull()
          ..has((d) => d.deliveryMedium, 'deliveryMedium')
              .equals(DeliveryMedium.totp)
          ..has((d) => d.destination, 'destination').equals(friendlyDeviceName);

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
    }

    testRunner.withEnvironment(MfaEnvironment.mfaOptionalTotp, () {
      group('can sign in with TOTP MFA', () {
        asyncTest(
          'w/ no device name',
          (_) => runTest(),
        );
        asyncTest(
          'w/ device name',
          (_) => runTest(friendlyDeviceName: friendlyDeviceName),
        );

        asyncTest('verifyTotpSetup allows retries', (_) async {
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
            because: 'TOTP is optional',
            signInRes.nextStep.signInStep,
          ).equals(AuthSignInStep.done);

          final totpSetupResult = await Amplify.Auth.setUpTotp();

          try {
            await Amplify.Auth.verifyTotpSetup('555555');
            fail('Expected to fail');
          } on AuthException catch (e) {
            check(
              e,
              because: 'Invalid TOTP code should fail verification',
            ).isA<CodeMismatchException>();
          }

          check(
            await cognitoPlugin.fetchMfaPreference(),
            because: 'TOTP should not be enabled',
          ).equals(
            const UserMfaPreference(
              enabled: {},
              preferred: null,
            ),
          );

          try {
            await Amplify.Auth.verifyTotpSetup(
              await generateTotpCode(totpSetupResult.sharedSecret),
            );
          } on Exception catch (e) {
            fail('Expected to succeed, but got $e');
          }

          check(await cognitoPlugin.fetchMfaPreference()).equals(
            const UserMfaPreference(
              enabled: {MfaType.totp},
              preferred: MfaType.totp,
            ),
          );
        });
      });
    });
  });
}

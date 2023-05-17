// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group(
    'MFA (SMS)',
    () {
      setUp(() async {
        await testRunner.configure();
      });

      asyncTest('can sign in with SMS MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(UserAttribute.username(username));

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
        expect(
          signInRes.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithSmsMfaCode,
        );

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        expect(confirmRes.nextStep.signInStep, AuthSignInStep.done);
      });
    },
  );
}

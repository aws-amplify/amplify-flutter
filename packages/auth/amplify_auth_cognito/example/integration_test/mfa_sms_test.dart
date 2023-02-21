// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'MFA (SMS)',
    () {
      setUpAll(() async {
        await configureAuth(
          additionalPlugins: [AmplifyAPI()],
        );
      });

      tearDownAll(Amplify.reset);

      setUp(() async {
        await signOutUser();
      });

      asyncTest('can sign in with SMS MFA', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        final otpResult = await getOtpCode(username);

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

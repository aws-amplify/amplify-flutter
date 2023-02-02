// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('resetPassword', () {
    late String username;
    late String password;

    tearDownAll(Amplify.reset);

    Future<void> signIn() async {
      final otpResult = await getOtpCode(username);
      final signInRes = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      if (signInRes.nextStep.signInStep ==
          AuthSignInStep.confirmSignInWithSmsMfaCode) {
        final confirmSignInRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await otpResult.code,
        );
        expect(confirmSignInRes.isSignedIn, isTrue);
      } else {
        expect(signInRes.isSignedIn, isTrue);
      }
    }

    setUp(() async {
      await configureAuth(
        additionalPlugins: [AmplifyAPI()],
      );

      // create new user for each test
      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        enableMfa: true,
      );
      addTearDown(() async {
        await deleteUser(username);
      });

      await signIn();
    });

    test('can reset password', () async {
      await signOutUser();

      final otpResult = await getOtpCode(username);
      final resetPasswordRes = await Amplify.Auth.resetPassword(
        username: username,
      );
      expect(resetPasswordRes.isPasswordReset, isFalse);
      expect(
        resetPasswordRes.nextStep.updateStep,
        AuthResetPasswordStep.confirmResetPasswordWithCode,
      );
      expect(
        resetPasswordRes.nextStep.codeDeliveryDetails?.deliveryMedium,
        DeliveryMedium.email,
      );

      password = generatePassword();

      await expectLater(
        Amplify.Auth.confirmResetPassword(
          username: username,
          newPassword: password,
          confirmationCode: await otpResult.code,
        ),
        completes,
      );

      await signIn();
    });
  });
}

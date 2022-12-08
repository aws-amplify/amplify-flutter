// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
          'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE') {
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
        'CONFIRM_RESET_PASSWORD_WITH_CODE',
      );
      expect(
        resetPasswordRes.nextStep.codeDeliveryDetails?.deliveryMedium,
        'EMAIL',
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

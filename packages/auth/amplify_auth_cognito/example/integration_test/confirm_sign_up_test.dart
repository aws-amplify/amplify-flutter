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

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'confirmSignUp',
    () {
      setUpAll(() async {
        await configureAuth(
          additionalPlugins: [AmplifyAPI()],
        );
      });

      setUp(signOutUser);

      Future<void> signUpWithoutConfirming(
        String username,
        String password,
      ) async {
        final signUpResult = await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(
            userAttributes: {
              CognitoUserAttributeKey.email: generateEmail(),
              CognitoUserAttributeKey.phoneNumber: mockPhoneNumber
            },
          ),
        ) as CognitoSignUpResult;
        expect(signUpResult.isSignUpComplete, false);
        expect(
          signUpResult.nextStep.codeDeliveryDetails?.deliveryMedium,
          'SMS',
        );
        expect(signUpResult.userId, isNotNull);
      }

      asyncTest('can confirm sign up', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        final code = getOtpCode(username);
        await signUpWithoutConfirming(username, password);

        // Confirm sign up and complete sign in
        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await code,
        );
        expect(confirmResult.isSignUpComplete, true);
      });

      asyncTest('can sign up after sign in', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        final code = getOtpCode(username);
        await signUpWithoutConfirming(username, password);

        // Sign in
        final signInResult = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInResult.nextStep?.signInStep, 'CONFIRM_SIGN_UP');

        // Confirm sign up and complete sign in
        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await code,
        );
        expect(confirmResult.isSignUpComplete, true);

        final signInComplete = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInComplete.nextStep?.signInStep, 'DONE');
      });

      asyncTest('can resend sign up code', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        var code = getOtpCode(username);
        await signUpWithoutConfirming(username, password);

        // Throw away code and get next one
        await code;
        code = getOtpCode(username);

        final resendResult = await Amplify.Auth.resendSignUpCode(
          username: username,
        );
        expect(resendResult.codeDeliveryDetails.deliveryMedium, 'SMS');

        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await code,
        );
        expect(confirmResult.isSignUpComplete, true);
      });
    },
    // TODO(equartey): ensure state machine GQL sub impl doesn't have this issue.
    skip: !zIsWeb && Platform.isWindows,
  );
}

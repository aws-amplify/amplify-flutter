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
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  AmplifyLogger().logLevel = LogLevel.debug;

  group(
    'Device Tracking',
    () {
      late String username;
      late String password;

      Future<void> signIn() async {
        await signOutUser();

        username = generateUsername();
        password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
          enableMfa: true,
        );
        addTearDown(() => deleteUser(username));

        final code = getOtpCode(username);
        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          signInRes.nextStep?.signInStep,
          'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE',
        );
        final confirmSignInRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await code,
        );
        expect(confirmSignInRes.isSignedIn, isTrue);
      }

      asyncTest('can bypass MFA when device is always remembered', (_) async {
        await configureAuth(
          config: amplifyEnvironments['device-tracking-always'],
          additionalPlugins: [AmplifyAPI()],
        );
        addTearDown(Amplify.reset);

        await signIn();

        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'Subsequent sign-in attempts should not require MFA',
        );
      });

      asyncTest('cannot bypass MFA when device is not remembered', (_) async {
        await configureAuth(
          config: amplifyEnvironments['device-tracking-opt-in'],
          additionalPlugins: [AmplifyAPI()],
        );
        addTearDown(Amplify.reset);

        await signIn();

        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          res.nextStep?.signInStep,
          'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE',
          reason: 'Subsequent sign-in attempts should require MFA',
        );
      });

      asyncTest('can bypass MFA when device is remembered', (_) async {
        await configureAuth(
          config: amplifyEnvironments['device-tracking-opt-in'],
          additionalPlugins: [AmplifyAPI()],
        );
        addTearDown(Amplify.reset);

        await signIn();

        await Amplify.Auth.rememberDevice();

        await signOutUser();

        final res = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'Subsequent sign-in attempts should not require MFA',
        );
      });
    },
    // TODO(dnys1): Remove when API is dartified
    skip: zIsWeb || !(Platform.isAndroid || Platform.isIOS),
  );
}

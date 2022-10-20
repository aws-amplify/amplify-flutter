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

        final code = getOtpCode(username);

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
          signInRes.nextStep?.signInStep,
          'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE',
        );

        final confirmRes = await Amplify.Auth.confirmSignIn(
          confirmationValue: await code,
        );
        expect(confirmRes.nextStep?.signInStep, 'DONE');
      });
    },
    // TODO(dnys1): Remove when API is dartified
    skip: zIsWeb || !(Platform.isAndroid || Platform.isIOS),
  );
}

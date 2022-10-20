/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';
import 'utils/validation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  AmplifyLogger().logLevel = LogLevel.verbose;

  group(
    'getCurrentUser',
    () {
      group('with alias', () {
        const username = mockPhoneNumber;
        final password = generatePassword();

        setUpAll(() async {
          await configureAuth(
            additionalPlugins: [AmplifyAPI()],
            config: amplifyEnvironments['sign-in-with-phone'],
          );
        });

        tearDownAll(Amplify.reset);

        setUp(() async {
          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            enableMfa: true,
            attributes: const [
              AuthUserAttribute(
                userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                value: mockPhoneNumber,
              ),
            ],
          );
          addTearDown(() => deleteUser(username));

          final code = getOtpCodes().first;
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
        });

        asyncTest('should return the current user', (_) async {
          final authUser = await Amplify.Auth.getCurrentUser();
          expect(
            authUser.username,
            isNot(username),
            reason: 'Cognito should assign an alias username',
          );
          expect(isValidUserSub(authUser.userId), isTrue);
          expect(
            authUser.signInDetails,
            isA<CognitoSignInDetailsApiBased>().having(
              (details) => details.username,
              'username',
              mockPhoneNumber,
            ),
            reason: 'Should return the phone number alias since it '
                'was used to sign in',
          );
        });
      });
    },
    // TODO(dnys1): Remove when API is dartified
    skip: zIsWeb || !(Platform.isIOS || Platform.isAndroid),
  );
}

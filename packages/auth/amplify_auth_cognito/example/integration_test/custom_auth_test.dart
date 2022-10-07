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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late String username;
  late String password;
  CognitoSignInOptions options = const CognitoSignInOptions(
      authFlowType: AuthenticationFlowType.customAuth);
  group(
    'custom auth passwordless signIn',
    () {
      setUpAll(() async {
        await configureAuth();
        // create new user for each test
        username = generateUsername();
        password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );
      });

      setUp(() async {
        await signOutUser();
      });

      tearDownAll(Amplify.reset);

      test(
        'signIn should return data from the auth challenge lambda '
        '(passwordless)',
        () async {
          final res = await Amplify.Auth.signIn(
            username: username,
            options: options,
          );
          expect(
            res.isSignedIn,
            false,
          );
          // additionalInfo key values defined in lambda code
          expect(
            res.nextStep!.additionalInfo?['test-key'],
            'test-value',
          );
          expect(
            res.nextStep!.additionalInfo?['USERNAME'],
            isNotNull,
          );
          expect(
            res.nextStep!.additionalInfo?.length,
            2,
          );
          expect(
            res.nextStep?.signInStep,
            'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE',
          );
        },
      );

      test(
        'a correct challenge reply should sign in the user in',
        () async {
          await Amplify.Auth.signIn(
            username: username,
            options: options,
          );
          // '123' is the arbitrary challenge answer defined in lambda code
          final res = await Amplify.Auth.confirmSignIn(
            confirmationValue: '123',
          );
          expect(
            res.isSignedIn,
            true,
          );
        },
      );

      test(
        'an incorrect challenge reply should throw a NotAuthorizedException',
        () async {
          await Amplify.Auth.signIn(
            username: username,
            options: options,
          );
          // '123' is the arbitrary challenge answer defined in lambda code
          expect(
            Amplify.Auth.confirmSignIn(confirmationValue: 'wrong'),
            throwsA(
              isA<NotAuthorizedException>(),
            ),
          );
        },
      );

      test(
        'if a password is provided but is incorrect, throw '
        'NotAuthorizedException',
        () async {
          // '123' is the arbitrary challenge answer defined in lambda code
          expect(
            Amplify.Auth.signIn(
              username: username,
              password: 'wrong',
              options: options,
            ),
            throwsA(
              isA<NotAuthorizedException>(),
            ),
          );
        },
      );

      test(
        'a correct password and correct challenge reply should sign in '
        'the user',
        () async {
          await Amplify.Auth.signIn(
            username: username,
            password: password,
            options: options,
          );
          // '123' is the arbitrary challenge answer defined in lambda code
          final res = await Amplify.Auth.confirmSignIn(
            confirmationValue: '123',
          );
          expect(
            res.isSignedIn,
            true,
          );
        },
      );

      test(
        'signIn should return data from the auth challenge lambda '
        '(with password)',
        () async {
          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
            options: options,
          );
          expect(
            res.isSignedIn,
            false,
          );
          // additionalInfo key values defined in lambda code
          expect(
            res.nextStep!.additionalInfo?['test-key'],
            'test-value',
          );
          expect(
            res.nextStep!.additionalInfo?.length,
            1,
          );
          expect(
            res.nextStep?.signInStep,
            'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE',
          );
        },
      );
    },
  );
}

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
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('updatePassword', () {
    late String username;
    late String password;

    setUpAll(() async {
      await configureAuth();
    });

    tearDownAll(Amplify.reset);

    setUp(() async {
      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();

      // Sign in with current password
      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.isSignedIn, isTrue);
    });

    asyncTest("should update a user's password", (_) async {
      // change password
      final newPassword = generatePassword();
      await Amplify.Auth.updatePassword(
        oldPassword: password,
        newPassword: newPassword,
      );

      // sign out and sign in with new password
      await Amplify.Auth.signOut();
      final res = await Amplify.Auth.signIn(
        username: username,
        password: newPassword,
      );
      expect(res.isSignedIn, isTrue);
    });

    asyncTest(
      'should throw a NotAuthorizedException for an incorrect '
      'current password',
      (_) async {
        final incorrectPassword = generatePassword();
        final newPassword = generatePassword();
        await expectLater(
          Amplify.Auth.updatePassword(
            oldPassword: incorrectPassword,
            newPassword: newPassword,
          ),
          throwsA(isA<NotAuthorizedException>()),
        );
      },
    );

    asyncTest(
      'should throw an InvalidPasswordException for a new password that '
      "doesn't meet password requirements",
      (_) async {
        const invalidPassword = '123';
        await expectLater(
          Amplify.Auth.updatePassword(
            oldPassword: password,
            newPassword: invalidPassword,
          ),
          throwsA(isA<InvalidPasswordException>()),
        );
      },
    );
  });
}

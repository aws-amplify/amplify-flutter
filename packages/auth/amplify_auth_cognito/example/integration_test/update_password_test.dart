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

  group('updatePassword', () {
    setUpAll(() async {
      await configureAuth();
    });

    tearDownAll(Amplify.reset);

    setUp(() async {
      // create new user for each test
      username = generateUsername();
      password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
      // sign in with current password
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    });

    test('should update a user\'s password', () async {
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
      expect(res.isSignedIn, true);
    });

    test(
        'should throw a NotAuthorizedException for an incorrect current password',
        () async {
      // attempt to change password using an incorrect password
      final incorrectPassword = generatePassword();
      final newPassword = generatePassword();
      expect(
        Amplify.Auth.updatePassword(
          oldPassword: incorrectPassword,
          newPassword: newPassword,
        ),
        throwsA(isA<NotAuthorizedException>()),
      );
    });

    test(
        'should throw an InvalidPasswordException for a new password that doesn\'t meet password requirements',
        () async {
      // attempt to change password to an invalid password
      const invalidPassword = '123';
      expect(
        Amplify.Auth.updatePassword(
          oldPassword: password,
          newPassword: invalidPassword,
        ),
        throwsA(isA<InvalidPasswordException>()),
      );
    });
  });
}

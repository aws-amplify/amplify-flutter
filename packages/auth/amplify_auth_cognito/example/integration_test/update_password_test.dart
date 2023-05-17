// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('updatePassword', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        late String username;
        late String password;

        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

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
              throwsA(isA<AuthNotAuthorizedException>()),
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
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('updatePassword', () {
    for (final environmentName in [
      'main',
      'user-pool-only',
      'with-client-secret'
    ]) {
      group(environmentName, () {
        late String username;
        late String password;

        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName]!,
          );
        });

        setUp(() async {
          username = generateUsername();
          password = generatePassword();

          final cognitoUsername = await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );
          addTearDown(() => deleteUser(cognitoUsername));

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

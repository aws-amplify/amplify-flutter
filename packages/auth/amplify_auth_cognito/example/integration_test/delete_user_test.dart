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

  group('deleteUser', () {
    for (final environment in userPoolEnvironments) {
      group(environment.name, () {
        setUp(() async {
          await testRunner.configure(
            environmentName: environment.name,
            useAmplifyOutputs: environment.useAmplifyOutputs,
          );
        });

        asyncTest('should delete a confirmed user', (_) async {
          final username = environment.generateUsername();
          final password = generatePassword();

          // Create a confirmed user
          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            autoFillAttributes: environment.loginMethod.isUsername,
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(res.isSignedIn, true);

          await Amplify.Auth.deleteUser();

          final expectedException = environment.preventUserExistenceErrors
              ? isA<AuthNotAuthorizedException>()
              : isA<UserNotFoundException>();

          await expectLater(
            Amplify.Auth.signIn(
              username: username,
              password: password,
            ),
            throwsA(expectedException),
            reason: 'Subsequent signIn calls should fail',
          );
        });

        asyncTest(
          'fetchAuthSession should show signed out after user deletion',
          (_) async {
            final username = environment.generateUsername();
            final password = generatePassword();

            await adminCreateUser(
              username,
              password,
              autoConfirm: true,
              verifyAttributes: true,
              autoFillAttributes: environment.loginMethod.isUsername,
            );

            final res = await Amplify.Auth.signIn(
              username: username,
              password: password,
            );
            expect(res.isSignedIn, true);

            await Amplify.Auth.deleteUser();

            final session = await Amplify.Auth.fetchAuthSession();
            expect(
              session.isSignedIn,
              isFalse,
              reason: 'deleteUser should sign out user',
            );
          },
        );
      });
    }
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
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

  group('deleteUser', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    asyncTest('should delete a confirmed user', (_) async {
      final username = generateUsername();
      final password = generatePassword();

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.isSignedIn, true);

      await Amplify.Auth.deleteUser();

      await expectLater(
        Amplify.Auth.signIn(
          username: username,
          password: password,
        ),
        throwsA(isA<UserNotFoundException>()),
        reason: 'Subsequent signIn calls should fail',
      );
    });

    asyncTest(
      'fetchAuthSession should show signed out after user deletion',
      (_) async {
        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
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

/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  group('deleteUser', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    test('should delete a confirmed user', () async {
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

      expect(
        Amplify.Auth.signIn(
          username: username,
          password: password,
        ),
        throwsA(isA<UserNotFoundException>()),
        reason: 'Subsequent signIn calls should fail',
      );
    });

    test(
      'fetchAuthSession should show signed out after user deletion',
      () async {
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

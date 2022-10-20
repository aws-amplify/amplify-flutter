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
import 'utils/validation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('getCurrentUser', () {
    group('no alias', () {
      final username = generateUsername();
      final password = generatePassword();

      setUpAll(() async {
        await configureAuth();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );
      });

      tearDownAll(Amplify.reset);

      setUp(() async {
        await signOutUser();
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
      });

      asyncTest('should return the current user', (_) async {
        final authUser = await Amplify.Auth.getCurrentUser();
        expect(authUser.username, username);
        expect(isValidUserSub(authUser.userId), isTrue);
        expect(
          authUser.signInDetails,
          isA<CognitoSignInDetailsApiBased>().having(
            (details) => details.username,
            'username',
            authUser.username,
          ),
          reason: 'Should return the same username as AuthUser.username',
        );
      });

      asyncTest(
        'should throw SignedOutException if the user is signed out',
        (_) async {
          await Amplify.Auth.signOut();
          await expectLater(
            Amplify.Auth.getCurrentUser(),
            throwsA(isA<SignedOutException>()),
          );
        },
      );
    });
  });
}

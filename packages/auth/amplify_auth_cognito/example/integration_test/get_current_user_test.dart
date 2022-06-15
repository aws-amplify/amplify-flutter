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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/validation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();

  group('getCurrentUser', () {
    setUpAll(() async {
      await configureAuth();

      // create one user for all tests
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
    });

    // sign in prior to each test
    setUp(() async {
      await signOutUser();
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    });

    testWidgets('should return the current user', (WidgetTester tester) async {
      var authUser = await Amplify.Auth.getCurrentUser();
      // usernames need to be compared case insensitive due to
      // https://github.com/aws-amplify/amplify-flutter/issues/723
      expect(authUser.username.toLowerCase(), username.toLowerCase());
      expect(isValidUserSub(authUser.userId), isTrue);
    });

    testWidgets('should throw SignedOutException if the user is signed out',
        (WidgetTester tester) async {
      await Amplify.Auth.signOut();
      expect(
        Amplify.Auth.getCurrentUser(),
        throwsA(isA<SignedOutException>()),
      );
    });
  });
}

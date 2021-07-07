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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:uuid/uuid.dart';

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';

final uuid = Uuid();

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // TODO, use the same temp user for all autht ests
  final username = 'TEMP_USER-${uuid.v4()}';
  final password = uuid.v4();

  group('user accessors', () {
    setUpAll(() async {
      if (!Amplify.isConfigured) {
        final authPlugin = AmplifyAuthCognito();
        await Amplify.addPlugins([authPlugin]);
        await Amplify.configure(amplifyconfig);
      }

      // ensure no user is currently signed in
      try {
        await Amplify.Auth.signOut();
        // ignore: unused_catch_clause
      } on AuthException catch (e) {
        // Ignore a signOut error because we only care when someone signed in.
      }

      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            'email': 'test-amplify-flutter-${uuid.v4()}@test${uuid.v4()}.com',
            'phone_number': '+15555551234'
          }));
      await Amplify.Auth.signIn(username: username, password: password);
    });

    testWidgets('getCurrentUser returns username', (WidgetTester tester) async {
      var res = await Amplify.Auth.getCurrentUser();
      expect(res.username, username);
    });

    // TODO: add other tests for fetchAuthSession, fetchUserAttributes
  });
}

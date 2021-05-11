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

import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const username = String.fromEnvironment('TEST_COGNITO_USERNAME');
  const password = String.fromEnvironment('TEST_COGNITO_PASSWORD');

  group('signIn and signOut', () {
    setUpAll(() async {
      if (!Amplify.isConfigured) {
        final authPlugin = AmplifyAuthCognito();
        await Amplify.addPlugins([authPlugin]);
        await Amplify.configure(amplifyconfig);
      }
    });

    testWidgets('should signIn a user', (WidgetTester tester) async {
      final res =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(res.isSignedIn, true);
    });

    testWidgets('should signOut', (WidgetTester tester) async {
      await Amplify.Auth.signOut();
      final res = await Amplify.Auth.fetchAuthSession();
      expect(res.isSignedIn, false);
    });
  });
}

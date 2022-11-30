// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

  Future<Map<String, Object?>> getCustomAttributes({
    bool forceRefresh = false,
  }) async {
    final session = await Amplify.Auth.fetchAuthSession(
      options: CognitoSessionOptions(forceRefresh: forceRefresh),
    ) as CognitoAuthSession;
    final idToken = session.userPoolTokens?.idToken;
    expect(idToken, isNotNull, reason: 'User is logged in');

    return idToken!.claims.customClaims;
  }

  group('Force refresh', () {
    setUpAll(configureAuth);

    tearDownAll(Amplify.reset);

    asyncTest('', (_) async {
      final username = generateUsername();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      addTearDown(Amplify.Auth.deleteUser);

      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.nextStep?.signInStep, 'DONE');

      expect(
        await getCustomAttributes(),
        isNot(contains('address')),
        reason: 'No custom attrs exist yet',
      );

      await Amplify.Auth.updateUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.address,
        value: '1 Main St',
      );

      expect(
        await getCustomAttributes(),
        isNot(contains('address')),
        reason: 'Token is not yet updated',
      );

      expect(
        await getCustomAttributes(forceRefresh: true),
        contains('address'),
        reason: 'Token is updated via force refresh',
      );
    });
  });
}

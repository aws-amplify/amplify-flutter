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

  group('fetchAuthSession', () {
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
      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.isSignedIn, isTrue);
    });

    asyncTest(
      'should return user credentials if getAWSCredentials is true',
      (_) async {
        final res = await Amplify.Auth.fetchAuthSession(
          options: const CognitoSessionOptions(getAWSCredentials: true),
        ) as CognitoAuthSession;

        expect(res.isSignedIn, isTrue);
        expect(isValidUserSub(res.userSub), isTrue);
        expect(isValidIdentityId(res.identityId), isTrue);
        expect(isValidAWSCredentials(res.credentials), isTrue);
        expect(isValidAWSCognitoUserPoolTokens(res.userPoolTokens), isTrue);
      },
    );

    asyncTest(
      'should return user credentials without getAWSCredentials',
      (_) async {
        final res = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;

        expect(res.isSignedIn, isTrue);
        expect(isValidUserSub(res.userSub), isTrue);
        expect(isValidIdentityId(res.identityId), isTrue);
        expect(isValidAWSCredentials(res.credentials), isTrue);
        expect(isValidAWSCognitoUserPoolTokens(res.userPoolTokens), isTrue);
      },
    );

    asyncTest(
      'should return isSignedIn as false if the user is signed out',
      (_) async {
        await Amplify.Auth.signOut();

        final res = await Amplify.Auth.fetchAuthSession();
        expect(res.isSignedIn, isFalse);
      },
    );
  });
}

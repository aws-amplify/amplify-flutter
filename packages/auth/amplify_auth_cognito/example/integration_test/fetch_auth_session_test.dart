// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';
import 'utils/validation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('fetchAuthSession', () {
    final username = generateUsername();
    final password = generatePassword();

    group('unauthenticated access enabled', () {
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
        'should return user credentials',
        (_) async {
          final res =
              await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
          expect(res.isSignedIn, isTrue);
          expect(isValidUserSub(res.userSubResult.value), isTrue);
          expect(isValidIdentityId(res.identityIdResult.value), isTrue);
          expect(isValidAWSCredentials(res.credentialsResult.value), isTrue);
          expect(
            isValidAWSCognitoUserPoolTokens(res.userPoolTokensResult.value),
            isTrue,
          );
        },
      );

      group('user is signed out', () {
        asyncTest(
          'should return isSignedIn as false with credentials present',
          (_) async {
            await Amplify.Auth.signOut();
            final res =
                await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
            expect(res.isSignedIn, isFalse);
            expect(
              () => res.userPoolTokensResult.value,
              throwsA(isA<SignedOutException>()),
            );
            expect(
              () => res.userSubResult.value,
              throwsA(isA<SignedOutException>()),
            );
            expect(isValidIdentityId(res.identityIdResult.value), isTrue);
            expect(isValidAWSCredentials(res.credentialsResult.value), isTrue);
          },
        );
      });
    });

    // TODO(Jordan-Nelson): add tests for unauthenticated access NOT enabled
    // and user pool only.
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
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

    group(
      'with alias',
      () {
        late String username;
        late String password;

        setUpAll(() async {
          await configureAuth(
            additionalPlugins: [AmplifyAPI()],
            config: amplifyEnvironments['sign-in-with-phone'],
          );
        });

        tearDownAll(Amplify.reset);

        setUp(() async {
          username = generatePhoneNumber();
          password = generatePassword();
          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            enableMfa: true,
            attributes: [
              AuthUserAttribute(
                userAttributeKey: CognitoUserAttributeKey.phoneNumber,
                value: username,
              ),
            ],
          );
          addTearDown(() => deleteUser(username));

          final code = getOtpCodes().first;
          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(
            signInRes.nextStep.signInStep,
            'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE',
          );
          final confirmSignInRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: await code,
          );
          expect(confirmSignInRes.isSignedIn, isTrue);
        });

        asyncTest('should return the current user', (_) async {
          final authUser = await Amplify.Auth.getCurrentUser();
          expect(
            authUser.username,
            isNot(username),
            reason: 'Cognito should assign an alias username',
          );
          expect(isValidUserSub(authUser.userId), isTrue);
          expect(
            authUser.signInDetails,
            isA<CognitoSignInDetailsApiBased>().having(
              (details) => details.username,
              'username',
              username,
            ),
            reason: 'Should return the phone number alias since it '
                'was used to sign in',
          );
        });
      },
    );
  });
}

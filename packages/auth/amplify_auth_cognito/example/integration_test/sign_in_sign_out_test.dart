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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('signIn', () {
    late String username;
    late String password;

    tearDownAll(Amplify.reset);

    setUp(() async {
      await configureAuth();

      // create new user for each test
      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
    });

    test('should signIn a user', () async {
      final res =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(res.isSignedIn, true);
    });

    test('should throw a NotAuthorizedException with an incorrect password',
        () async {
      final incorrectPassword = generatePassword();
      expect(
        Amplify.Auth.signIn(
          username: username,
          password: incorrectPassword,
        ),
        throwsA(isA<NotAuthorizedException>()),
      );
    });

    test(
      'should throw an InvalidParameterException if a password is not provided '
      'and Custom Auth is not configured without SRP',
      () async {
        expect(
          Amplify.Auth.signIn(username: username),
          throwsA(isA<InvalidParameterException>()),
        );
      },
    );

    test('should throw a UserNotFoundException with a non-existent user',
        () async {
      final incorrectUsername = generateUsername();
      expect(
        Amplify.Auth.signIn(username: incorrectUsername, password: password),
        throwsA(isA<UserNotFoundException>()),
      );
    });

    test('additionalInfo should be null', () async {
      final result =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(result.nextStep?.additionalInfo, isNull);
    });

    test('unauthenticated identity ID should persist', () async {
      // Get unauthenticated identity
      final unauthSession = await Amplify.Auth.fetchAuthSession(
        options: const CognitoSessionOptions(getAWSCredentials: true),
      ) as CognitoAuthSession;

      // Sign in
      final signInRes = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(signInRes.nextStep?.signInStep, 'DONE');

      // Get authenticated identity
      final authSession = await Amplify.Auth.fetchAuthSession(
        options: const CognitoSessionOptions(getAWSCredentials: true),
      ) as CognitoAuthSession;
      expect(authSession.identityId, unauthSession.identityId);
      expect(authSession.credentials, isNot(unauthSession.credentials));
    });
  });

  group('signOut', () {
    setUp(() async {
      await configureAuth();
      await signOutUser();
    });

    test('should sign a user out', () async {
      final username = generateUsername();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Ensure signed in before testing signOut.
      await Amplify.Auth.signIn(username: username, password: password);
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isTrue);

      // assert user is signed out after calling signOut
      await Amplify.Auth.signOut();
      final finalAuthSession = await Amplify.Auth.fetchAuthSession();
      expect(finalAuthSession.isSignedIn, isFalse);
    });

    test('should not throw even if there is no user to sign out', () async {
      // ensure that no user is currently logged in
      final authSession = await Amplify.Auth.fetchAuthSession();
      expect(authSession.isSignedIn, isFalse);

      // call signOut without an expectation for an exception
      await Amplify.Auth.signOut();
    });
  });
}

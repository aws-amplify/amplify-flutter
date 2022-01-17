/*
<<<<<<< HEAD
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
=======
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
>>>>>>> handles android; hub; integ tests
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
import 'dart:io' show Platform;
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_test/amplify_test.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

<<<<<<< HEAD
<<<<<<< HEAD
  group('deleteUser (iOS)', () {
    setUpAll(() async {
      await configureAuth(additionalPlugins: [
=======
  group('deleteUser', () {
=======
  group('deleteUser (iOS)', () {
>>>>>>> PR suggestions + integ test to verify signout
    setUpAll(() async {
      await configureAuth(additionalConfigs: [
>>>>>>> handles android; hub; integ tests
        AmplifyAPI(),
      ]);
      await signOutUser();
    });

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> PR suggestions + integ test to verify signout
    testWidgets('should delete a confirmed user on iOS',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();
<<<<<<< HEAD

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect subsequent sign in to fail
      try {
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
      } catch (e) {
        expect(e, TypeMatcher<UserNotFoundException>());
        return;
      }
      fail('Expected UserNotFoundException');
    });

    testWidgets(
        'fetchAuthSession should throw SignedOutException after user deletion',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect fetchAuthSession to throw a SignedOutException (the tokens have been cleared)
      try {
        await Amplify.Auth.fetchAuthSession(
            options: CognitoSessionOptions(getAWSCredentials: true));
      } catch (e) {
        expect(e, TypeMatcher<SignedOutException>());
        return;
      }
      fail('Expected SignedOutException');
    });
  }, skip: !Platform.isIOS);

  group('deleteUser (Android)', () {
    testWidgets('should throw an UnimplementedError on Android',
        (WidgetTester tester) async {
      try {
        await Amplify.Auth.deleteUser();
      } catch (e) {
        expect(e, TypeMatcher<UnimplementedError>());
        return;
      }
      fail('Expected UnimplementedError');
    });
  }, skip: !Platform.isAndroid);
=======
    if (Platform.isIOS) {
      testWidgets('should delete a confirmed user on iOS',
          (WidgetTester tester) async {
        final username = generateUsername();
        final password = generatePassword();
=======
>>>>>>> PR suggestions + integ test to verify signout

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect subsequent sign in to fail
      try {
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
      } catch (e) {
        expect(e, TypeMatcher<UserNotFoundException>());
        return;
      }
      fail('Expected UserNotFoundException');
    });

    testWidgets(
        'fetchAuthSession should throw SignedOutException after user deletion',
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();

      // Create a confirmed user
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      // Sign the user in
      SignInResult preDeleteSignIn = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(preDeleteSignIn.isSignedIn, true);

<<<<<<< HEAD
    if (Platform.isAndroid) {
      testWidgets('should throw an UnimplementedError on Android',
          (WidgetTester tester) async {
        try {
          await Amplify.Auth.deleteUser();
        } catch (e) {
          expect(e, TypeMatcher<UnimplementedError>());
          return;
        }
        fail('Expected UnimplementedError');
      });
    }
  });
>>>>>>> handles android; hub; integ tests
=======
      // Delete the user
      await Amplify.Auth.deleteUser();

      // Expect fetchAuthSession to throw a SignedOutException (the tokens have been cleared)
      try {
        await Amplify.Auth.fetchAuthSession(
            options: CognitoSessionOptions(getAWSCredentials: true));
      } catch (e) {
        expect(e, TypeMatcher<SignedOutException>());
        return;
      }
      fail('Expected SignedOutException');
    });
  }, skip: !Platform.isIOS);

  group('deleteUser (Android)', () {
    testWidgets('should throw an UnimplementedError on Android',
        (WidgetTester tester) async {
      try {
        await Amplify.Auth.deleteUser();
      } catch (e) {
        expect(e, TypeMatcher<UnimplementedError>());
        return;
      }
      fail('Expected UnimplementedError');
    });
  }, skip: !Platform.isAndroid);
>>>>>>> PR suggestions + integ test to verify signout
}

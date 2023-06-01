// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign out', () {
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-username',
      );
    });

    // Scenario: Sign out with Auth.signOut()
    testWidgets('Sign out with Auth.signOut()', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);

      // When I sign in with "username" and "password"
      await signInPage.signIn(username: username, password: password);

      /// Then I see the authenticated app
      await signInPage.expectAuthenticated();

      // When I sign out using Auth.signOut()
      await Amplify.Auth.signOut();
      await tester.pumpAndSettle();

      // Then I see "Sign in"
      signInPage.expectStep(AuthenticatorStep.signIn);

      await tester.bloc.close();
    });
  });
}

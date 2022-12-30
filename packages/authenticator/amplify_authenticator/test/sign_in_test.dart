// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  /// Tests an end to end "happy path" flow for sign in with email, with the
  /// auth library stubbed.
  testWidgets(
    'Signs in an existing user with an email & password',
    (tester) async {
      final testUser = MockCognitoUser(
        username: 'test-user@example.com',
        email: 'test-user@example.com',
        password: 'test-user@example.com',
      );

      await tester.pumpWidget(
        MockAuthenticatorApp(
          authPlugin: AmplifyAuthCognitoStub(users: [testUser]),
        ),
      );
      await tester.pumpAndSettle();

      final signInPage = SignInPage(tester: tester);

      // When I type my "email"
      await signInPage.enterUsername(testUser.email!);

      // And I type my password
      await signInPage.enterPassword(testUser.password);

      // And I click the "Sign In" button
      await binding.runAsync(signInPage.submitSignIn);

      // Then I see "Sign out"
      await binding.runAsync(signInPage.expectAuthenticated);
    },
  );
}

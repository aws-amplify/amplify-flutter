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

      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);

      // When I type my "email"
      await signInPage.enterUsername(testUser.email!);

      // And I type my password
      await signInPage.enterPassword(testUser.password);

      // And I click the "Sign In" button
      await binding.runAsync(signInPage.submitSignIn);

      // Then I see "Sign out"
      await binding.runAsync(confirmSignUpPage.expectAuthenticated);
    },
  );
}

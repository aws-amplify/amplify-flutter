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

import 'util/configs/email_config.dart';

void main() {
  LiveTestWidgetsFlutterBinding();

  testWidgets(
    'Create a new user with an email & password, and confirm the account',
    (tester) async {
      await tester.pumpWidget(
        const MockAuthenticatorApp(config: emailConfig),
      );
      await tester.pumpAndSettle();

      final signUpPage = SignUpPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
      final signInPage = SignInPage(tester: tester);

      const email = 'test-user@example.com';
      const password = 'Password123';

      await signInPage.navigateToSignUp();

      // When I type a new "email"
      await signUpPage.enterUsername(email);

      // And I type my password
      await signUpPage.enterPassword(password);

      // And I confirm my password
      await signUpPage.enterPasswordConfirmation(password);

      // And I click the "Create Account" button
      await signUpPage.submitSignUp();

      // And I see "Confirmation Code"
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      // And I type a valid confirmation code
      await confirmSignUpPage.enterCode(
        AmplifyAuthCognitoStub.verificationCode,
      );

      // And I click the "Confirm" button
      await confirmSignUpPage.submitConfirmSignUp();

      // Then I see "Sign out"
      await confirmSignUpPage.expectAuthenticated();
    },
  );
}

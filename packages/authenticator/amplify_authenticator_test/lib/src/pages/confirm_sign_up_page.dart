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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator_test/src/pages/authenticator_page.dart';
import 'package:flutter_test/flutter_test.dart';

/// Confirm Sign Up Page Object
class ConfirmSignUpPage extends AuthenticatorPage {
  ConfirmSignUpPage({required super.tester});

  @override
  Finder get usernameField => find.byKey(keyUsernameConfirmSignUpFormField);
  Finder get confirmationCodeField => find.byKey(keyCodeConfirmSignUpFormField);
  Finder get confirmSignUpButton => find.byKey(keyConfirmSignUpButton);

  /// Then I see "Confirm Sign Up"
  Future<void> expectConfirmSignUpIsPresent() async {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.step, equals(AuthenticatorStep.confirmSignUp));
  }

  /// Then I see "Confirmation Code"
  void expectConfirmationCodeIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }

  /// When I type my code
  Future<void> enterCode(String code) async {
    await tester.ensureVisible(confirmationCodeField);
    await tester.tap(confirmationCodeField);
    await tester.enterText(confirmationCodeField, code);
  }

  /// When I click the "Confirm" button
  Future<void> submitConfirmSignUp() async {
    await tester.ensureVisible(confirmSignUpButton);
    await tester.tap(confirmSignUpButton);
    await tester.pumpAndSettle();
  }
}

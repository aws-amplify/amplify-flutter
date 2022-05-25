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

import 'package:amplify_authenticator/src/keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'authenticator_page.dart';

/// Confirm Verify User Page Object
class ConfirmVerifyUserPage extends AuthenticatorPage {
  ConfirmVerifyUserPage({required super.tester});

  @override
  Finder get usernameField =>
      throw UnimplementedError('Username does not exist on this page');

  Finder get confirmationCodeField => find.byKey(keyVerifyUserConfirmationCode);

  /// Then I see "Code"
  void expectCodeFieldIsPresent() {
    expect(confirmationCodeField, findsOneWidget);
  }
}

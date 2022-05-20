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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

/// Loads the given [authenticator] widget and waits for it to render.
Future<void> loadAuthenticator({
  required WidgetTester tester,
  required Widget authenticator,
}) async {
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  if (!binding.sendFramesToEngine) binding.allowFirstFrame();
  await tester.pumpWidget(authenticator);
  await tester.pumpAndSettle();
}

/// Waits for the next bloc event.
Future<void> nextBlocEvent(
  WidgetTester tester, {
  BlocEventPredicate? where,
  Duration timeout = const Duration(seconds: 5),
}) async {
  final inheritedViewModel = tester.widget<InheritedAuthenticatorState>(
    find.byKey(keyInheritedAuthenticatorState),
  );
  await inheritedViewModel.state.nextBlocEvent(where: where).timeout(timeout);
  await tester.pumpAndSettle();
}

/// Do nothing.
void noOp() {}

/// Signs out the current user, if any. Safe to call anywhere.
Future<void> signOut() async {
  try {
    await Amplify.Auth.signOut();
  } on Object {
    // OK
  }
}

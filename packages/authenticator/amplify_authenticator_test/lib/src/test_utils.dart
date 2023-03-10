// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/keys.dart';
// ignore: implementation_imports
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:flutter_test/flutter_test.dart';

/// Waits for the next bloc event.
Future<void> nextBlocEvent(
  WidgetTester tester, {
  // ignore: invalid_use_of_visible_for_testing_member
  BlocEventPredicate? where,
  Duration timeout = const Duration(seconds: 5),
}) async {
  final inheritedViewModel = tester.widget<InheritedAuthenticatorState>(
    find.byKey(keyInheritedAuthenticatorState),
  );
  // ignore: invalid_use_of_visible_for_testing_member
  await inheritedViewModel.state.nextBlocEvent(where: where).timeout(timeout);
  await tester.pumpAndSettle();
}

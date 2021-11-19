import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Loads the given [authenticator] widget and waits for it to render.
Future<void> loadAuthenticator({
  required WidgetTester tester,
  required Widget authenticator,
}) async {
  await tester.pumpWidget(authenticator);
  await tester.pumpAndSettle();
}

/// Waits for the next bloc event.
Future<void> nextBlocEvent(
  WidgetTester tester, {
  BlocEventPredicate? where,
  Duration timeout = const Duration(seconds: 5),
}) async {
  final inheritedViewModel = tester
      .widget<InheritedAuthViewModel>(find.byKey(keyInheritedAuthViewModel));
  await inheritedViewModel.viewModel
      .nextBlocEvent(where: where)
      .timeout(timeout);
  await tester.pumpAndSettle();
}

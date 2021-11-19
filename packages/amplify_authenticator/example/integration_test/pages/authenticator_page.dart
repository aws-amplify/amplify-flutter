import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// General purpose authenticator actions
extension AuthenticatorActions on WidgetTester {
  /// Loads the given [authenticator] widget and waits for it to render.
  Future<void> loadAuthenticator(
    Widget authenticator,
  ) async {
    await pumpWidget(authenticator);
    await pumpAndSettle();
  }

  /// Waits for the next bloc event.
  Future<void> nextBlocEvent({
    BlocEventPredicate? where,
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final inheritedViewModel =
        widget<InheritedAuthViewModel>(find.byKey(keyInheritedAuthViewModel));
    await inheritedViewModel.viewModel
        .nextBlocEvent(where: where)
        .timeout(timeout);
    await pumpAndSettle();
  }
}

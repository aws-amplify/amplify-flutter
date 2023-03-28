// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

/// Loads the given [authenticator] widget and waits for it to render.
Future<void> loadAuthenticator({
  required WidgetTester tester,
  Widget? authenticator,
}) async {
  authenticator ??= Authenticator(
    child: MaterialApp(
      builder: Authenticator.builder(),
      home: const Scaffold(
        key: authenticatedAppKey,
        body: Center(
          child: SignOutButton(),
        ),
      ),
    ),
  );
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

/// Deletes the user created in the running test.
Future<void> deleteTestUser() async {
  try {
    await Amplify.Auth.deleteUser();
  } on Object {
    // OK
  }
  await signOut();
}

extension BlocAccess on WidgetTester {
  /// The [StateMachineBloc] of the running Authenticator.
  StateMachineBloc get bloc {
    final inheritedBloc =
        widget<InheritedAuthBloc>(find.byKey(keyInheritedAuthBloc));
    return inheritedBloc.authBloc;
  }
}

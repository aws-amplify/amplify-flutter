// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/event/auth_event.dart';
import 'package:amplify_auth_cognito_dart/src/state/state/auth_state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.state.auth_state_machine}
/// Base class for state machines under a [CognitoAuthStateMachine].
/// {@endtemplate}
abstract class AuthStateMachine<Event extends AuthEvent,
        State extends AuthState>
    extends StateMachine<Event, State, AuthEvent, AuthState,
        CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito_dart.state.auth_state_machine}
  AuthStateMachine(super.manager, super.type);
}

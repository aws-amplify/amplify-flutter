// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.state.machines.auth_state_machine_base}
/// Generated definition for the auth state machine.
/// {@endtemplate}
@internal
abstract class AuthStateMachineBase extends StateMachine<AuthEvent, AuthState> {
  /// {@template amplify_auth_cognito.state.machines.auth_state_machine_base}
  AuthStateMachineBase(super.manager);

  @override
  AuthState get initialState => const AuthState.notConfigured();

  @override
  Future<void> resolve(AuthEvent event) async {
    switch (event.type) {
      case AuthEventType.configure:
        final castEvent = event as AuthConfigure;
        emit(const AuthState.configuring());
        await onConfigure(castEvent);
        return;
      case AuthEventType.configureSucceeded:
        final castEvent = event as AuthConfigureSucceeded;
        emit(AuthState.configured(event.config));
        await onConfigureSucceeded(castEvent);
        return;
      case AuthEventType.configureFailed:
        final castEvent = event as AuthConfigureFailed;
        emit(AuthState.failure(castEvent.exception));
        await onConfigureFailed(castEvent);
        return;
    }
  }

  @override
  AuthState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return AuthFailure(error);
    }
    return null;
  }

  /// State machine callback for the [AuthConfigure] event.
  Future<void> onConfigure(AuthConfigure event);

  /// State machine callback for the [AuthConfigureSucceeded] event.
  Future<void> onConfigureSucceeded(AuthConfigureSucceeded event);

  /// State machine callback for the [AuthConfigureFailed] event.
  Future<void> onConfigureFailed(AuthConfigureFailed event);
}

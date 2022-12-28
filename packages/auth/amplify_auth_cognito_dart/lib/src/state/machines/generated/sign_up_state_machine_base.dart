// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.state.machines.sign_up_state_machine_base}
/// Generated definition for the sign up state machine.
/// {@endtemplate}
@internal
abstract class SignUpStateMachineBase
    extends StateMachine<SignUpEvent, SignUpState> {
  /// {@macro amplify_auth_cognito.state.machines.sign_up_state_machine_base}
  SignUpStateMachineBase(super.manager);

  @override
  SignUpState get initialState => const SignUpState.notStarted();

  @override
  Future<void> resolve(SignUpEvent event) async {
    switch (event.type) {
      case SignUpEventType.initiate:
        event as SignUpInitiate;
        emit(const SignUpState.initiating());
        await onInitiate(event);
        break;
      case SignUpEventType.confirm:
        event as SignUpConfirm;
        emit(const SignUpState.confirming());
        await onConfirm(event);
        break;
      case SignUpEventType.succeeded:
        event as SignUpSucceeded;
        emit(SignUpState.success(userId: event.userId));
        await onSucceeded(event);
        break;
      case SignUpEventType.failed:
        event as SignUpFailed;
        emit(SignUpState.failure(event.exception));
        await onFailed(event);
        break;
    }
  }

  @override
  SignUpState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return SignUpFailure(error);
    }
    return null;
  }

  /// State machine callback for the [SignUpInitiate] event.
  Future<void> onInitiate(SignUpInitiate event);

  /// State machine callback for the [SignUpConfirm] event.
  Future<void> onConfirm(SignUpConfirm event);

  /// State machine callback for the [SignUpSucceeded] event.
  Future<void> onSucceeded(SignUpSucceeded event);

  /// State machine callback for the [SignUpFailed] event.
  Future<void> onFailed(SignUpFailed event);
}

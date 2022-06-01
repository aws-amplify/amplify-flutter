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

import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

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
        emit(const SignUpState.success());
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
    if (error is AmplifyException) {
      return SignUpFailure(error);
    } else if (error is SmithyException) {
      return SignUpFailure(error);
    } else if (error is Exception) {
      return SignUpFailure(
        UnknownException(
          'An unknown error occurred signing up',
          underlyingException: error.toString(),
        ),
      );
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

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.state}
/// Base class for the discrete states of a state machine.
/// {@endtemplate}
@immutable
abstract class StateMachineState<StateType extends Object>
    with AWSEquatable<StateMachineState<StateType>>, AWSDebuggable {
  /// {@macro amplify_core.state}
  const StateMachineState();

  /// The state's discrete type, expressed as an enum.
  StateType get type;
}

/// Mixin for the success/idle states of a state machine.
mixin SuccessState<StateType extends Object> on StateMachineState<StateType> {}

/// Mixin for the error/failure states of a state machine.
mixin ErrorState<StateType extends Object> on StateMachineState<StateType> {
  /// The exception which triggered this state.
  Exception get exception;

  /// The stack trace for [exception].
  StackTrace get stackTrace;
}

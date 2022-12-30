// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.transition}
/// A state machine transition from one state to the next.
/// {@endtemplate}
@immutable
class Transition<E extends StateMachineEvent, S extends StateMachineState>
    with AWSEquatable<Transition<E, S>>, AWSDebuggable {
  /// {@macro amplify_core.transition}
  const Transition(this.previousState, this.event, this.nextState);

  /// The previous state.
  final S previousState;

  /// The event which triggered the change.
  final E event;

  /// The next (current) state.
  final S nextState;

  @override
  List<Object?> get props => [previousState, event, nextState];

  @override
  String get runtimeTypeName => 'Transition';
}

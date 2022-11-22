// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.event}
/// Base class for discrete events of a state machine.
/// {@endtemplate}
@immutable
abstract class StateMachineEvent<EventType, StateType>
    with AWSEquatable<StateMachineEvent<EventType, StateType>>, AWSDebuggable {
  /// {@macro amplify_core.event}
  const StateMachineEvent();

  /// The event's discrete type, expressed as an enum.
  EventType get type;

  /// Casts this to an event of type [E].
  E cast<E extends StateMachineEvent<EventType, StateType>>() => this as E;

  /// Checks the precondition, given [currentState].
  ///
  /// Returns a [PreconditionException] if the check fails, otherwise `null`.
  PreconditionException? checkPrecondition(
    covariant StateMachineState<StateType> currentState,
  ) =>
      null;
}

class EventCompleter<Event extends StateMachineEvent>
    implements Completer<void> {
  EventCompleter(this.event);

  final Event event;
  final Completer<void> _completer = Completer();

  @override
  void complete([FutureOr<void>? value]) {
    if (!isCompleted) {
      _completer.complete(value);
    }
  }

  @override
  void completeError(Object error, [StackTrace? stackTrace]) {
    if (!isCompleted) {
      _completer.completeError(error, stackTrace);
    }
  }

  @override
  Future<void> get future => _completer.future;

  @override
  bool get isCompleted => _completer.isCompleted;
}

/// Mixin functionality for error/failure events of a state machine.
mixin ErrorEvent<EventType, StateType>
    on StateMachineEvent<EventType, StateType> {
  /// The exception which triggered this event.
  Exception get exception;
}

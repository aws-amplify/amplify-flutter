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

/// {@template amplify_core.event_completer}
/// A [Completer] for [Event]s in a state machine, used to signal processing
/// of a particular event which otherwise would be fired and forgotten.
/// {@endtemplate}
class EventCompleter<Event extends StateMachineEvent,
    State extends StateMachineState> {
  /// {@macro amplify_core.event_completer}
  EventCompleter(this.event);

  /// The event to dispatch.
  final Event event;

  final Completer<void> _acceptedCompleter = Completer();
  final Completer<State> _completer = Completer();

  /// Completes when the event is accepted by the respective state machine.
  ///
  /// After this completes, intermediate changes can be listened for on the
  /// event's state machine.
  Future<void> get accepted => _acceptedCompleter.future;

  /// Completes with the stopping state emitted after the full propogation
  /// of this event.
  Future<State> get completed => _completer.future;

  /// Accepts the event by a state machine.
  void accept() {
    if (!_acceptedCompleter.isCompleted) {
      _acceptedCompleter.complete();
    }
  }

  /// Completes the event propogation with its stopping state.
  void complete(State state) {
    if (!_completer.isCompleted) {
      _completer.complete(state);
    }
  }

  /// Completes the event propogation with an error, if the event failed to
  /// resolve to a meaningful stopping state.
  void completeError(Object error, StackTrace stackTrace) {
    if (!_completer.isCompleted) {
      _completer.completeError(error, stackTrace);
    }
  }
}

/// Mixin functionality for error/failure events of a state machine.
mixin ErrorEvent<EventType, StateType>
    on StateMachineEvent<EventType, StateType> {
  /// The exception which triggered this event.
  Exception get exception;
}

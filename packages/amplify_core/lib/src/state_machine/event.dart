// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.event}
/// Base class for discrete events of a state machine.
/// {@endtemplate}
@immutable
abstract base class StateMachineEvent<EventType extends Object,
        StateType extends Object>
    with AWSEquatable<StateMachineEvent<EventType, StateType>>, AWSDebuggable {
  /// {@macro amplify_core.event}
  const StateMachineEvent();

  /// The event's discrete type, expressed as an enum.
  EventType get type;

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
final class EventCompleter<Event extends StateMachineEvent,
    State extends StateMachineState> {
  /// {@macro amplify_core.event_completer}
  EventCompleter(this.event, [StackTrace? stackTrace])
      : stackTrace = stackTrace ?? StackTrace.current;

  /// The event to dispatch.
  final Event event;

  /// The stack trace from when [event] was created.
  ///
  /// When exceptions are raised from within the state machines, the origin of
  /// the exception should be traceable back to the API called which kicked off
  /// this event. Since there may be multiple async gaps between the API call
  /// and a state machine failure, it is necessary to capture the stack trace
  /// here and chain it with later stack traces.
  final StackTrace stackTrace;

  /// The zone in which this event was created, used to guarantee Zone values
  /// are present from the Zone in which the event was created.
  ///
  /// Due to how Zones work with Streams, it cannot be guaranteed that the Zone
  /// in which this event is accepted (which is the zone in which the state
  /// machine was created) will be the same as the zone in which the event
  /// was created.
  final Zone _zone = Zone.current;

  /// Every time [accepted] or [completed] is called, generate a new completer.
  /// This is because the Zone in which a [Completer] is instantiated **must**
  /// match the Zone in which its future is listened to, otherwise the future
  /// will never complete.
  ///
  /// That is, running `_zone.run(() => completer.completeError(error))` would
  /// still throw the error in the Zone where the completer was instantiated,
  /// not `_zone`. And due to how Zone's work, a listener for a completer which
  /// completes in a different error zone will never finish.
  ///
  /// The following example illustrates the problem we're trying to solve
  /// here:
  ///
  /// ```dart
  /// import "dart:async";
  ///
  /// void main() {
  ///   final completer = Completer();
  ///   runZonedGuarded(() async {
  ///     await completer.future;
  ///     print('never printed');
  ///   }, (e, s) {
  ///     print('never printed');
  ///   });
  ///   completer.future.catchError((e) => print('outer zone: $e'));
  ///   completer.completeError('error');
  /// }
  /// ```
  ///
  /// See this [Dart issue](https://github.com/dart-lang/sdk/issues/49457) for
  /// more information.
  final List<Completer<void>> _acceptedCompleters = [];
  final List<Completer<State>> _completers = [];

  var _accepted = false;
  (State?, Object?, StackTrace?)? _completion;

  /// Completes when the event is accepted by the respective state machine.
  ///
  /// After this completes, intermediate changes can be listened for on the
  /// event's state machine.
  Future<void> get accepted {
    if (_accepted) {
      return Future.value();
    }
    final completer = Completer<void>();
    _acceptedCompleters.add(completer);
    return completer.future;
  }

  /// Completes with the stopping state emitted after the full propagation
  /// of this event.
  Future<State> get completed {
    if (_completion case (final completion?, _, _)) {
      return Future.value(completion);
    }
    if (_completion case (_, final error?, final stackTrace?)) {
      return Future.error(error, stackTrace);
    }
    final completer = Completer<State>();
    _completers.add(completer);
    return completer.future;
  }

  /// Accepts the event by a state machine.
  void accept() {
    _accepted = true;
    for (final completer in _acceptedCompleters) {
      if (!completer.isCompleted) {
        completer.complete();
      }
    }
    _acceptedCompleters.clear();
  }

  /// Completes the event propagation with its stopping state.
  void complete(State state) {
    _completion ??= (state, null, null);
    for (final completer in _completers) {
      if (!completer.isCompleted) {
        completer.complete(state);
      }
    }
    _completers.clear();
  }

  /// Completes the event propagation with an error, if the event failed to
  /// resolve to a meaningful stopping state.
  void completeError(Object error, StackTrace stackTrace) {
    _completion ??= (null, error, stackTrace);
    for (final completer in _completers) {
      if (!completer.isCompleted) {
        completer.completeError(error, stackTrace);
      }
    }
    _completers.clear();
  }

  /// Runs [body] in the [Zone] which this event was created.
  R run<R>(R Function() body) => _zone.run(body);

  /// Ignores the result of the event completer.
  ///
  /// Since state machine methods are marked with `@useResult`, this allows
  /// opting into fire-and-forget behavior explicitly.
  void ignore() {
    _acceptedCompleters.clear();
    _completers.clear();
  }
}

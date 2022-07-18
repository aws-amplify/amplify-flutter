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

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';

/// Interface for dispatching an event to a state machine.
@optionalTypeArgs
abstract class Dispatcher<E extends StateMachineEvent> {
  /// Dispatches an event.
  FutureOr<void> dispatch(E event);
}

/// Interface for emitting a state from a state machine.
abstract class Emitter<S extends StateMachineState> {
  /// Emits a new state.
  void emit(S state);
}

/// {@template amplify_core.state_machine_type}
/// A marker for state machine types to improve DX with generic functions.
/// {@endtemplate}
class StateMachineToken<
    Event extends StateMachineEvent,
    State extends StateMachineState,
    M extends StateMachine<Event, State>> extends Token<M> {
  /// {@macro amplify_core.state_machine_type}
  const StateMachineToken();

  @override
  List<Token> get dependencies => const [Token<StateMachineManager>()];
}

/// Constructor for a state machine of type [M].
typedef StateMachineBuilder<Event extends StateMachineEvent,
        State extends StateMachineState, M extends StateMachine<Event, State>>
    = M Function(StateMachineManager);

/// {@template amplify_core.state_machine_manager}
/// Service locator for state machines to ease communication between the
/// different layers.
/// {@endtemplate}
@optionalTypeArgs
abstract class StateMachineManager<E extends StateMachineEvent>
    implements DependencyManager, Dispatcher<E>, Closeable {
  /// {@macro amplify_core.state_machine_manager}
  StateMachineManager(
    Map<StateMachineToken, StateMachineBuilder> stateMachineBuilders,
    this._dependencyManager,
  ) {
    addInstance<Dispatcher>(this);
    addInstance<StateMachineManager>(this);
    addInstance<DependencyManager>(this);
    stateMachineBuilders.forEach((token, builder) {
      addBuilder(builder, token);
    });
  }

  final DependencyManager _dependencyManager;
  final Map<Type, StateMachine> _stateMachines = {};

  final StreamController<StateMachineState> _stateController =
      StreamController.broadcast(sync: true);
  final StreamController<Transition> _transitionController =
      StreamController.broadcast(sync: true);

  /// The unified state stream for all state machines.
  Stream<StateMachineState> get stream => _stateController.stream;

  /// The unified state machine transitions.
  Stream<Transition> get transitions => _transitionController.stream;

  @override
  void addBuilder<T extends Object>(
    DependencyBuilder<T> builder, [
    Token<T>? token,
  ]) {
    _dependencyManager.addBuilder<T>(builder, token);
  }

  @override
  void addInstance<T extends Object>(
    T instance, [
    Token<T>? token,
  ]) {
    _dependencyManager.addInstance<T>(instance, token);
  }

  @override
  T? get<T extends Object>([Token<T>? token]) =>
      _dependencyManager.get<T>(token);

  @override
  T getOrCreate<T extends Object>([Token<T>? token]) =>
      _dependencyManager.getOrCreate<T>(token);

  @override
  T create<T extends Object>([Token<T>? token]) =>
      _dependencyManager.create<T>(token);

  @override
  T expect<T extends Object>([Token<T>? token]) =>
      _dependencyManager.expect<T>(token);

  /// Dispatches an event to the appropriate state machine.
  @override
  FutureOr<void> dispatch(E event);

  /// Closes the state machine manager and all state machines.
  @override
  Future<void> close() async {
    await Future.wait<void>(
        _stateMachines.values.map((stateMachine) => stateMachine.close()));
    await _transitionController.close();
    await _stateController.close();
  }
}

/// {@template amplify_core.state_machine}
/// Base class for state machines.
/// {@endtemplate}
abstract class StateMachine<Event extends StateMachineEvent,
        State extends StateMachineState>
    with AWSDebuggable, AmplifyLoggerMixin
    implements Emitter<State>, StateMachineManager {
  /// {@macro amplify_core.state_machine}
  StateMachine(this._manager) {
    addBuilder<AmplifyLogger>(AmplifyLogger.new);
    _init();
  }

  /// Initializes the state machine by subscribing to the event stream and
  /// registering a callback for internal errors.
  void _init() {
    // Use `runtimeType` instead of generics. For some reason, having a method
    // on StateMachineManager to do this generically did not work.
    _manager._stateMachines[runtimeType] = this;

    // Registers `this` as the emitter for states of type [S].
    addInstance<Emitter<State>>(this);

    // Activate the event stream and begin listening for events.
    _listenForEvents();
  }

  // Resolve every event which meets the precondition given the current state,
  // blocking on the current event until it has finished processing.
  Future<void> _listenForEvents() async {
    await for (final event in _eventStream) {
      try {
        _currentEvent = event;
        if (!_checkPrecondition(event)) {
          continue;
        }
        // Resolve in the next event loop since `emit` is synchronous and may
        // fire before listeners are registered.
        await Future.delayed(Duration.zero, () => resolve(event));
      } on Object catch (error, st) {
        _emitError(error, st);
      }
    }
  }

  /// The current event being handled by the state machine.
  late Event _currentEvent;

  /// Emits a new state synchronously for the current event.
  @override
  void emit(State state) {
    _stateController.add(state);
    _manager._stateController.add(state);
    final transition = Transition(
      _currentState,
      _currentEvent,
      state,
    );
    _transitionController.add(transition);
    _manager._transitionController.add(transition);
    _currentState = state;
  }

  void _emitError(Object error, [StackTrace? st]) {
    logger.error('Emitted error', error, st);

    final resolution = resolveError(error, st);

    // Add the error to the state stream if it cannot be resolved to a new
    // state internally.
    if (resolution == null) {
      _stateController.addError(error, st);
      return;
    }

    emit(resolution);
  }

  /// Checks the precondition on [event] given [currentState]. If it fails,
  /// return `false` to skip the event.
  bool _checkPrecondition(Event event) {
    final precondError = event.checkPrecondition(currentState);
    if (precondError != null) {
      logger.info(
        'Precondition not met for event ($event):\n'
        '${precondError.precondition}',
      );
      if (precondError.shouldEmit) {
        _emitError(precondError);
      }
      return false;
    }

    return true;
  }

  final StateMachineManager _manager;

  /// State controller.
  @override
  final StreamController<State> _stateController =
      StreamController.broadcast(sync: true);

  /// Event controller.
  final StreamController<Event> _eventController = StreamController();

  /// Transition controller.
  @override
  final StreamController<Transition<Event, State>> _transitionController =
      StreamController.broadcast(sync: true);

  /// Subscriptions of this state machine to others.
  final Map<StateMachineToken, StreamSubscription> _subscriptions = {};

  /// The stream of events added to this state machine.
  late final Stream<Event> _eventStream = _eventController.stream;

  /// The initial state of the state machine.
  State get initialState;

  late State _currentState = initialState;

  /// The state machine's current state.
  State get currentState => _currentState;

  /// Transforms events into state changes.
  Future<void> resolve(Event event);

  /// Resolves an error thrown inside the state machine.
  ///
  /// If the error cannot be resolved, return `null` and the error will be
  /// rethrown.
  State? resolveError(Object error, [StackTrace? st]);

  /// Logger for the state machine.
  @override
  AmplifyLogger get logger =>
      getOrCreate<AmplifyLogger>().createChild(runtimeTypeName);

  /// The stream of state machine states.
  @override
  Stream<State> get stream => _stateController.stream;

  @override
  Stream<Transition<Event, State>> get transitions =>
      _transitionController.stream;

  @override
  void addBuilder<T extends Object>(
    DependencyBuilder<T> builder, [
    Token<T>? token,
  ]) =>
      _manager.addBuilder<T>(builder, token);

  @override
  void addInstance<T extends Object>(
    T instance, [
    Token<T>? token,
  ]) =>
      _manager.addInstance<T>(instance, token);

  @override
  T? get<T extends Object>([Token<T>? token]) => _manager.get<T>(token);

  @override
  T getOrCreate<T extends Object>([Token<T>? token]) =>
      _manager.getOrCreate<T>(token);

  @override
  T expect<T extends Object>([Token<T>? token]) => _manager.expect<T>(token);

  @override
  T create<T extends Object>([Token<T>? token]) => _manager.create<T>(token);

  /// Subscribes to the state machine of the given type.
  void subscribeTo<E extends StateMachineEvent, S extends StateMachineState,
      M extends StateMachine<E, S>>(
    StateMachineToken<E, S, M> type,
    void Function(S state) onData,
  ) {
    if (_subscriptions.containsKey(type)) {
      SubscriptionStream(_subscriptions[type]! as StreamSubscription<S>).listen(
        onData,
        cancelOnError: true,
      );
    } else {
      _subscriptions[type] = _manager.expect(type).stream.listen(
            onData,
            cancelOnError: true,
          );
    }
  }

  /// Add an event to the state machine.
  void add(Event event) => _eventController.add(event);

  /// Dispatches an event to the state machine.
  @override
  FutureOr<void> dispatch(StateMachineEvent event) => _manager.dispatch(event);

  /// Closes the state machine and all stream controllers.
  @override
  Future<void> close() async {
    await Future.wait(_subscriptions.values.map((sub) => sub.cancel()));
    await _transitionController.close();
    await _eventController.close();
    await _stateController.close();
  }
}

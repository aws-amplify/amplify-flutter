// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Interface for dispatching an event to a state machine.
@optionalTypeArgs
abstract class Dispatcher<E extends StateMachineEvent,
    S extends StateMachineState> {
  /// Dispatches an event.
  EventCompleter<E, S> dispatch(E event);
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
    Event extends ManagerEvent,
    State extends ManagerState,
    ManagerEvent extends StateMachineEvent,
    ManagerState extends StateMachineState,
    Manager extends StateMachineManager<ManagerEvent, ManagerState, Manager>,
    M extends StateMachine<Event, State, ManagerEvent, ManagerState,
        Manager>> extends Token<M> {
  /// {@macro amplify_core.state_machine_type}
  const StateMachineToken();

  @override
  List<Token> get dependencies => [Token<Manager>()];
}

/// {@template amplify_core.state_machinedispatcher}
/// Service locator for state machines to ease communication between the
/// different layers.
/// {@endtemplate}
@optionalTypeArgs
abstract class StateMachineManager<
        E extends StateMachineEvent,
        S extends StateMachineState,
        Manager extends StateMachineManager<E, S, Manager>>
    implements DependencyManager, Dispatcher<E, S>, Closeable {
  /// {@macro amplify_core.state_machinedispatcher}
  StateMachineManager(
    Map<StateMachineToken, Function> stateMachineBuilders,
    this._dependencyManager,
  ) {
    addInstance<Dispatcher<E, S>>(this);
    addInstance<Manager>(this as Manager);
    addInstance<DependencyManager>(this);
    stateMachineBuilders.forEach((token, builder) {
      addBuilder(builder, token);
    });
    _listenForEvents();
  }

  final DependencyManager _dependencyManager;
  final Map<StateMachineToken, StateMachine> _stateMachines = {};

  final _eventController = StreamController<EventCompleter<E, S>>();
  final StreamController<S> _stateController =
      StreamController.broadcast(sync: true);
  final StreamController<Transition<E, S>> _transitionController =
      StreamController.broadcast(sync: true);

  /// The unified state stream for all state machines.
  Stream<S> get stream => _stateController.stream;

  /// The unified state machine transitions.
  Stream<Transition<E, S>> get transitions => _transitionController.stream;

  Future<void> _listenForEvents() async {
    await for (final completer in _eventController.stream) {
      await dispatch(completer.event, completer).completed;
    }
  }

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

  /// Accepts an event into the state machine queue.
  ///
  /// Upon popping off the queue, the returned completer's
  /// [EventCompleter.accepted] property will complete. Once the event has been
  /// fully processed by its state machine, the [EventCompleter.completed]
  /// property will complete with the stopping state reached. At this point,
  /// the event is done processing.
  EventCompleter<E, S> accept(E event) {
    final completer = EventCompleter<E, S>(event);
    _eventController.add(completer);
    return completer;
  }

  /// Dispatches an event to the appropriate state machine.
  ///
  /// For internal use only. Public APIs should use [accept] instead.
  @override
  @protected
  @visibleForTesting
  EventCompleter<E, S> dispatch(E event, [EventCompleter<E, S>? completer]) {
    final token = mapEventToMachine(event);
    completer ??= EventCompleter(event);
    getOrCreate(token).accept(completer);
    return completer;
  }

  /// Maps [event] to its state machine.
  StateMachineToken mapEventToMachine(E event);

  /// Closes the state machine manager and all state machines.
  @override
  Future<void> close() async {
    await _eventController.close();
    await Future.wait<void>(
      _stateMachines.values.map((stateMachine) => stateMachine.close()),
    );
    await _transitionController.close();
    await _stateController.close();
  }
}

/// {@template amplify_core.state_machine}
/// Base class for state machines.
/// {@endtemplate}
abstract class StateMachine<
        Event extends ManagerEvent,
        State extends ManagerState,
        ManagerEvent extends StateMachineEvent,
        ManagerState extends StateMachineState,
        Manager extends StateMachineManager<ManagerEvent, ManagerState,
            Manager>>
    with AWSDebuggable, AmplifyLoggerMixin
    implements
        Emitter<State>,
        Dispatcher<ManagerEvent, ManagerState>,
        DependencyManager {
  /// {@macro amplify_core.state_machine}
  StateMachine(this.manager, this._token) {
    addBuilder<AmplifyLogger>(AmplifyLogger.new);
    _init();
  }

  /// Initializes the state machine by subscribing to the event stream and
  /// registering a callback for internal errors.
  void _init() {
    manager._stateMachines[_token] = this;

    // Registers `this` as the emitter for states of type [S].
    addInstance<Emitter<State>>(this);

    // Activate the event stream and begin listening for events.
    _listenForEvents();
  }

  // Resolve every event which meets the precondition given the current state,
  // blocking on the current event until it has finished processing.
  Future<void> _listenForEvents() async {
    await for (final completer in _eventStream) {
      completer.accept();
      try {
        final event = completer.event;
        _currentCompleter = completer;
        _currentEvent = event as Event;
        if (!_checkPrecondition(event)) {
          continue;
        }
        // Resolve in the next event loop since `emit` is synchronous and may
        // fire before listeners are registered.
        await Future<void>.delayed(Duration.zero, () => resolve(event));
      } on Object catch (error, st) {
        _emitError(error, st);
      } finally {
        completer.complete(_currentState);
      }
    }
  }

  /// The current event being handled by the state machine.
  late Event _currentEvent;

  /// The completer for [_currentEvent].
  late EventCompleter<ManagerEvent, ManagerState> _currentCompleter;

  /// Emits a new state synchronously for the current event.
  @override
  void emit(State state) {
    _stateController.add(state);
    manager._stateController.add(state);
    final transition = Transition(
      _currentState,
      _currentEvent,
      state,
    );
    _transitionController.add(transition);
    manager._transitionController.add(transition);
    _currentState = state;
  }

  void _emitError(Object error, StackTrace st) {
    logger.error('Emitted error', error, st);

    final resolution = resolveError(error, st);

    // Add the error to the state stream if it cannot be resolved to a new
    // state internally.
    if (resolution == null) {
      _currentCompleter.completeError(error, st);
      _stateController.addError(error, st);
      return;
    }

    emit(resolution);
  }

  /// Checks the precondition on [event] given [currentState]. If it
  /// fails, return `false` to skip the event.
  bool _checkPrecondition(Event event) {
    final precondError = event.checkPrecondition(currentState);
    if (precondError != null) {
      logger.debug(
        'Precondition not met for event ($event):\n'
        '${precondError.precondition}',
      );
      if (precondError.shouldEmit) {
        _emitError(precondError, StackTrace.current);
      }
      return false;
    }

    return true;
  }

  final StateMachineToken _token;

  /// The state machine's manager which exposes functionality related to the
  /// system of state machines it
  final Manager manager;

  /// State controller.
  final StreamController<State> _stateController = StreamController.broadcast();

  /// Event controller.
  final StreamController<EventCompleter<ManagerEvent, ManagerState>>
      _eventController = StreamController();

  /// Transition controller.
  final StreamController<Transition<Event, State>> _transitionController =
      StreamController.broadcast(sync: true);

  /// The stream of events added to this state machine.
  late final Stream<EventCompleter<ManagerEvent, ManagerState>> _eventStream =
      _eventController.stream;

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
  Stream<State> get stream => _stateController.stream;

  Stream<Transition<Event, State>> get transitions =>
      _transitionController.stream;

  @override
  void addBuilder<T extends Object>(
    DependencyBuilder<T> builder, [
    Token<T>? token,
  ]) =>
      manager.addBuilder<T>(builder, token);

  @override
  void addInstance<T extends Object>(
    T instance, [
    Token<T>? token,
  ]) =>
      manager.addInstance<T>(instance, token);

  @override
  T? get<T extends Object>([Token<T>? token]) => manager.get<T>(token);

  @override
  T getOrCreate<T extends Object>([Token<T>? token]) =>
      manager.getOrCreate<T>(token);

  @override
  T expect<T extends Object>([Token<T>? token]) => manager.expect<T>(token);

  @override
  T create<T extends Object>([Token<T>? token]) => manager.create<T>(token);

  /// Adds an event to the state machine.
  void accept(EventCompleter<ManagerEvent, ManagerState> completer) =>
      _eventController.add(completer);

  /// Dispatches an event to the state machine.
  @override
  EventCompleter<ManagerEvent, ManagerState> dispatch(ManagerEvent event) =>
      manager.dispatch(event);

  /// Closes the state machine and all stream controllers.
  @override
  Future<void> close() async {
    await _eventController.close();
    await _transitionController.close();
    await _stateController.close();
  }
}

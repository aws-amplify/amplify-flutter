// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';

final _builders = <StateMachineToken, Function>{
  MyStateMachine.type: MyStateMachine.new,
  WorkerMachine.type: WorkerMachine.new,
};

enum MyType { initial, doWork, tryWork, delegateWork, success, error }

class MyPreconditionException implements PreconditionException {
  const MyPreconditionException(this.precondition);

  @override
  final String precondition;

  @override
  bool get shouldEmit => false;
}

class MyEvent extends StateMachineEvent<MyType, MyType> {
  const MyEvent(this.type);

  @override
  List<Object?> get props => [type];

  @override
  final MyType type;

  @override
  MyPreconditionException? checkPrecondition(MyState currentState) {
    if (currentState.type == type) {
      return const MyPreconditionException('Cannot process event of same type');
    }
    return null;
  }

  @override
  String get runtimeTypeName => 'MyEvent';
}

class MyState extends StateMachineState<MyType> {
  const MyState(this.type);

  @override
  List<Object?> get props => [type];

  @override
  final MyType type;

  @override
  String get runtimeTypeName => 'MyState';
}

class MyStateMachine extends StateMachine<MyEvent, MyState, StateMachineEvent,
    StateMachineState, MyStateMachineManager> {
  MyStateMachine(MyStateMachineManager manager) : super(manager, type);

  static const type = StateMachineToken<MyEvent, MyState, StateMachineEvent,
      StateMachineState, MyStateMachineManager, MyStateMachine>();

  @override
  MyState get initialState => const MyState(MyType.initial);

  Future<void> doWork({required bool fail}) async {
    await Future<void>.delayed(Duration.zero);
    if (fail) {
      throw Exception();
    } else {
      dispatch(const MyEvent(MyType.success));
    }
  }

  @override
  Future<void> resolve(MyEvent event) async {
    emit(MyState(event.type));
    switch (event.type) {
      case MyType.initial:
      case MyType.success:
      case MyType.error:
        break;
      case MyType.doWork:
        await doWork(fail: false);
        break;
      case MyType.tryWork:
        await doWork(fail: true);
        break;
      case MyType.delegateWork:
        await manager.delegateWork();
        dispatch(const MyEvent(MyType.success));
    }
  }

  @override
  MyState? resolveError(Object error, [StackTrace? st]) {
    return const MyState(MyType.error);
  }

  @override
  String get runtimeTypeName => 'MyStateMachine';
}

enum WorkType { initial, doWork, success, error }

class WorkerEvent extends StateMachineEvent<WorkType, WorkType> {
  const WorkerEvent(this.type);

  @override
  List<Object?> get props => [type];

  @override
  final WorkType type;

  @override
  MyPreconditionException? checkPrecondition(WorkerState currentState) {
    if (currentState.type == type) {
      return const MyPreconditionException('Cannot process event of same type');
    }
    return null;
  }

  @override
  String get runtimeTypeName => 'WorkerEvent';
}

class WorkerState extends StateMachineState<WorkType> {
  const WorkerState(this.type);

  @override
  List<Object?> get props => [type];

  @override
  final WorkType type;

  @override
  String get runtimeTypeName => 'WorkerState';
}

class WorkerMachine extends StateMachine<WorkerEvent, WorkerState,
    StateMachineEvent, StateMachineState, MyStateMachineManager> {
  WorkerMachine(MyStateMachineManager manager) : super(manager, type);

  static const type = StateMachineToken<
      WorkerEvent,
      WorkerState,
      StateMachineEvent,
      StateMachineState,
      MyStateMachineManager,
      WorkerMachine>();

  @override
  WorkerState get initialState => const WorkerState(WorkType.initial);

  @override
  Future<void> resolve(WorkerEvent event) async {
    emit(WorkerState(event.type));
    switch (event.type) {
      case WorkType.initial:
      case WorkType.success:
      case WorkType.error:
        break;
      case WorkType.doWork:
        await Future<void>.delayed(Duration.zero);
        dispatch(const WorkerEvent(WorkType.success));
        break;
    }
  }

  @override
  WorkerState? resolveError(Object error, [StackTrace? st]) {
    return const WorkerState(WorkType.error);
  }

  @override
  String get runtimeTypeName => 'WorkerMachine';
}

class MyStateMachineManager extends StateMachineManager {
  MyStateMachineManager(
    DependencyManager dependencyManager,
  ) : super(_builders, dependencyManager);

  Dispatcher get _dispatch => expect();

  Future<void> delegateWork() async {
    _dispatch(const WorkerEvent(WorkType.doWork));
    final machine = getOrCreate(WorkerMachine.type);
    await for (final state in machine.stream) {
      switch (state.type) {
        case WorkType.initial:
        case WorkType.doWork:
          break;
        case WorkType.success:
          return;
        case WorkType.error:
          throw Exception('error');
      }
    }
  }

  @override
  StateMachineToken mapEventToMachine(StateMachineEvent event) {
    if (event is MyEvent) {
      return MyStateMachine.type;
    }
    if (event is WorkerEvent) {
      return WorkerMachine.type;
    }
    throw ArgumentError('Invalid event: $event');
  }
}

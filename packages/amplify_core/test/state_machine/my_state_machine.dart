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

class MyStateMachine
    extends StateMachine<MyEvent, MyState, StateMachineDispatcher> {
  MyStateMachine(StateMachineDispatcher manager) : super(manager);

  static const type = StateMachineToken<MyEvent, MyState,
      StateMachineDispatcher, MyStateMachine>();

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
        final Completer<void> completer = Completer.sync();
        dispatch(const WorkerEvent(WorkType.doWork));
        subscribeTo(WorkerMachine.type, (WorkerState state) {
          switch (state.type) {
            case WorkType.initial:
            case WorkType.doWork:
              break;
            case WorkType.success:
              completer.complete();
              break;
            case WorkType.error:
              completer.completeError('error');
              break;
          }
        });
        await completer.future;
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

class WorkerMachine
    extends StateMachine<WorkerEvent, WorkerState, StateMachineDispatcher> {
  WorkerMachine(StateMachineDispatcher manager) : super(manager);

  static const type = StateMachineToken<WorkerEvent, WorkerState,
      StateMachineDispatcher, WorkerMachine>();

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

class MyStateMachineManager extends StateMachineDispatcher {
  MyStateMachineManager(
    DependencyManager dependencyManager,
  ) : super(_builders, dependencyManager);

  @override
  Future<void> dispatch(StateMachineEvent event) async {
    if (event is MyEvent) {
      return getOrCreate(MyStateMachine.type).add(event);
    }
    if (event is WorkerEvent) {
      return getOrCreate(WorkerMachine.type).add(event);
    }
    throw ArgumentError('Invalid event: $event');
  }
}

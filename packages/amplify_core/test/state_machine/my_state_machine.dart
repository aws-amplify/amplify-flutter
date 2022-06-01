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

import 'package:amplify_core/amplify_core.dart';

final _builders = <StateMachineToken, StateMachineBuilder>{
  MyStateMachine.type: MyStateMachine.new,
};

enum MyType { initial, doWork, tryWork, success, error }

class MyEvent extends StateMachineEvent<MyType> {
  const MyEvent(this.type);

  @override
  List<Object?> get props => [type];

  @override
  final MyType type;

  @override
  String? checkPrecondition(MyState currentState) {
    if (currentState.type == type) {
      return 'Cannot process event of same type';
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

class MyStateMachine extends StateMachine<MyEvent, MyState> {
  MyStateMachine(StateMachineManager manager) : super(manager);

  static const type = StateMachineToken<MyEvent, MyState, MyStateMachine>();

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
    }
  }

  @override
  MyState? resolveError(Object error, [StackTrace? st]) {
    return const MyState(MyType.error);
  }
}

class MyStateMachineManager extends StateMachineManager {
  MyStateMachineManager(
    DependencyManager dependencyManager,
  ) : super(_builders, dependencyManager);

  @override
  Future<void> dispatch(StateMachineEvent event) async {
    if (event is MyEvent) {
      return getOrCreate(MyStateMachine.type).add(event);
    }
    throw ArgumentError('Invalid event: $event');
  }
}

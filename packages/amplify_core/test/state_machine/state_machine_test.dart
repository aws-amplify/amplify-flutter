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
import 'package:test/test.dart';

import 'my_state_machine.dart';

void main() {
  late MyStateMachineManager stateMachine;

  group('StateMachine', () {
    setUp(() {
      stateMachine = MyStateMachineManager(DependencyManager());
    });

    test('checkPrecondition blocks abberant events', () async {
      final currentState =
          stateMachine.getOrCreate(MyStateMachine.type).currentState;
      expect(currentState.type, equals(MyType.initial));

      stateMachine.dispatch(const MyEvent(MyType.initial));
      expect(
        stateMachine.stream,
        neverEmits(anything),
      );

      await stateMachine.close();
    });

    test('dispatches correctly', () {
      stateMachine.dispatch(const MyEvent(MyType.doWork));
      expect(
        stateMachine.stream,
        emitsThrough(const MyState(MyType.success)),
      );
    });

    test('handles errors', () {
      stateMachine.dispatch(const MyEvent(MyType.tryWork));
      expect(
        stateMachine.stream,
        emitsThrough(const MyState(MyType.error)),
      );
    });

    group('subscribeTo', () {
      test('can listen to other machines', () {
        stateMachine.dispatch(const MyEvent(MyType.delegateWork));
        expect(
          stateMachine.stream,
          emitsInOrder([
            const MyState(MyType.delegateWork),
            const WorkerState(WorkType.doWork),
            const WorkerState(WorkType.success),
            const MyState(MyType.success),
          ]),
        );
      });

      test('can listen multiple times to other machines', () async {
        stateMachine.dispatch(const MyEvent(MyType.delegateWork));
        await expectLater(
          stateMachine.stream,
          emitsInOrder([
            const MyState(MyType.delegateWork),
            const WorkerState(WorkType.doWork),
            const WorkerState(WorkType.success),
            const MyState(MyType.success),
          ]),
        );

        stateMachine.dispatch(const MyEvent(MyType.delegateWork));
        await expectLater(
          stateMachine.stream,
          emitsInOrder([
            const MyState(MyType.delegateWork),
            const WorkerState(WorkType.doWork),
            const WorkerState(WorkType.success),
            const MyState(MyType.success),
          ]),
        );
      });
    });
  });
}

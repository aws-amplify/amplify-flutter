// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

      stateMachine.accept(const MyEvent(MyType.initial));
      expect(
        stateMachine.stream,
        neverEmits(anything),
      );

      await stateMachine.close();
    });

    test('dispatches correctly', () {
      stateMachine.accept(const MyEvent(MyType.doWork));
      expect(
        stateMachine.stream,
        emitsThrough(const MyState(MyType.success)),
      );
    });

    test('handles errors', () {
      stateMachine.accept(const MyEvent(MyType.tryWork));
      expect(
        stateMachine.stream,
        emitsThrough(const MyState(MyType.error)),
      );
    });

    group('subscribeTo', () {
      test('can listen to other machines', () {
        stateMachine.accept(const MyEvent(MyType.delegateWork));
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
        stateMachine.accept(const MyEvent(MyType.delegateWork));
        await expectLater(
          stateMachine.stream,
          emitsInOrder([
            const MyState(MyType.delegateWork),
            const WorkerState(WorkType.doWork),
            const WorkerState(WorkType.success),
            const MyState(MyType.success),
          ]),
        );

        stateMachine.accept(const MyEvent(MyType.delegateWork));
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

    test('queues calls to accept appropriately', () async {
      final tryWork1 = stateMachine.accept(const MyEvent(MyType.tryWork));
      final delegate = stateMachine.accept(
        const MyEvent(MyType.delegateWork),
      );
      final tryWork2 = stateMachine.accept(const MyEvent(MyType.tryWork));
      await expectLater(
        stateMachine.stream,
        emitsInOrder([
          const MyState(MyType.tryWork),
          const MyState(MyType.error),
          const MyState(MyType.delegateWork),
          const WorkerState(WorkType.doWork),
          const WorkerState(WorkType.success),
          const MyState(MyType.success),
          const MyState(MyType.tryWork),
          const MyState(MyType.error),
        ]),
      );
      expect(await tryWork1.completed, const MyState(MyType.error));
      expect(await delegate.completed, const MyState(MyType.success));
      expect(await tryWork2.completed, const MyState(MyType.error));
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:stack_trace/stack_trace.dart';
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

    group('handles errors', () {
      /// Creates a matcher originating at StateMachineManager.[method].
      ///
      /// The state machine should chain stack traces such that both the
      /// creation of the event and the exception are visible in the same trace.
      Matcher matchesChain(String method) {
        // On Web, stack traces are handled differently. While they are still
        // chained, method names and types are represented different so there
        // isn't much use trying to pin down specifics here.
        if (zIsWeb) return isA<StackTrace>();
        return isA<Chain>().having(
          (chain) => chain.traces.map((trace) => trace.toString()),
          'traces',
          containsAllInOrder([
            contains('MyStateMachine.doWork'),
            contains('StateMachineManager.$method'),
          ]),
        );
      }

      test('emitted from stream', () {
        expect(
          stateMachine.stream,
          emitsThrough(
            isA<MyErrorState>().having(
              (s) => s.stackTrace,
              'stackTrace',
              matchesChain('accept'),
            ),
          ),
        );
        stateMachine.accept(const MyEvent(MyType.tryWork));
      });

      test('accept', () async {
        final completion =
            await stateMachine.accept(const MyEvent(MyType.tryWork)).completed;
        expect(
          completion,
          isA<MyErrorState>().having(
            (s) => s.stackTrace,
            'stackTrace',
            matchesChain('accept'),
          ),
        );
      });

      test('acceptAndComplete', () async {
        try {
          await stateMachine.acceptAndComplete(const MyEvent(MyType.tryWork));
          fail(
            'acceptAndComplete should rethrow the exception from the '
            'state machine',
          );
        } on Exception catch (_, st) {
          expect(st, matchesChain('acceptAndComplete'));
        }
      });

      test('dispatch', () async {
        final completion = await stateMachine
            .dispatch(const MyEvent(MyType.tryWork))
            .completed;
        expect(
          completion,
          isA<MyErrorState>().having(
            (s) => s.stackTrace,
            'stackTrace',
            matchesChain('dispatch'),
          ),
        );
      });

      test('dispatchAndComplete', () async {
        try {
          await stateMachine.dispatchAndComplete(const MyEvent(MyType.tryWork));
          fail(
            'dispatchAndComplete should rethrow the exception from the '
            'state machine',
          );
        } on Exception catch (_, st) {
          expect(st, matchesChain('dispatchAndComplete'));
        }
      });
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

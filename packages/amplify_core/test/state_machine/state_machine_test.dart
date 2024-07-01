// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:test/test.dart';

import 'my_state_machine.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  late MyStateMachineManager manager;

  group('StateMachine', () {
    setUp(() {
      manager = MyStateMachineManager(DependencyManager());
    });

    test('dependency manager', () {
      expect(manager.get<MyStateMachineManager>(), manager);
      expect(manager.get<Dispatcher>(), manager);
      expect(manager.get<DependencyManager>(), manager);

      final stateMachine = manager.getOrCreate(MyStateMachine.type);
      expect(stateMachine.get<MyStateMachineManager>(), manager);
      expect(stateMachine.get<Dispatcher>(), manager);
      expect(stateMachine.get<DependencyManager>(), manager);
    });

    test('checkPrecondition blocks abberant events', () async {
      final currentState =
          manager.getOrCreate(MyStateMachine.type).currentState;
      expect(currentState.type, equals(MyType.initial));

      expect(
        manager.stream,
        neverEmits(anything),
      );
      await manager.accept(const MyEvent(MyType.initial)).completed;
      await manager.close();
    });

    test('dispatches correctly', () {
      manager.accept(const MyEvent(MyType.doWork)).ignore();
      expect(
        manager.stream,
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
          (chain) => chain.traces
              .expand((trace) => trace.frames)
              .map((frame) => frame.toString()),
          'frames',
          containsAllInOrder([
            contains('MyStateMachine.doWork'),
            contains('StateMachineManager.$method'),
            contains('state_machine_test.dart'),
          ]),
        );
      }

      test('emitted from stream', () {
        expect(
          manager.stream,
          emitsThrough(
            isA<MyErrorState>().having(
              (s) => s.stackTrace,
              'stackTrace',
              matchesChain('accept'),
            ),
          ),
        );
        manager.accept(const MyEvent(MyType.tryWork)).ignore();
      });

      test('accept', () async {
        final completion =
            await manager.accept(const MyEvent(MyType.tryWork)).completed;
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
          await manager.acceptAndComplete(const MyEvent(MyType.tryWork));
          fail(
            'acceptAndComplete should rethrow the exception from the '
            'state machine',
          );
        } on Exception catch (_, st) {
          expect(st, matchesChain('acceptAndComplete'));
        }
      });

      test('dispatch', () async {
        final completion =
            await manager.dispatch(const MyEvent(MyType.tryWork)).completed;
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
          await manager.dispatchAndComplete(const MyEvent(MyType.tryWork));
          fail(
            'dispatchAndComplete should rethrow the exception from the '
            'state machine',
          );
        } on Exception catch (_, st) {
          expect(st, matchesChain('dispatchAndComplete'));
        }
      });
    });

    group('cross-zone', () {
      test('success', () async {
        final completer = manager.accept(const MyEvent(MyType.doWork));
        final succeeds = completion(
          isA<MyState>().having((s) => s.type, 'type', MyType.success),
        );
        final expectations = <Future<void>>[];
        runZoned(() {
          final accepted = expectLater(
            completer.accepted,
            completes,
            reason: 'Should complete in forked zone',
          );
          final completed = expectLater(
            completer.completed,
            succeeds,
            reason: 'Should complete in forked zone',
          );
          expectations.addAll([accepted, completed]);
        });
        runZonedGuarded(
          () {
            final accepted = expectLater(
              completer.accepted,
              completes,
              reason: 'Should complete with different error zone',
            );
            final completed = expectLater(
              completer.completed,
              succeeds,
              reason: 'Should complete with different error zone',
            );
            expectations.addAll([accepted, completed]);
          },
          (e, st) => fail(e.toString()),
        );
        final accepted = expectLater(
          completer.accepted,
          completes,
          reason: 'Should complete in root zone',
        );
        final completed = expectLater(
          completer.completed,
          succeeds,
          reason: 'Should complete in root zone',
        );
        expectations.addAll([accepted, completed]);
        await Future.wait(expectations);
      });

      test('errors', () async {
        final completer = manager.accept(const MyEvent(MyType.failHard));
        final fails = throwsA(isA<StateError>());
        final expectations = <Future<void>>[];
        runZoned(() {
          final accepted = expectLater(
            completer.accepted,
            completes,
            reason: 'Should complete in forked zone',
          );
          final completed = expectLater(
            completer.completed,
            fails,
            reason: 'Should complete in forked zone',
          );
          expectations.addAll([accepted, completed]);
        });
        runZonedGuarded(
          () {
            final accepted = expectLater(
              completer.accepted,
              completes,
              reason: 'Should complete with different error zone',
            );
            final completed = expectLater(
              completer.completed,
              fails,
              reason: 'Should complete with different error zone',
            );
            expectations.addAll([accepted, completed]);
          },
          (e, st) => fail(e.toString()),
        );
        final accepted = expectLater(
          completer.accepted,
          completes,
          reason: 'Should complete in root zone',
        );
        final completed = expectLater(
          completer.completed,
          fails,
          reason: 'Should complete in root zone',
        );
        expectations.addAll([accepted, completed]);
        await Future.wait(expectations);
      });
    });

    group('failures', () {
      test('failed preconditions are recoverable', () async {
        expect(
          manager.stream,
          emitsInOrder([
            const MyState(MyType.doWork),
            const MyState(MyType.success),
            const MyState(MyType.error),
            const MyState(MyType.doWork),
            const MyState(MyType.success),
          ]),
        );
        await expectLater(
          (
            manager.accept(const MyEvent(MyType.doWork)).completed,
            manager.accept(const MyEvent(MyType.success)).completed,
            manager.accept(const MyEvent(MyType.failPrecondition)).completed,
            manager.accept(const MyEvent(MyType.doWork)).completed,
          ).wait,
          completes,
        );
      });

      test('hard failures are recoverable', () async {
        expect(
          manager.stream,
          emitsInOrder([
            const MyState(MyType.doWork),
            const MyState(MyType.success),
            const MyState(MyType.failHard),
            emitsError(isA<StateError>()),
            const MyState(MyType.doWork),
            const MyState(MyType.success),
          ]),
        );
        expect(
          manager.getOrCreate(MyStateMachine.type).stream,
          emitsInOrder([
            const MyState(MyType.doWork),
            const MyState(MyType.success),
            const MyState(MyType.failHard),
            emitsError(isA<StateError>()),
            const MyState(MyType.doWork),
            const MyState(MyType.success),
          ]),
        );
        await expectLater(
          (
            manager.accept(const MyEvent(MyType.doWork)).completed,
            manager.accept(const MyEvent(MyType.failHard)).completed,
            manager.accept(const MyEvent(MyType.doWork)).completed,
          ).wait,
          throwsA(
            isA<ParallelWaitError<_Future3Value, _Future3Error>>().having(
              (e) {
                final (v1, v2, v3) = e.values;
                final (e1, e2, e3) = e.errors;
                return [v1, v2, v3, e1, e2, e3];
              },
              'result',
              containsAllInOrder([
                isA<MyState>(),
                null,
                isA<MyState>(),
                null,
                isA<AsyncError>()
                    .having((e) => e.error, 'error', isA<StateError>()),
                null,
              ]),
            ),
          ),
        );
      });
    });

    group('subscribeTo', () {
      test('can listen to other machines', () {
        manager.accept(const MyEvent(MyType.delegateWork)).ignore();
        expect(
          manager.stream,
          emitsInOrder(const [
            MyState(MyType.delegateWork),
            WorkerState(WorkType.doWork),
            WorkerState(WorkType.success),
            MyState(MyType.success),
          ]),
        );
      });

      test('can listen multiple times to other machines', () async {
        manager.accept(const MyEvent(MyType.delegateWork)).ignore();
        await expectLater(
          manager.stream,
          emitsInOrder(const [
            MyState(MyType.delegateWork),
            WorkerState(WorkType.doWork),
            WorkerState(WorkType.success),
            MyState(MyType.success),
          ]),
        );

        manager.accept(const MyEvent(MyType.delegateWork)).ignore();
        await expectLater(
          manager.stream,
          emitsInOrder(const [
            MyState(MyType.delegateWork),
            WorkerState(WorkType.doWork),
            WorkerState(WorkType.success),
            MyState(MyType.success),
          ]),
        );
      });
    });

    test('queues calls to accept appropriately', () async {
      final tryWork1 = manager.accept(const MyEvent(MyType.tryWork));
      final delegate = manager.accept(
        const MyEvent(MyType.delegateWork),
      );
      final tryWork2 = manager.accept(const MyEvent(MyType.tryWork));
      await expectLater(
        manager.stream,
        emitsInOrder(const [
          MyState(MyType.tryWork),
          MyState(MyType.error),
          MyState(MyType.delegateWork),
          WorkerState(WorkType.doWork),
          WorkerState(WorkType.success),
          MyState(MyType.success),
          MyState(MyType.tryWork),
          MyState(MyType.error),
        ]),
      );
      expect(await tryWork1.completed, const MyState(MyType.error));
      expect(await delegate.completed, const MyState(MyType.success));
      expect(await tryWork2.completed, const MyState(MyType.error));
    });
  });
}

typedef _Future3Value = (
  StateMachineState?,
  StateMachineState?,
  StateMachineState?,
);
typedef _Future3Error = (
  AsyncError?,
  AsyncError?,
  AsyncError?,
);

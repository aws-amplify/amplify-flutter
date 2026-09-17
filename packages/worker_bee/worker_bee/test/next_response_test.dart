// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:test/test.dart';
import 'package:worker_bee/src/common.dart';
import 'package:worker_bee/src/exception/worker_bee_exception.dart';

class _TestWorker extends WorkerBeeCommon<String, String> {
  // ignore: close_sinks
  final StreamController<String> source = StreamController<String>();

  void attach() => stream = source.stream;

  void failWith(Object error) => completeError(error);

  @override
  String get name => 'TestWorker';

  @override
  String? get workerEntrypointOverride => null;

  @override
  Future<String?> run(
    Stream<String> listen,
    StreamSink<String> respond,
  ) async => null;

  @override
  Future<void> spawn({String? jsEntrypoint}) async {}
}

void main() {
  group('WorkerBeeCommon.nextResponse', () {
    test('returns the next response', () async {
      final worker = _TestWorker()..attach();
      final next = worker.nextResponse();
      worker.source.add('response');
      await expectLater(next, completion('response'));
    });

    test('throws an Exception when the stream closes without a '
        'response', () async {
      final worker = _TestWorker()..attach();
      final next = worker.nextResponse();
      await worker.source.close();

      await expectLater(
        next,
        throwsA(
          allOf(
            isA<Exception>(),
            isA<WorkerBeeException>(),
            isNot(isA<StateError>()),
          ),
        ),
      );
    });

    test('throws the exception reported by the worker', () async {
      final worker = _TestWorker()..attach();
      final next = worker.nextResponse();

      worker.failWith(WorkerBeeExceptionImpl('Worker quit unexpectedly'));
      await worker.source.close();

      await expectLater(
        next,
        throwsA(
          allOf(
            isA<Exception>(),
            isNot(isA<StateError>()),
            isA<WorkerBeeException>().having(
              (e) => e.toString(),
              'message',
              contains('Worker quit unexpectedly'),
            ),
          ),
        ),
      );
    });

    test('rethrows an Error reported by the worker', () async {
      final worker = _TestWorker()..attach();
      final next = worker.nextResponse();

      worker.failWith(StateError('worker crashed'));
      await worker.source.close();

      await expectLater(next, throwsA(isA<StateError>()));
    });
  });
}

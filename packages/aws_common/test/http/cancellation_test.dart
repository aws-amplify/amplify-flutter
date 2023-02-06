// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import 'cancellation_server_vm.dart'
    if (dart.library.js) 'cancellation_server_web.dart';
import 'http_common.dart';

void main() {
  clientTest(
    'cancellation',
    startServer,
    (client, httpServerQueue, httpServerChannel, createUri) {
      test('can cancel before sending request', () async {
        final request = AWSHttpRequest.get(createUri(''));
        final operation = client().send(request);
        expect(operation.requestProgress, emitsDone);
        expect(operation.responseProgress, emitsDone);
        await expectLater(operation.cancel(), completes);
        expect(operation.operation.isCanceled, true);
        expect(operation.response, throwsA(isA<CancellationException>()));
      });

      test('can cancel before receiving headers', () async {
        final request = AWSHttpRequest.get(createUri('/headers'));
        final operation = client().send(request);
        await expectLater(operation.cancel(), completes);
        expect(operation.requestProgress, emitsDone);
        expect(operation.responseProgress, emitsDone);
        expect(operation.operation.isCanceled, true);
        expect(operation.response, throwsA(isA<CancellationException>()));
      });

      test('can cancel before receiving full body', () async {
        final request = AWSHttpRequest.get(createUri('/body'));
        final operation = client().send(request);
        final response = await operation.response;
        await Future<void>.delayed(const Duration(milliseconds: 200));
        expect(operation.requestProgress, emitsDone);
        expect(operation.responseProgress, emitsDone);
        expect(
          response.body,
          emitsThrough(emitsError(isA<CancellationException>())),
        );
        await expectLater(operation.cancel(), completes);
      });

      test('can be cancelled via body subscription', () async {
        final request = AWSHttpRequest.get(createUri('/body'));
        final operation = client().send(request);
        final response = await operation.response;
        final subscription = response.body.listen(null);
        await Future<void>.delayed(const Duration(milliseconds: 100));
        expect(
          operation.requestProgress,
          emitsDone,
        );
        expect(
          operation.responseProgress,
          emitsDone,
        );
        await subscription.cancel();
      });

      test('can be cancelled via split body subscription', () async {
        final request = AWSHttpRequest.get(createUri('/body'));
        final operation = client().send(request);
        final response = await operation.response;
        final subscription = response.split().listen(null);
        await Future<void>.delayed(const Duration(milliseconds: 100));
        expect(
          operation.requestProgress,
          emitsDone,
        );
        expect(
          operation.responseProgress,
          emitsDone,
        );
        await subscription.cancel();
        await response.close();
      });

      test(
        'can cancel one of multiple concurrent requests without '
        'affecting others',
        () async {
          final request1 = AWSHttpRequest.get(createUri('/headers'));
          final operation1 = client().send(request1);
          // Allow op1 to establish connection
          await Future<void>.delayed(const Duration(milliseconds: 100));
          final request2 = AWSHttpRequest.get(createUri('/full'));
          final operation2 = client().send(request2);
          // Allow op2 to establish connection using same transport as op1
          await Future<void>.delayed(Duration.zero);
          await operation1.cancel();

          final response = await operation2.response;
          expect(operation2.requestProgress, emitsThrough(emitsDone));
          expect(operation2.responseProgress, emitsThrough(emitsDone));
          expect(response.body, emits(equals([1, 2, 3, 4, 5])));
        },
      );

      test('can call cancel multiple times synchronously', () async {
        final client_ = client();
        final request = AWSHttpRequest.get(createUri('/body'));
        final operation = client_.send(request);
        unawaited(operation.operation.cancel());
        await expectLater(client_.close(), completes);
      });
    },
  );
}

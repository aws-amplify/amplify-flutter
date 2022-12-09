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
        await expectLater(operation.cancel(), completes);
        expect(operation.requestProgress, emitsDone);
        expect(operation.responseProgress, emitsDone);
        expect(
          response.body,
          emitsThrough(emitsError(isA<CancellationException>())),
        );
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

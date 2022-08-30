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
        await Future<void>.delayed(const Duration(milliseconds: 500));
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
    },
  );
}

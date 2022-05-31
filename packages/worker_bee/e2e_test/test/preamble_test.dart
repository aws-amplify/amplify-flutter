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

@TestOn('browser')

import 'dart:html';

import 'package:test/test.dart';

void main() {
  Future<void> badAssignmentTest(String jsEntrypoint) async {
    final worker = Worker(jsEntrypoint);
    worker.postMessage('NoWorker');

    final errors = <Object>[];
    worker.onError.listen(errors.add);

    late dynamic data;
    await expectLater(
      worker.onMessage.first,
      completion(
        isA<MessageEvent>().having(
          (message) => data = message.data,
          'data',
          isA<List<Object?>>(),
        ),
      ),
    );
    worker.terminate();

    expect(errors, isEmpty);
    expect((data as List<Object?>).first, 'WorkerBeeExceptionImpl');
  }

  group('preamble', () {
    test('bad assignment', () {
      badAssignmentTest('packages/e2e_test/no_workers.js');
    });

    test('bad assignment (m, O4)', () {
      badAssignmentTest('packages/e2e_test/no_workers.min.js');
    });
  });
}

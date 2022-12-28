// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
      badAssignmentTest('packages/e2e/no_workers.debug.dart.js');
    });

    test('bad assignment (m, O4)', () {
      badAssignmentTest('packages/e2e/no_workers.release.dart.js');
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:async';
import 'dart:js_interop';

import 'package:test/test.dart';
import 'package:web/web.dart';

void main() {
  Future<void> badAssignmentTest(String jsEntrypoint) async {
    final worker = Worker(jsEntrypoint.toJS);
    worker.postMessage('NoWorker'.toJS);

    final errors = <Object>[];
    final Function errorCallback = errors.add;
    worker.onerror = errorCallback.toJS;

    final firstMessageCompleter = Completer<dynamic>();
    final Function messageCallback = firstMessageCompleter.complete;
    worker.onmessage = messageCallback.toJS;

    late dynamic data;
    await expectLater(
      firstMessageCompleter.future,
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

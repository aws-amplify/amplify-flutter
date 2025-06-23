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

    final errors = <MessageEvent>[];
    worker.onerror = errors.add.toJS;

    final firstMessageCompleter = Completer<MessageEvent>();
    void complete(MessageEvent event) {
      firstMessageCompleter.complete(event);
    }

    worker.onmessage = complete.toJS;

    late List<JSAny?> eventData;
    await expectLater(
      firstMessageCompleter.future,
      completion(
        isA<MessageEvent>().having(
          (message) {
            final data = message.data;
            if (!data.isA<JSArray<JSAny?>>()) return null;
            data as JSArray<JSAny?>;
            eventData = data.toDart;
            return eventData;
          },
          'data',
          isA<List<JSAny?>>(),
        ),
      ),
    );
    worker.terminate();

    expect(errors, isEmpty);
    final error = eventData.first;
    if (!error.isA<JSString>()) {
      fail('EventMessage.data.first is not an exception');
    } else {
      error as JSString;
      expect(error.toDart, 'WorkerBeeExceptionImpl');
    }
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

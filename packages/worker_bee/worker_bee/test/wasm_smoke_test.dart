// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('log entries are functional', () {
      final entry = WorkerLogEntry(
        level: LogLevel.debug,
        message: 'hello from wasm',
        loggerName: 'SmokeTest',
        local: false,
      );
      expect(entry.message, 'hello from wasm');
      expect(entry.local, isFalse);
      expect(entry, isA<LogEntry>());
    });
  });
}

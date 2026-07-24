// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:typed_data';

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

/// Smoke test: proves the web storage path compiles and runs under dart2wasm.
///
/// The IndexedDB implementation is heavy on `dart:js_interop` number
/// conversions (`toDartInt`, `JSNumber`), which behave differently on wasm
/// than dart2js. This exercises a real round-trip so those conversions are
/// verified, not just compiled.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue);
    });

    test('IndexedDB round-trip preserves record fields', () async {
      final storage = await createPlatformRecordStorage(
        identifier: 'smoke',
        storagePath: null,
        maxCacheBytes: 1024 * 1024,
        maxRecordsPerBatch: 500,
        maxBytesPerBatch: 1024 * 1024,
        maxRecordSizeBytes: 1024,
        dbPrefix: 'record_cache_smoke_',
        storeName: 'smoke_records',
      );
      addTearDown(storage.close);
      await storage.clearRecords();

      final data = Uint8List.fromList([1, 2, 3, 4, 5]);
      await storage.addRecord(
        RecordInput.now(
          data: data,
          streamName: 'stream-a',
          dataSize: data.length,
        ),
      );

      expect(await storage.getRecordCount(), 1);

      final byStream = await storage.getRecordsByStream();
      final records = byStream['stream-a']!;
      expect(records, hasLength(1));
      final record = records.single;
      // These come back through JSNumber.toDartInt / JSString.toDart.
      expect(record.streamName, 'stream-a');
      expect(record.dataSize, 5);
      expect(record.retryCount, 0);
      expect(record.data, data);
      expect(record.id, greaterThan(0));

      await storage.deleteRecords([record.id]);
      expect(await storage.getRecordCount(), 0);
    });
  });
}

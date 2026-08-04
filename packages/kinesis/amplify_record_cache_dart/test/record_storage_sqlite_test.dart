// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:typed_data';

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

/// VM counterpart to the browser IndexedDB round-trip in
/// `wasm_smoke_test.dart`: exercises the SQLite storage path
/// (`record_storage_sqlite.dart`) end to end so the native test job has real
/// coverage, not just a constructor check.
void main() {
  group('SqliteRecordStorage', () {
    late SqliteRecordStorage storage;

    setUp(() async {
      storage = await SqliteRecordStorage.create(
        database: RecordCacheDatabase.forTesting(NativeDatabase.memory()),
        maxCacheBytes: 1024 * 1024,
        maxRecordsPerBatch: 500,
        maxBytesPerBatch: 1024 * 1024,
        maxRecordSizeBytes: 1024,
      );
    });

    tearDown(() => storage.close());

    test('round-trip preserves record fields', () async {
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
      final record = byStream['stream-a']!.single;
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

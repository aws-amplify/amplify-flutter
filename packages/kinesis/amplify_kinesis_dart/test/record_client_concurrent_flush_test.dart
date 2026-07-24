// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for concurrent flush behavior.
///
/// Uses a [Completer]-controlled sender instead of wall-clock delays so
/// the test is deterministic and not timing-dependent.
///
/// VM-only: uses NativeDatabase (SQLite/FFI), which can't compile to Wasm.
@TestOn('vm')
library;

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordClient concurrent flush', () {
    test(
      'concurrent flush should return flushInProgress for second caller',
      () async {
        final db = createTestDatabase();
        final storage = SqliteRecordStorage(
          database: db,
          maxCacheBytes: 1024 * 1024,
          maxRecordsPerBatch: 500,
          maxBytesPerBatch: 10 * 1024 * 1024,
          maxRecordSizeBytes: 10 * 1024 * 1024,
        );
        final sender = _GatedSender();
        final client = RecordClient(
          storage: storage,
          sender: sender,
          maxRetries: 3,
        );

        // Seed records
        for (var i = 0; i < 5; i++) {
          await client.record(
            createKinesisRecordInputNow(
              data: Uint8List.fromList([i]),
              partitionKey: 'key$i',
              streamName: 'test-stream',
            ),
          );
        }

        // Launch flush1 — it will block inside sendBatch until we complete
        // the gate completer.
        final flush1 = client.flush();

        // Wait for the sender to be entered, proving flush1 holds _flushing.
        await sender.entered.future;

        // Now flush2 runs while flush1 is still in progress.
        final flush2Result = await client.flush();

        // flush2 should return immediately with flushInProgress: true.
        expect(
          flush2Result.flushInProgress,
          isTrue,
          reason: 'Second flush should report flushInProgress',
        );
        expect(flush2Result.recordsFlushed, equals(0));

        // Unblock flush1 so it can complete.
        sender.gate.complete();
        final flush1Result = await flush1;

        expect(flush1Result.recordsFlushed, equals(5));
        expect(flush1Result.flushInProgress, isFalse);

        await client.close();
      },
    );
  });
}

/// A sender that blocks inside [sendBatch] until [gate] is completed,
/// giving the test deterministic control over when the flush finishes.
class _GatedSender implements Sender {
  /// Completes when [sendBatch] is entered, signaling that the flush
  /// is in progress and holding the `_flushing` flag.
  final Completer<void> entered = Completer<void>();

  /// The test completes this to unblock [sendBatch].
  final Completer<void> gate = Completer<void>();

  @override
  Future<SendResult> sendBatch({
    required String streamName,
    required List<Record> records,
  }) async {
    // Signal that we're inside sendBatch (flush is in progress).
    if (!entered.isCompleted) entered.complete();

    // Block until the test says go.
    await gate.future;

    return SendResult(
      successfulIds: records.map((r) => r.id).toList(),
      failedIds: const [],
      retryableIds: const [],
    );
  }
}

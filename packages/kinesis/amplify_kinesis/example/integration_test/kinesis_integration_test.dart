// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Integration tests for AmplifyKinesisClient (Flutter) against a real
/// Kinesis Data Stream using pre-provisioned backend.
library;

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_kinesis/amplify_kinesis.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';

void main() {
  late AmplifyKinesisClient client;
  late AmplifyAuthCredentialsProvider credentialsProvider;

  setUpAll(() async {
    if (!isConfigured) {
      fail(
        'Test backend not configured. Run tool/pull_test_backend.sh or '
        'place amplify_outputs.dart in lib/.',
      );
    }

    await configureAmplify();
    credentialsProvider = await signInNewUser();
  });

  setUp(() async {
    client = await AmplifyKinesisClient.create(
      region: testRegion,
      credentialsProvider: credentialsProvider,
      options: const AmplifyKinesisClientOptions(
        maxRetries: 3,
        flushStrategy: FlushNone(),
      ),
    );
  });

  tearDown(() async {
    if (!client.isClosed) {
      await client.clearCache();
      await client.close();
    }
  });

  // -----------------------------------------------------------------
  // Core happy path
  // -----------------------------------------------------------------

  group('Core happy path', () {
    testWidgets('record and flush', (tester) async {
      final recordResult = await client.record(
        data: Uint8List.fromList(utf8.encode('test-record')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );
      expect(recordResult, isA<Ok<void>>());

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      final flushed = (flushResult as Ok<FlushData>).value.recordsFlushed;
      expect(flushed, greaterThan(0));
    });

    testWidgets('flush when empty returns zero', (tester) async {
      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      final data = (flushResult as Ok<FlushData>).value;
      expect(data.recordsFlushed, equals(0));
      expect(data.flushInProgress, isFalse);
    });

    testWidgets('record while disabled drops records', (tester) async {
      client.disable();

      final result = await client.record(
        data: Uint8List.fromList(utf8.encode('dropped-record')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );
      expect(result, isA<Ok<void>>());

      client.enable();
      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(0));
    });

    testWidgets('enable/disable lifecycle', (tester) async {
      // Record while enabled
      await client.record(
        data: Uint8List.fromList(utf8.encode('before-disable')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );

      client.disable();

      // Record while disabled — should be dropped
      await client.record(
        data: Uint8List.fromList(utf8.encode('while-disabled')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );

      client.enable();

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(1));
    });

    testWidgets('concurrent flush returns in-progress', (tester) async {
      // Seed some records so the flush has work to do
      for (var i = 0; i < 10; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('record-$i')),
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );
      }

      final results = await Future.wait([client.flush(), client.flush()]);

      final successes = results.whereType<Ok<FlushData>>().toList();
      expect(successes.length, equals(2));

      final flushDatas = successes.map((r) => r.value).toList();
      // At least one should have done actual work, and one may report
      // flushInProgress
      final anyFlushed = flushDatas.any((d) => d.recordsFlushed > 0);
      final anyInProgress = flushDatas.any((d) => d.flushInProgress);
      expect(anyFlushed || anyInProgress, isTrue);
    });
  });

  // -----------------------------------------------------------------
  // Cache behavior
  // -----------------------------------------------------------------

  group('Cache behavior', () {
    testWidgets('cache limit exceeded returns error', (tester) async {
      final smallCacheClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(
          cacheMaxBytes: 100,
          flushStrategy: FlushNone(),
        ),
      );

      try {
        final bigData = Uint8List(60);
        await smallCacheClient.record(
          data: bigData,
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        // This should exceed the 100-byte limit
        final result = await smallCacheClient.record(
          data: bigData,
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        expect(result, isA<Error<void>>());
        expect(
          (result as Error<void>).error,
          isA<KinesisLimitExceededException>(),
        );
      } finally {
        await smallCacheClient.clearCache();
        await smallCacheClient.close();
      }
    });

    testWidgets('clear cache removes all pending records', (tester) async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('to-be-cleared')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );

      final clearResult = await client.clearCache();
      expect(clearResult, isA<Ok<ClearCacheData>>());
      final cleared = (clearResult as Ok<ClearCacheData>).value.recordsCleared;
      expect(cleared, greaterThan(0));

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(0));
    });
  });

  // -----------------------------------------------------------------
  // Error paths
  // -----------------------------------------------------------------

  group('Error paths', () {
    testWidgets('flush with nonexistent stream does not block valid stream', (
      tester,
    ) async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('wrong-stream-record')),
        partitionKey: 'partition-1',
        streamName: 'nonexistent-stream-name',
      );
      await client.record(
        data: Uint8List.fromList(utf8.encode('valid-stream-record')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(1));

      final clearResult = await client.clearCache();
      expect(clearResult, isA<Ok<ClearCacheData>>());
      expect(
        (clearResult as Ok<ClearCacheData>).value.recordsCleared,
        equals(1),
      );
    });

    testWidgets(
      'flush with invalid credentials returns success with zero flushed',
      (tester) async {
        final badCredentials = _StaticCredentialsProvider();
        final badClient = await AmplifyKinesisClient.create(
          region: testRegion,
          credentialsProvider: badCredentials,
          options: const AmplifyKinesisClientOptions(
            flushStrategy: FlushNone(),
          ),
        );

        try {
          await badClient.record(
            data: Uint8List.fromList(utf8.encode('bad-creds-record')),
            partitionKey: 'partition-1',
            streamName: testStreamName,
          );

          // SDK exceptions are handled silently — flush returns success
          final flushResult = await badClient.flush();
          expect(flushResult, isA<Ok<FlushData>>());
          expect(
            (flushResult as Ok<FlushData>).value.recordsFlushed,
            equals(0),
          );
        } finally {
          await badClient.clearCache();
          await badClient.close();
        }
      },
    );

    testWidgets('oversized record is rejected and flush still works', (
      tester,
    ) async {
      final largePartitionKey = 'k' * 256;
      final oversizedData = Uint8List(10 * 1024 * 1024); // 10 MiB

      final oversizedResult = await client.record(
        data: oversizedData,
        partitionKey: largePartitionKey,
        streamName: testStreamName,
      );
      expect(oversizedResult, isA<Error<void>>());
      expect(
        (oversizedResult as Error<void>).error,
        isA<KinesisValidationException>(),
      );

      // Client should still work after rejection
      final validResult = await client.record(
        data: Uint8List.fromList(utf8.encode('still-works')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );
      expect(validResult, isA<Ok<void>>());

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(1));
    });
  });

  // -----------------------------------------------------------------
  // Retry exhaustion
  // -----------------------------------------------------------------

  group('Retry exhaustion', () {
    testWidgets('invalid stream record is dropped after maxRetries', (
      tester,
    ) async {
      const maxRetries = 5;
      final retryClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(
          maxRetries: maxRetries,
          flushStrategy: FlushNone(),
        ),
      );

      try {
        await retryClient.clearCache();

        await retryClient.record(
          data: Uint8List.fromList(utf8.encode('invalid-stream-record')),
          partitionKey: 'partition-1',
          streamName: 'nonexistent-stream-name',
        );
        await retryClient.record(
          data: Uint8List.fromList(utf8.encode('valid-stream-record')),
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        // First flush: valid record flushed, invalid stays
        final firstFlush = await retryClient.flush();
        expect(firstFlush, isA<Ok<FlushData>>());
        expect((firstFlush as Ok<FlushData>).value.recordsFlushed, equals(1));

        // Flush maxRetries more times to exhaust retries
        for (var i = 0; i < maxRetries; i++) {
          final result = await retryClient.flush();
          expect(result, isA<Ok<FlushData>>());
          expect((result as Ok<FlushData>).value.recordsFlushed, equals(0));
        }

        // Final flush: invalid record should have been evicted
        final finalFlush = await retryClient.flush();
        expect(finalFlush, isA<Ok<FlushData>>());
        expect((finalFlush as Ok<FlushData>).value.recordsFlushed, equals(0));

        // Confirm cache is truly empty
        final clearResult = await retryClient.clearCache();
        expect(clearResult, isA<Ok<ClearCacheData>>());
        expect(
          (clearResult as Ok<ClearCacheData>).value.recordsCleared,
          equals(0),
        );
      } finally {
        await retryClient.clearCache();
        await retryClient.close();
      }
    });
  });

  // -----------------------------------------------------------------
  // Stress tests
  // -----------------------------------------------------------------

  group('Stress tests', () {
    testWidgets('high volume record and flush', (tester) async {
      const count = 50;
      for (var i = 0; i < count; i++) {
        final result = await client.record(
          data: Uint8List.fromList(utf8.encode('stress-record-$i')),
          partitionKey: 'partition-${i % 5}',
          streamName: testStreamName,
        );
        expect(result, isA<Ok<void>>());
      }

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect(
        (flushResult as Ok<FlushData>).value.recordsFlushed,
        equals(count),
      );
    });

    testWidgets('repeated flush cycles', (tester) async {
      const cycles = 5;
      const recordsPerCycle = 5;
      var totalFlushed = 0;

      for (var cycle = 0; cycle < cycles; cycle++) {
        for (var i = 0; i < recordsPerCycle; i++) {
          await client.record(
            data: Uint8List.fromList(utf8.encode('cycle-$cycle-record-$i')),
            partitionKey: 'partition-1',
            streamName: testStreamName,
          );
        }
        final flushResult = await client.flush();
        expect(flushResult, isA<Ok<FlushData>>());
        totalFlushed += (flushResult as Ok<FlushData>).value.recordsFlushed;
      }

      expect(totalFlushed, equals(cycles * recordsPerCycle));
    });

    testWidgets('concurrent record and flush stress', (tester) async {
      const producers = 5;
      const recordsPerProducer = 20;
      const totalExpected = producers * recordsPerProducer;
      var totalFlushed = 0;
      var producersDone = false;

      // Flusher: calls flush() every 500ms until all producers are done
      final flusher = () async {
        while (!producersDone) {
          final result = await client.flush();
          if (result case Ok(:final value)) {
            totalFlushed += value.recordsFlushed;
          }
          await Future<void>.delayed(const Duration(milliseconds: 500));
        }
      }();

      // Producers: each records M events concurrently
      final producerFutures = List.generate(producers, (p) async {
        for (var i = 0; i < recordsPerProducer; i++) {
          await client.record(
            data: Uint8List.fromList(utf8.encode('stress-p$p-r$i')),
            partitionKey: 'partition-${p % 3}',
            streamName: testStreamName,
          );
        }
      });

      await Future.wait(producerFutures);
      producersDone = true;
      await flusher;

      // Final drain flush
      final drainResult = await client.flush();
      expect(drainResult, isA<Ok<FlushData>>());
      totalFlushed += (drainResult as Ok<FlushData>).value.recordsFlushed;

      // Second drain to confirm nothing is left
      final finalResult = await client.flush();
      expect(finalResult, isA<Ok<FlushData>>());
      expect((finalResult as Ok<FlushData>).value.recordsFlushed, equals(0));

      expect(totalFlushed, equals(totalExpected));
    });
  });

  // -----------------------------------------------------------------
  // Auto-flush
  // -----------------------------------------------------------------

  group('Auto-flush', () {
    testWidgets('default config auto-starts scheduler', (tester) async {
      // Default options use a long interval. We override to a short interval
      // to verify the scheduler auto-starts without an explicit enable() call.
      final defaultClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(
          flushStrategy: FlushInterval(interval: Duration(seconds: 3)),
        ),
      );
      // Note: no explicit enable() call — scheduler should auto-start

      try {
        await defaultClient.record(
          data: Uint8List.fromList(utf8.encode('auto-start-record')),
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        // Wait for auto-flush to trigger (3s interval + buffer)
        await tester.binding.delayed(const Duration(seconds: 6));

        // After auto-flush, a manual flush should find nothing left
        final flushResult = await defaultClient.flush();
        expect(flushResult, isA<Ok<FlushData>>());
        expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(0));
      } finally {
        await defaultClient.clearCache();
        await defaultClient.close();
      }
    });

    testWidgets('auto-flush triggers and drains records', (tester) async {
      final autoFlushClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(
          flushStrategy: FlushInterval(interval: Duration(seconds: 5)),
        ),
      );

      try {
        await autoFlushClient.record(
          data: Uint8List.fromList(utf8.encode('auto-flush-record')),
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        // Wait for auto-flush to trigger (5s interval + buffer)
        await tester.binding.delayed(const Duration(seconds: 8));

        // After auto-flush, a manual flush should find nothing left
        final flushResult = await autoFlushClient.flush();
        expect(flushResult, isA<Ok<FlushData>>());
        expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(0));
      } finally {
        await autoFlushClient.clearCache();
        await autoFlushClient.close();
      }
    });
  });

  // -----------------------------------------------------------------
  // Partition key validation
  // -----------------------------------------------------------------

  group('Partition key validation', () {
    testWidgets('record with max 256 emoji code points and flush', (
      tester,
    ) async {
      // Each emoji (😀) is 1 Unicode code point but 4 bytes in UTF-8.
      const emoji = '😀';
      final emojiPartitionKey = emoji * 256;

      expect(emojiPartitionKey.runes.length, equals(256));
      expect(utf8.encode(emojiPartitionKey).length, equals(1024));

      final result = await client.record(
        data: Uint8List.fromList(
          utf8.encode('test-data-with-emoji-partition-key'),
        ),
        partitionKey: emojiPartitionKey,
        streamName: testStreamName,
      );
      expect(result, isA<Ok<void>>());

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(1));
    });
  });

  // -----------------------------------------------------------------
  // PutRecords size limits
  // -----------------------------------------------------------------

  group('PutRecords size limits', () {
    testWidgets('flush large payload with large partition keys', (
      tester,
    ) async {
      final largeClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(
          cacheMaxBytes: 12 * 1024 * 1024, // 12 MB
          flushStrategy: FlushNone(),
        ),
      );

      try {
        // Each record: ~50 KB data + ~200-char partition key ≈ 51 KB
        // 210 records ≈ 10.5 MB total (exceeds 10 MiB PutRecords limit)
        const recordDataSize = 50 * 1024;
        const recordCount = 210;

        for (var i = 0; i < recordCount; i++) {
          final partitionKey = '${'k' * 200}-$i';
          final data = Uint8List(recordDataSize);
          final result = await largeClient.record(
            data: data,
            partitionKey: partitionKey,
            streamName: testStreamName,
          );
          expect(result, isA<Ok<void>>());
        }

        // First flush: sends up to 10 MiB worth of records
        final flush1 = await largeClient.flush();
        expect(flush1, isA<Ok<FlushData>>());
        final flushed1 = (flush1 as Ok<FlushData>).value.recordsFlushed;
        expect(flushed1, greaterThan(0));

        // Second flush: sends the remaining records
        final flush2 = await largeClient.flush();
        expect(flush2, isA<Ok<FlushData>>());
        final flushed2 = (flush2 as Ok<FlushData>).value.recordsFlushed;

        expect(flushed1 + flushed2, equals(recordCount));

        // Third flush: nothing left
        final flush3 = await largeClient.flush();
        expect(flush3, isA<Ok<FlushData>>());
        expect((flush3 as Ok<FlushData>).value.recordsFlushed, equals(0));
      } finally {
        await largeClient.clearCache();
        await largeClient.close();
      }
    });
  });

  // -----------------------------------------------------------------
  // Persistence
  // -----------------------------------------------------------------

  group('Persistence', () {
    testWidgets('records persist across client instances', (tester) async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('persist-test')),
        partitionKey: 'persistence-test',
        streamName: testStreamName,
      );

      await client.close();

      final newClient = await AmplifyKinesisClient.create(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        options: const AmplifyKinesisClientOptions(flushStrategy: FlushNone()),
      );

      try {
        final flushResult = await newClient.flush();
        expect(flushResult, isA<Ok<FlushData>>());
        expect(
          (flushResult as Ok<FlushData>).value.recordsFlushed,
          greaterThan(0),
        );
      } finally {
        await newClient.close();
      }
    });
  });

  // -----------------------------------------------------------------
  // Escape hatch
  // -----------------------------------------------------------------

  group('Escape hatch', () {
    testWidgets('kinesisClient is accessible', (tester) async {
      expect(client.kinesisClient, isNotNull);
    });
  });
}

/// Static credentials provider with fake keys for testing error paths.
class _StaticCredentialsProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async => const StaticCredentials(
    'AKIAIOSFODNN7EXAMPLE',
    'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
  );
}

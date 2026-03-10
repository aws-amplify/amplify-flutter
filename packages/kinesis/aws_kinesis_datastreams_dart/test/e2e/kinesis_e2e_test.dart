// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// End-to-end tests for the Kinesis Data Streams library.
///
/// These tests mirror the Android instrumentation tests in
/// `KinesisDataStreamsInstrumentationTest.kt` and verify the library works
/// correctly against real AWS resources using Cognito-authenticated
/// credentials.
///
/// Run with: dart test test/e2e/ --tags=e2e --run-skipped
@Tags(['e2e'])
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AWSCredentials, Ok, Error, StaticCredentials;
import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart';
import 'package:test/test.dart';

import 'cognito_auth_helper.dart';
import 'test_config.dart';

void main() {
  late AmplifyKinesisClient client;
  late Directory tempDir;
  late CognitoCredentialsProvider credentialsProvider;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('kinesis_e2e_test_');

    final authHelper = CognitoAuthHelper(amplifyAuthConfig!);
    credentialsProvider = CognitoCredentialsProvider(authHelper);

    // Pre-authenticate to fail fast if auth is broken.
    await credentialsProvider.resolve();
  });

  setUp(() {
    client = AmplifyKinesisClient(
      region: testRegion,
      credentialsProvider: credentialsProvider,
      storagePath: tempDir.path,
      options: AmplifyKinesisClientOptions(
        maxRetries: 3,
        flushStrategy: const KinesisDataStreamsNone(),
      ),
    );
  });

  tearDown(() async {
    if (!client.isClosed) {
      await client.clearCache();
      await client.close();
    }
  });

  tearDownAll(() async {
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  });

  // -----------------------------------------------------------------
  // Core happy path
  // -----------------------------------------------------------------

  group('Core happy path', () {
    test('record and flush', () async {
      final result = await client.record(
        data: Uint8List.fromList(utf8.encode('test-record')),
        partitionKey: 'partition-1',
        streamName: testStreamName,
      );
      expect(result, isA<Ok<void>>());

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      final flushed = (flushResult as Ok<FlushData>).value.recordsFlushed;
      expect(flushed, greaterThan(0));
    });

    test('flush when empty returns zero', () async {
      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      final data = (flushResult as Ok<FlushData>).value;
      expect(data.recordsFlushed, equals(0));
      expect(data.flushInProgress, isFalse);
    });

    test('record while disabled drops records', () async {
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

    test('enable/disable lifecycle', () async {
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
  });

  // -----------------------------------------------------------------
  // Cache behavior
  // -----------------------------------------------------------------

  group('Cache behavior', () {
    test('cache limit exceeded returns error', () async {
      final smallCacheClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          cacheMaxBytes: 100, // 100 bytes
          flushStrategy: const KinesisDataStreamsNone(),
        ),
      );

      try {
        final bigData = Uint8List(60); // 60 bytes
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

    test('clear cache removes all pending records', () async {
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
    test('flush with nonexistent stream does not block valid stream', () async {
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

      await client.clearCache();
    });

    test(
      'flush with invalid credentials returns success with zero flushed',
      () async {
        final badCredentials = _StaticCredentialsProvider();
        final badClient = AmplifyKinesisClient(
          region: testRegion,
          credentialsProvider: badCredentials,
          storagePath: tempDir.path,
          options: AmplifyKinesisClientOptions(
            flushStrategy: const KinesisDataStreamsNone(),
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

    test('oversized record is rejected and flush still works', () async {
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
    test('invalid stream record is dropped after maxRetries', () async {
      const maxRetries = 5;
      final retryClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          maxRetries: maxRetries,
          flushStrategy: const KinesisDataStreamsNone(),
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

        // Flush maxRetries more times to exhaust retries on the invalid record
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
    test('high volume record and flush', () async {
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

    test('repeated flush cycles', () async {
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

    test('concurrent record and flush stress', () async {
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
    test('auto-flush triggers and drains records', () async {
      final autoFlushClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          flushStrategy: const KinesisDataStreamsInterval(
            interval: Duration(seconds: 5),
          ),
        ),
      );

      try {
        await autoFlushClient.record(
          data: Uint8List.fromList(utf8.encode('auto-flush-record')),
          partitionKey: 'partition-1',
          streamName: testStreamName,
        );

        // Wait for auto-flush to trigger (5s interval + buffer)
        await Future<void>.delayed(const Duration(seconds: 8));

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
    test('record with max 256 emoji code points and flush', () async {
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
    test('flush large payload with large partition keys', () async {
      final largeClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          cacheMaxBytes: 12 * 1024 * 1024, // 12 MB
          flushStrategy: const KinesisDataStreamsNone(),
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

        final flush1 = await largeClient.flush();
        expect(flush1, isA<Ok<FlushData>>());
        expect(
          (flush1 as Ok<FlushData>).value.recordsFlushed,
          equals(recordCount),
        );

        // Second flush: nothing left
        final flush2 = await largeClient.flush();
        expect(flush2, isA<Ok<FlushData>>());
        expect((flush2 as Ok<FlushData>).value.recordsFlushed, equals(0));
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
    test('records persist across client instances', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('persist-test')),
        partitionKey: 'persistence-test',
        streamName: testStreamName,
      );

      await client.close();

      final newClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          flushStrategy: const KinesisDataStreamsNone(),
        ),
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
    test('kinesisClient is accessible', () {
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

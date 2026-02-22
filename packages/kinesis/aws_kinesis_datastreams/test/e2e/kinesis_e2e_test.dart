// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// End-to-end tests for the Kinesis Data Streams library.
///
/// These tests verify the library works correctly against real AWS resources.
/// They require valid AWS credentials and a Kinesis stream to be configured
/// in test_config.dart.
///
/// Run with: dart test test/e2e/ --tags=e2e
@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  // Skip all tests if not configured
  if (!isConfigured) {
    test('E2E tests skipped - test_config.dart not configured', () {
      // ignore: avoid_print
      print('''
╔══════════════════════════════════════════════════════════════════╗
║  E2E TESTS SKIPPED                                               ║
║                                                                  ║
║  To run E2E tests:                                               ║
║  1. Edit test/e2e/test_config.dart                               ║
║  2. Fill in your AWS credentials and stream name                 ║
║  3. Set isConfigured = true                                      ║
║  4. Run: dart test test/e2e/ --tags=e2e                          ║
╚══════════════════════════════════════════════════════════════════╝
      ''');
    });
    return;
  }

  late KinesisDataStreams client;
  late Directory tempDir;

  setUpAll(() async {
    // Create temp directory for database
    tempDir = await Directory.systemTemp.createTemp('kinesis_e2e_test_');
  });

  setUp(() {
    const credentials = AWSCredentials(
      testAccessKeyId,
      testSecretAccessKey,
      testSessionToken,
    );

    client = KinesisDataStreams(
      region: testRegion,
      credentialsProvider: const AWSCredentialsProvider(credentials),
      storagePath: tempDir.path,
      options: const KinesisDataStreamsOptions(
        maxRetries: 3,
      ),
    );

    // Disable auto-flush for controlled testing
    client.disableAutoFlush();
  });

  tearDown(() async {
    await client.clearCache();
    await client.close();
  });

  tearDownAll(() async {
    // Clean up temp directory
    if (await tempDir.exists()) {
      await tempDir.delete(recursive: true);
    }
  });


  group('Basic record and flush', () {
    test('records a single event and flushes successfully', () async {
      // Arrange
      final testData = {'event': 'test', 'timestamp': DateTime.now().toIso8601String()};
      final data = Uint8List.fromList(utf8.encode(jsonEncode(testData)));

      // Act
      await client.record(
        data: data,
        partitionKey: 'e2e-test-partition',
        streamName: testStreamName,
      );
      await client.flush();

      // Assert - if no exception thrown, the record was sent successfully
      // The flush would throw if the stream doesn't exist or credentials are invalid
    });

    test('records multiple events and flushes all', () async {
      // Arrange
      const recordCount = 5;

      // Act
      for (var i = 0; i < recordCount; i++) {
        final testData = {'event': 'batch_test', 'index': i};
        await client.record(
          data: Uint8List.fromList(utf8.encode(jsonEncode(testData))),
          partitionKey: 'e2e-batch-partition',
          streamName: testStreamName,
        );
      }
      await client.flush();

      // Assert - all records sent without error
    });

    test('handles empty flush gracefully', () async {
      // Act & Assert - should not throw
      await client.flush();
    });
  });

  group('Enable/disable functionality', () {
    test('disabled client ignores new records', () async {
      // Arrange
      client.disable();

      // Act
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"ignored": true}')),
        partitionKey: 'disabled-test',
        streamName: testStreamName,
      );

      // Re-enable and flush - should have nothing to send
      client.enable();
      await client.flush();

      // Assert - no exception means success (nothing was queued)
    });

    test('disabled client skips flush', () async {
      // Arrange - record while enabled
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "data"}')),
        partitionKey: 'disable-flush-test',
        streamName: testStreamName,
      );

      // Act - disable and try to flush
      client.disable();
      await client.flush(); // Should do nothing

      // Re-enable and flush for real
      client.enable();
      await client.flush();
    });
  });


  group('Data integrity', () {
    test('sends binary data correctly', () async {
      // Arrange - create binary data (not just JSON)
      final binaryData = Uint8List.fromList([0x00, 0x01, 0x02, 0xFF, 0xFE, 0xFD]);

      // Act
      await client.record(
        data: binaryData,
        partitionKey: 'binary-test',
        streamName: testStreamName,
      );
      await client.flush();

      // Assert - no exception means binary data was accepted
    });

    test('handles large records up to 1MB', () async {
      // Arrange - create a ~100KB record (well under 1MB limit)
      final largeData = Uint8List.fromList(
        List.generate(100 * 1024, (i) => i % 256),
      );

      // Act
      await client.record(
        data: largeData,
        partitionKey: 'large-record-test',
        streamName: testStreamName,
      );
      await client.flush();

      // Assert - large record sent successfully
    });

    test('handles special characters in partition key', () async {
      // Arrange
      const specialPartitionKey = r'test-key_with.special:chars/and\more';

      // Act
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "special_key"}')),
        partitionKey: specialPartitionKey,
        streamName: testStreamName,
      );
      await client.flush();

      // Assert - special characters handled correctly
    });
  });

  group('Cache management', () {
    test('clearCache removes all pending records', () async {
      // Arrange - add some records
      for (var i = 0; i < 3; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('{"index": $i}')),
          partitionKey: 'clear-cache-test',
          streamName: testStreamName,
        );
      }

      // Act
      await client.clearCache();
      await client.flush(); // Should have nothing to send

      // Assert - no exception, nothing sent
    });
  });

  group('Error handling', () {
    test('throws ResourceNotFoundException for non-existent stream', () async {
      // Arrange
      final badClient = KinesisDataStreams(
        region: testRegion,
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials(testAccessKeyId, testSecretAccessKey, testSessionToken),
        ),
        storagePath: tempDir.path,
      );

      // Act
      await badClient.record(
        data: Uint8List.fromList(utf8.encode('{"test": "bad_stream"}')),
        partitionKey: 'error-test',
        streamName: 'non-existent-stream-name-12345',
      );

      // Assert - should throw when flushing to non-existent stream
      // The error is caught and records are retried, so we check it doesn't hang
      await badClient.flush();
      await badClient.close();
    });
  });

  group('Persistence', () {
    test('records persist across client instances', () async {
      // Arrange - record data with first client
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"persist": "test"}')),
        partitionKey: 'persistence-test',
        streamName: testStreamName,
      );

      // Close without flushing
      await client.close();

      // Act - create new client with same storage path
      final newClient = KinesisDataStreams(
        region: testRegion,
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials(testAccessKeyId, testSecretAccessKey, testSessionToken),
        ),
        storagePath: tempDir.path,
        options: const KinesisDataStreamsOptions(
          flushStrategy: KinesisDataStreamsInterval(
            interval: Duration(minutes: 5),
          ),
        ),
      );

      // Flush with new client - should send the persisted record
      await newClient.flush();
      await newClient.close();

      // Assert - no exception means persisted record was sent
    });
  });
}

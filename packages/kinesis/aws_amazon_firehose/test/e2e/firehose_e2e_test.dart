// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// End-to-end tests for the Amazon Data Firehose library.
///
/// These tests verify the library works correctly against real AWS resources.
/// They require valid AWS credentials and a Firehose delivery stream to be
/// configured in test_config.dart.
///
/// Run with: dart test test/e2e/ --tags=e2e
@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:aws_amazon_firehose/aws_amazon_firehose.dart';
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
║  2. Fill in your AWS credentials and delivery stream name        ║
║  3. Set isConfigured = true                                      ║
║  4. Run: dart test test/e2e/ --tags=e2e                          ║
╚══════════════════════════════════════════════════════════════════╝
      ''');
    });
    return;
  }

  late AmplifyFirehoseClient client;
  late Directory tempDir;

  setUpAll(() async {
    // Create temp directory for database
    tempDir = await Directory.systemTemp.createTemp('firehose_e2e_test_');
  });

  setUp(() {
    client = AmplifyFirehoseClient(
      region: testRegion,
      credentialsProvider: _StaticProvider(_makeCredentials()),
      storagePath: tempDir.path,
      options: AmplifyFirehoseClientOptions(
        maxRetries: 3,
      ),
    );

    // Disable auto-flush for controlled testing
    client.disableAutoFlush();
  });

  tearDown(() async {
    if (!client.isClosed) {
      await client.clearCache();
      await client.close();
    }
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
      final testData = {
        'event': 'test',
        'timestamp': DateTime.now().toIso8601String(),
      };
      final data = Uint8List.fromList(utf8.encode(jsonEncode(testData)));

      // Act
      await client.record(
        data: data,
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();

      // Assert
      expect(result.recordsFlushed, equals(1));
    });

    test('records multiple events and flushes all', () async {
      // Arrange
      const recordCount = 5;

      // Act
      for (var i = 0; i < recordCount; i++) {
        final testData = {'event': 'batch_test', 'index': i};
        await client.record(
          data: Uint8List.fromList(utf8.encode(jsonEncode(testData))),
          deliveryStreamName: testDeliveryStreamName,
        );
      }
      final result = await client.flush();

      // Assert
      expect(result.recordsFlushed, equals(recordCount));
    });

    test('handles empty flush gracefully', () async {
      // Act & Assert - should not throw
      final result = await client.flush();
      expect(result.recordsFlushed, equals(0));
    });
  });

  group('Enable/disable functionality', () {
    test('disabled client ignores new records', () async {
      // Arrange
      client.disable();

      // Act
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"ignored": true}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      // Re-enable and flush - should have nothing to send
      client.enable();
      final result = await client.flush();

      // Assert
      expect(result.recordsFlushed, equals(0));
    });

    test('disabled client skips flush', () async {
      // Arrange - record while enabled
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "data"}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      // Act - disable and try to flush
      client.disable();
      final disabledResult = await client.flush();
      expect(disabledResult.recordsFlushed, equals(0));

      // Re-enable and flush for real
      client.enable();
      final enabledResult = await client.flush();
      expect(enabledResult.recordsFlushed, equals(1));
    });
  });

  group('Data integrity', () {
    test('sends binary data correctly', () async {
      // Arrange - create binary data (not just JSON)
      final binaryData =
          Uint8List.fromList([0x00, 0x01, 0x02, 0xFF, 0xFE, 0xFD]);

      // Act
      await client.record(
        data: binaryData,
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();

      // Assert - binary data was accepted
      expect(result.recordsFlushed, equals(1));
    });

    test('handles large records up to 1MB', () async {
      // Arrange - create a ~100KB record (well under 1MB limit)
      final largeData = Uint8List.fromList(
        List.generate(100 * 1024, (i) => i % 256),
      );

      // Act
      await client.record(
        data: largeData,
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();

      // Assert - large record sent successfully
      expect(result.recordsFlushed, equals(1));
    });
  });

  group('Cache management', () {
    test('clearCache removes all pending records', () async {
      // Arrange - add some records
      for (var i = 0; i < 3; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('{"index": $i}')),
          deliveryStreamName: testDeliveryStreamName,
        );
      }

      // Act
      final clearResult = await client.clearCache();
      expect(clearResult.recordsCleared, equals(3));

      final flushResult = await client.flush();
      expect(flushResult.recordsFlushed, equals(0));
    });
  });

  group('Error handling', () {
    test('handles non-existent delivery stream', () async {
      // Arrange
      final badClient = AmplifyFirehoseClient(
        region: testRegion,
        credentialsProvider: _StaticProvider(_makeCredentials()),
        storagePath: tempDir.path,
      );

      // Act
      await badClient.record(
        data: Uint8List.fromList(utf8.encode('{"test": "bad_stream"}')),
        deliveryStreamName: 'non-existent-delivery-stream-12345',
      );

      // Assert - should handle error gracefully (records are retried)
      await badClient.flush();
      await badClient.close();
    });
  });

  group('Persistence', () {
    test('records persist across client instances', () async {
      // Arrange - record data with first client
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"persist": "test"}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      // Close without flushing
      await client.close();

      // Act - create new client with same storage path
      final newClient = AmplifyFirehoseClient(
        region: testRegion,
        credentialsProvider: _StaticProvider(_makeCredentials()),
        storagePath: tempDir.path,
        options: AmplifyFirehoseClientOptions(
          flushStrategy: AmazonDataFirehoseInterval(
            interval: Duration(minutes: 5),
          ),
        ),
      );

      // Flush with new client - should send the persisted record
      final result = await newClient.flush();
      expect(result.recordsFlushed, equals(1));
      await newClient.close();
    });
  });
}

/// Creates credentials from test config, handling optional session token.
AWSCredentials _makeCredentials() {
  if (testSessionToken != null) {
    return TemporaryCredentials(
      testAccessKeyId,
      testSecretAccessKey,
      testSessionToken!,
      DateTime.now().add(const Duration(hours: 1)),
    );
  }
  return StaticCredentials(testAccessKeyId, testSecretAccessKey);
}

/// Simple credentials provider for E2E tests.
class _StaticProvider implements AWSCredentialsProvider<AWSCredentials> {
  const _StaticProvider(this._credentials);
  final AWSCredentials _credentials;

  @override
  Future<AWSCredentials> resolve() async => _credentials;
}

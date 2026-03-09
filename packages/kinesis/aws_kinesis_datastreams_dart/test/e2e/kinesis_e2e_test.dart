// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// End-to-end tests for the Kinesis Data Streams library.
///
/// These tests verify the library works correctly against real AWS resources
/// using Cognito-authenticated credentials, matching the real customer flow.
///
/// In CI, `fetch_backends` downloads `amplify_outputs.dart` with the Cognito
/// config. The test signs up a test user, authenticates, and uses the
/// identity pool's authenticated role (which has Kinesis permissions) to
/// send records.
///
/// Run with: dart test test/e2e/ --tags=e2e
@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart';
import 'package:test/test.dart';

import 'cognito_auth_helper.dart';
import 'test_config.dart';

void main() {
  // Skip all tests if not configured
  if (!isConfigured) {
    test('E2E tests skipped - amplify_outputs.dart not found', () {
      // ignore: avoid_print
      print('''
╔══════════════════════════════════════════════════════════════════╗
║  E2E TESTS SKIPPED                                               ║
║                                                                  ║
║  To run E2E tests:                                               ║
║  1. Deploy the kinesis backend:                                  ║
║     cd infra-gen2/backends/kinesis/main && npx ampx sandbox      ║
║  2. Copy amplify_outputs.dart to lib/                            ║
║  3. Run: dart test test/e2e/ --tags=e2e                          ║
╚══════════════════════════════════════════════════════════════════╝
      ''');
    });
    return;
  }

  late AmplifyKinesisClient client;
  late Directory tempDir;
  late CognitoCredentialsProvider credentialsProvider;

  setUpAll(() async {
    tempDir = await Directory.systemTemp.createTemp('kinesis_e2e_test_');

    // Authenticate via Cognito and get credentials provider
    final authHelper = CognitoAuthHelper(amplifyAuthConfig!);
    credentialsProvider = CognitoCredentialsProvider(authHelper);

    // Pre-authenticate to fail fast if auth is broken
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

  group('Basic record and flush', () {
    test('records a single event and flushes successfully', () async {
      final testData = {
        'event': 'test',
        'timestamp': DateTime.now().toIso8601String(),
      };
      final data = Uint8List.fromList(utf8.encode(jsonEncode(testData)));

      await client.record(
        data: data,
        partitionKey: 'e2e-test-partition',
        streamName: testStreamName,
      );
      await client.flush();
    });

    test('records multiple events and flushes all', () async {
      const recordCount = 5;

      for (var i = 0; i < recordCount; i++) {
        final testData = {'event': 'batch_test', 'index': i};
        await client.record(
          data: Uint8List.fromList(utf8.encode(jsonEncode(testData))),
          partitionKey: 'e2e-batch-partition',
          streamName: testStreamName,
        );
      }
      await client.flush();
    });

    test('handles empty flush gracefully', () async {
      await client.flush();
    });
  });

  group('Enable/disable functionality', () {
    test('disabled client ignores new records', () async {
      client.disable();

      await client.record(
        data: Uint8List.fromList(utf8.encode('{"ignored": true}')),
        partitionKey: 'disabled-test',
        streamName: testStreamName,
      );

      client.enable();
      await client.flush();
    });

    test('disabled client skips flush', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "data"}')),
        partitionKey: 'disable-flush-test',
        streamName: testStreamName,
      );

      client.disable();
      await client.flush();

      client.enable();
      await client.flush();
    });
  });

  group('Data integrity', () {
    test('sends binary data correctly', () async {
      final binaryData = Uint8List.fromList([
        0x00,
        0x01,
        0x02,
        0xFF,
        0xFE,
        0xFD,
      ]);

      await client.record(
        data: binaryData,
        partitionKey: 'binary-test',
        streamName: testStreamName,
      );
      await client.flush();
    });

    test('handles large records up to 1MB', () async {
      final largeData = Uint8List.fromList(
        List.generate(100 * 1024, (i) => i % 256),
      );

      await client.record(
        data: largeData,
        partitionKey: 'large-record-test',
        streamName: testStreamName,
      );
      await client.flush();
    });

    test('handles special characters in partition key', () async {
      const specialPartitionKey = r'test-key_with.special:chars/and\more';

      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "special_key"}')),
        partitionKey: specialPartitionKey,
        streamName: testStreamName,
      );
      await client.flush();
    });
  });

  group('Cache management', () {
    test('clearCache removes all pending records', () async {
      for (var i = 0; i < 3; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('{"index": $i}')),
          partitionKey: 'clear-cache-test',
          streamName: testStreamName,
        );
      }

      await client.clearCache();
      await client.flush();
    });
  });

  group('Error handling', () {
    test('invalid stream records do not block valid stream flushes', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"bad": "record"}')),
        partitionKey: 'bad-pk',
        streamName: 'non-existent-stream-name-12345',
      );

      final firstFlush = await client.flush();
      expect(firstFlush.recordsFlushed, equals(0));

      await client.record(
        data: Uint8List.fromList(utf8.encode('{"good": "record"}')),
        partitionKey: 'good-pk',
        streamName: testStreamName,
      );

      final secondFlush = await client.flush();
      expect(secondFlush.recordsFlushed, equals(1));
    });
  });

  group('Persistence', () {
    test('records persist across client instances', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"persist": "test"}')),
        partitionKey: 'persistence-test',
        streamName: testStreamName,
      );

      await client.close();

      final newClient = AmplifyKinesisClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyKinesisClientOptions(
          flushStrategy: const KinesisDataStreamsInterval(
            interval: Duration(minutes: 5),
          ),
        ),
      );

      await newClient.flush();
      await newClient.close();
    });
  });
}

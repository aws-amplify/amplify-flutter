// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// End-to-end tests for the Amazon Data Firehose library.
///
/// These tests verify the library works correctly against real AWS resources
/// using Cognito-authenticated credentials, matching the real customer flow.
///
/// In CI, `fetch_backends` downloads `amplify_outputs.dart` with the Cognito
/// config. The test signs up a test user, authenticates, and uses the
/// identity pool's authenticated role (which has Firehose permissions) to
/// send records.
///
/// Run with: dart test test/e2e/ --tags=e2e
@Tags(['e2e'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:aws_amazon_firehose/aws_amazon_firehose.dart';
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

  late AmplifyFirehoseClient client;
  late Directory tempDir;
  late CognitoCredentialsProvider credentialsProvider;

  setUpAll(() async {
    // Create temp directory for database
    tempDir = await Directory.systemTemp.createTemp('firehose_e2e_test_');

    // Authenticate via Cognito and get credentials provider
    final authHelper = CognitoAuthHelper(amplifyAuthConfig!);
    credentialsProvider = CognitoCredentialsProvider(authHelper);

    // Pre-authenticate to fail fast if auth is broken
    await credentialsProvider.resolve();
  });

  setUp(() {
    client = AmplifyFirehoseClient(
      region: testRegion,
      credentialsProvider: credentialsProvider,
      storagePath: tempDir.path,
      options: AmplifyFirehoseClientOptions(
        maxRetries: 3,
      ),
    );

    // Disable auto-flush for controlled testing
    // ignore: cascade_invocations
    client.disableAutoFlush();
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
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();
      expect(result.recordsFlushed, equals(1));
    });

    test('records multiple events and flushes all', () async {
      const recordCount = 5;

      for (var i = 0; i < recordCount; i++) {
        final testData = {'event': 'batch_test', 'index': i};
        await client.record(
          data: Uint8List.fromList(utf8.encode(jsonEncode(testData))),
          deliveryStreamName: testDeliveryStreamName,
        );
      }
      final result = await client.flush();
      expect(result.recordsFlushed, equals(recordCount));
    });

    test('handles empty flush gracefully', () async {
      final result = await client.flush();
      expect(result.recordsFlushed, equals(0));
    });
  });

  group('Enable/disable functionality', () {
    test('disabled client ignores new records', () async {
      client.disable();

      await client.record(
        data: Uint8List.fromList(utf8.encode('{"ignored": true}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      client.enable();
      final result = await client.flush();
      expect(result.recordsFlushed, equals(0));
    });

    test('disabled client skips flush', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"test": "data"}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      client.disable();
      final disabledResult = await client.flush();
      expect(disabledResult.recordsFlushed, equals(0));

      client.enable();
      final enabledResult = await client.flush();
      expect(enabledResult.recordsFlushed, equals(1));
    });
  });

  group('Data integrity', () {
    test('sends binary data correctly', () async {
      final binaryData =
          Uint8List.fromList([0x00, 0x01, 0x02, 0xFF, 0xFE, 0xFD]);

      await client.record(
        data: binaryData,
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();
      expect(result.recordsFlushed, equals(1));
    });

    test('handles large records up to 1MB', () async {
      final largeData = Uint8List.fromList(
        List.generate(100 * 1024, (i) => i % 256),
      );

      await client.record(
        data: largeData,
        deliveryStreamName: testDeliveryStreamName,
      );
      final result = await client.flush();
      expect(result.recordsFlushed, equals(1));
    });
  });

  group('Cache management', () {
    test('clearCache removes all pending records', () async {
      for (var i = 0; i < 3; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('{"index": $i}')),
          deliveryStreamName: testDeliveryStreamName,
        );
      }

      final clearResult = await client.clearCache();
      expect(clearResult.recordsCleared, equals(3));

      final flushResult = await client.flush();
      expect(flushResult.recordsFlushed, equals(0));
    });
  });

  group('Error handling', () {
    test('invalid stream records do not block valid stream flushes', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"bad": "record"}')),
        deliveryStreamName: 'non-existent-delivery-stream-12345',
      );

      final firstFlush = await client.flush();
      expect(firstFlush.recordsFlushed, equals(0));

      await client.record(
        data: Uint8List.fromList(utf8.encode('{"good": "record"}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      final secondFlush = await client.flush();
      expect(secondFlush.recordsFlushed, equals(1));
    });
  });

  group('Persistence', () {
    test('records persist across client instances', () async {
      await client.record(
        data: Uint8List.fromList(utf8.encode('{"persist": "test"}')),
        deliveryStreamName: testDeliveryStreamName,
      );

      await client.close();

      final newClient = AmplifyFirehoseClient(
        region: testRegion,
        credentialsProvider: credentialsProvider,
        storagePath: tempDir.path,
        options: AmplifyFirehoseClientOptions(
          flushStrategy: AmazonDataFirehoseInterval(
            interval: Duration(minutes: 5),
          ),
        ),
      );

      final result = await newClient.flush();
      expect(result.recordsFlushed, equals(1));
      await newClient.close();
    });
  });
}

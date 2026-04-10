// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Integration tests for AmplifyFirehoseClient (Flutter) against a real
/// Firehose delivery stream using pre-provisioned backend.
library;

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_firehose/amplify_firehose.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';

void main() {
  late AmplifyFirehoseClient client;
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
    client = await AmplifyFirehoseClient.create(
      region: testRegion,
      credentialsProvider: credentialsProvider,
      options: const AmplifyFirehoseClientOptions(
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

  group('Core happy path', () {
    testWidgets('record and flush', (tester) async {
      final recordResult = await client.record(
        data: Uint8List.fromList(utf8.encode('test-firehose-record')),
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
        streamName: testStreamName,
      );
      expect(result, isA<Ok<void>>());

      client.enable();
      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect((flushResult as Ok<FlushData>).value.recordsFlushed, equals(0));
    });
  });

  group('Cache behavior', () {
    testWidgets('clearCache removes all records', (tester) async {
      for (var i = 0; i < 5; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('record-$i')),
          streamName: testStreamName,
        );
      }

      final clearResult = await client.clearCache();
      expect(clearResult, isA<Ok<ClearCacheData>>());
      expect(
        (clearResult as Ok<ClearCacheData>).value.recordsCleared,
        equals(5),
      );

      final flushResult = await client.flush();
      expect(
        (flushResult as Ok<FlushData>).value.recordsFlushed,
        equals(0),
      );
    });
  });

  group('Multiple records', () {
    testWidgets('batch of records flushes successfully', (tester) async {
      for (var i = 0; i < 10; i++) {
        await client.record(
          data: Uint8List.fromList(utf8.encode('batch-record-$i')),
          streamName: testStreamName,
        );
      }

      final flushResult = await client.flush();
      expect(flushResult, isA<Ok<FlushData>>());
      expect(
        (flushResult as Ok<FlushData>).value.recordsFlushed,
        equals(10),
      );
    });
  });

  group('Client lifecycle', () {
    testWidgets('close prevents further operations', (tester) async {
      await client.close();

      final result = await client.record(
        data: Uint8List.fromList(utf8.encode('after-close')),
        streamName: testStreamName,
      );
      expect(result, isA<Error<RecordData>>());
    });
  });
}

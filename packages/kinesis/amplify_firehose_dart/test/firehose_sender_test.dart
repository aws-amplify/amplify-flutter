// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for FirehoseSender request building and response categorization.
library;

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/impl/firehose_sender.dart';
import 'package:amplify_firehose_dart/src/sdk/firehose.dart' as sdk;
import 'package:amplify_firehose_dart/src/sdk/src/firehose/firehose_client.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

class _MockFirehoseClient extends Mock implements FirehoseClient {}

SmithyOperation<T> _mockOp<T>(FutureOr<T> Function() fn) => SmithyOperation(
  CancelableOperation.fromFuture(Future.value(fn())),
  operationName: '',
  requestProgress: const Stream.empty(),
  responseProgress: const Stream.empty(),
);

Record _testRecord({
  required int id,
  required Uint8List data,
  int retryCount = 0,
}) {
  return Record(
    id: id,
    streamName: 'test-stream',
    data: data,
    dataSize: data.length,
    retryCount: retryCount,
    createdAt: 0,
  );
}

void main() {
  late _MockFirehoseClient mockClient;
  const maxRetries = 3;

  setUpAll(() {
    registerFallbackValue(
      sdk.PutRecordBatchInput(
        deliveryStreamName: 'test',
        records: [sdk.Record(data: Uint8List(0))],
      ),
    );
  });

  setUp(() {
    mockClient = _MockFirehoseClient();
  });

  tearDown(() {
    resetMocktailState();
    reset(mockClient);
  });

  group('FirehoseSender', () {
    test('builds correct PutRecordBatchInput', () async {
      when(() => mockClient.putRecordBatch(any())).thenReturn(
        _mockOp(
          () => sdk.PutRecordBatchOutput(
            failedPutCount: 0,
            requestResponses: [
              sdk.PutRecordBatchResponseEntry(recordId: 'r1'),
              sdk.PutRecordBatchResponseEntry(recordId: 'r2'),
            ],
          ),
        ),
      );

      final sender = FirehoseSender(
        firehoseClient: mockClient,
        maxRetries: maxRetries,
      );

      await sender.sendBatch(
        streamName: 'my-stream',
        records: [
          _testRecord(id: 1, data: Uint8List.fromList([1, 2, 3])),
          _testRecord(id: 2, data: Uint8List.fromList([4, 5, 6])),
        ],
      );

      final captured =
          verify(() => mockClient.putRecordBatch(captureAny())).captured.single
              as sdk.PutRecordBatchInput;

      expect(captured.deliveryStreamName, equals('my-stream'));
      expect(captured.records, hasLength(2));
      expect(captured.records[0].data, equals(Uint8List.fromList([1, 2, 3])));
      expect(captured.records[1].data, equals(Uint8List.fromList([4, 5, 6])));
    });

    test('categorizes response into success, retryable, failed', () async {
      when(() => mockClient.putRecordBatch(any())).thenReturn(
        _mockOp(
          () => sdk.PutRecordBatchOutput(
            failedPutCount: 2,
            requestResponses: [
              sdk.PutRecordBatchResponseEntry(recordId: 'r1'),
              sdk.PutRecordBatchResponseEntry(
                errorCode: 'ServiceUnavailableException',
              ),
              sdk.PutRecordBatchResponseEntry(errorCode: 'InternalFailure'),
            ],
          ),
        ),
      );

      final sender = FirehoseSender(
        firehoseClient: mockClient,
        maxRetries: maxRetries,
      );

      final result = await sender.sendBatch(
        streamName: 'test-stream',
        records: [
          _testRecord(id: 1, data: Uint8List.fromList([1])),
          _testRecord(id: 2, data: Uint8List.fromList([2]), retryCount: 1),
          _testRecord(
            id: 3,
            data: Uint8List.fromList([3]),
            retryCount: maxRetries,
          ),
        ],
      );

      expect(result.successfulIds, equals([1]));
      expect(result.retryableIds, equals([2]));
      expect(result.failedIds, equals([3]));
    });

    test('returns empty result for empty records', () async {
      final sender = FirehoseSender(
        firehoseClient: mockClient,
        maxRetries: maxRetries,
      );

      final result = await sender.sendBatch(
        streamName: 'test-stream',
        records: [],
      );

      expect(result.successfulIds, isEmpty);
      expect(result.retryableIds, isEmpty);
      expect(result.failedIds, isEmpty);
      verifyNever(() => mockClient.putRecordBatch(any()));
    });
  });
}

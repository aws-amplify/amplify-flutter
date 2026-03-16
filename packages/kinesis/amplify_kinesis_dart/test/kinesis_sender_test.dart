// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for KinesisSender request building and response categorization.
///
/// The sender owns retry-count categorization: all error codes are treated
/// as retryable until the record exceeds maxRetries.
library;

import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/impl/kinesis_sender.dart';
import 'package:amplify_kinesis_dart/src/model/record.dart';
import 'package:amplify_kinesis_dart/src/sdk/kinesis.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

Record _testRecord({
  required int id,
  required String partitionKey,
  required Uint8List data,
  int retryCount = 0,
}) {
  return Record(
    id: id,
    streamName: 'test-stream',
    partitionKey: partitionKey,
    data: data,
    dataSize: data.length,
    retryCount: retryCount,
    createdAt: 0,
  );
}

void main() {
  late MockKinesisClient mockClient;
  const maxRetries = 3;

  setUpAll(() {
    registerFallbackValue(
      PutRecordsRequest(
        streamName: 'test',
        records: [
          PutRecordsRequestEntry(data: Uint8List(0), partitionKey: 'test'),
        ],
      ),
    );
  });

  setUp(() {
    mockClient = MockKinesisClient();
  });

  tearDown(() {
    resetMocktailState();
    reset(mockClient);
  });

  group('KinesisSender', () {
    test('builds correct PutRecordsRequest', () async {
      when(() => mockClient.putRecords(any())).thenReturn(
        mockSmithyOperation(
          () => PutRecordsResponse(
            records: [
              PutRecordsResultEntry(
                sequenceNumber: 'seq-1',
                shardId: 'shard-1',
              ),
              PutRecordsResultEntry(
                sequenceNumber: 'seq-2',
                shardId: 'shard-2',
              ),
            ],
          ),
        ),
      );

      final sender = _DirectMockSender(mockClient, maxRetries: maxRetries);

      await sender.putRecords(
        streamName: 'my-stream',
        records: [
          _testRecord(
            id: 1,
            partitionKey: 'key1',
            data: Uint8List.fromList([1, 2, 3]),
          ),
          _testRecord(
            id: 2,
            partitionKey: 'key2',
            data: Uint8List.fromList([4, 5, 6]),
          ),
        ],
      );

      final captured =
          verify(() => mockClient.putRecords(captureAny())).captured.single
              as PutRecordsRequest;

      expect(captured.streamName, equals('my-stream'));
      expect(captured.records, hasLength(2));
      expect(captured.records[0].partitionKey, equals('key1'));
      expect(captured.records[0].data, equals(Uint8List.fromList([1, 2, 3])));
      expect(captured.records[1].partitionKey, equals('key2'));
      expect(captured.records[1].data, equals(Uint8List.fromList([4, 5, 6])));
    });

    test(
      'correctly categorizes response into success, retryable, failed',
      () async {
        // - Record 1 (retryCount=0): success (no error code)
        // - Record 2 (retryCount=1): retryable (error code + under retry limit)
        // - Record 3 (retryCount=maxRetries): failed (error code + at retry limit)
        when(() => mockClient.putRecords(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordsResponse(
              records: [
                PutRecordsResultEntry(
                  sequenceNumber: 'seq1',
                  shardId: 'shard1',
                ),
                PutRecordsResultEntry(
                  errorCode: 'ProvisionedThroughputExceededException',
                ),
                PutRecordsResultEntry(errorCode: 'InternalFailure'),
              ],
            ),
          ),
        );

        final sender = _DirectMockSender(mockClient, maxRetries: maxRetries);

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: [
            _testRecord(
              id: 1,
              partitionKey: 'key1',
              data: Uint8List.fromList([1]),
              retryCount: 0,
            ),
            _testRecord(
              id: 2,
              partitionKey: 'key2',
              data: Uint8List.fromList([2]),
              retryCount: 1,
            ),
            _testRecord(
              id: 3,
              partitionKey: 'key3',
              data: Uint8List.fromList([3]),
              retryCount: maxRetries,
            ),
          ],
        );

        expect(result.successfulIds, equals([1]));
        expect(result.retryableIds, equals([2]));
        expect(result.failedIds, equals([3]));
      },
    );
  });
}

/// Sender that delegates directly to a mock KinesisClient, exercising the
/// real request-building and response-splitting logic.
class _DirectMockSender extends KinesisSender {
  _DirectMockSender(KinesisClient mockClient, {required super.maxRetries})
    : super(kinesisClient: mockClient);
}

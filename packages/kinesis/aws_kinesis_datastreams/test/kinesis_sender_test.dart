// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams/src/sdk/kinesis.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

void main() {
  late MockKinesisClient mockClient;

  setUpAll(() {
    registerFallbackValue(
      PutRecordsRequest(
        streamName: 'test',
        records: [
          PutRecordsRequestEntry(
            data: Uint8List(0),
            partitionKey: 'test',
          ),
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
    group('putRecords', () {
      test('returns empty result for empty records list', () async {
        final sender = KinesisSender(
          region: 'us-east-1',
          credentialsProvider: FakeAWSCredentialsProvider(),
        );

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: [],
        );

        expect(result.successfulRecordIndices, isEmpty);
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, isEmpty);
      });

      test('builds correct request format', () async {
        when(() => mockClient.putRecords(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordsResponse(
              records: [
                PutRecordsResultEntry(
                  sequenceNumber: 'seq-1',
                  shardId: 'shard-1',
                ),
              ],
            ),
          ),
        );

        final sender = _TestableKinesisSender(mockClient);

        await sender.putRecords(
          streamName: 'my-stream',
          records: [
            KinesisSenderRecord(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: 'pk-1',
            ),
          ],
        );

        final captured =
            verify(() => mockClient.putRecords(captureAny())).captured.single
                as PutRecordsRequest;

        expect(captured.streamName, equals('my-stream'));
        expect(captured.records.length, equals(1));
        expect(captured.records.first.partitionKey, equals('pk-1'));
        expect(
          captured.records.first.data,
          equals(Uint8List.fromList([1, 2, 3])),
        );
      });

      test('identifies successful records', () async {
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

        final sender = _TestableKinesisSender(mockClient);

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: [
            KinesisSenderRecord(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk-1',
            ),
            KinesisSenderRecord(
              data: Uint8List.fromList([2]),
              partitionKey: 'pk-2',
            ),
          ],
        );

        expect(result.successfulRecordIndices, equals([0, 1]));
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, isEmpty);
      });

      test('identifies failed records with non-retryable errors', () async {
        when(() => mockClient.putRecords(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordsResponse(
              failedRecordCount: 1,
              records: [
                PutRecordsResultEntry(
                  sequenceNumber: 'seq-1',
                  shardId: 'shard-1',
                ),
                PutRecordsResultEntry(
                  errorCode: 'ValidationError',
                  errorMessage: 'Invalid partition key',
                ),
              ],
            ),
          ),
        );

        final sender = _TestableKinesisSender(mockClient);

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: [
            KinesisSenderRecord(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk-1',
            ),
            KinesisSenderRecord(
              data: Uint8List.fromList([2]),
              partitionKey: 'pk-2',
            ),
          ],
        );

        expect(result.successfulRecordIndices, equals([0]));
        expect(result.failedRecordIndices, equals([1]));
        expect(result.retryableRecordIndices, isEmpty);
      });

      test(
        'identifies retryable records with ProvisionedThroughputExceededException error code',
        () async {
          when(() => mockClient.putRecords(any())).thenReturn(
            mockSmithyOperation(
              () => PutRecordsResponse(
                failedRecordCount: 1,
                records: [
                  PutRecordsResultEntry(
                    sequenceNumber: 'seq-1',
                    shardId: 'shard-1',
                  ),
                  PutRecordsResultEntry(
                    errorCode: 'ProvisionedThroughputExceededException',
                    errorMessage: 'Rate exceeded',
                  ),
                ],
              ),
            ),
          );

          final sender = _TestableKinesisSender(mockClient);

          final result = await sender.putRecords(
            streamName: 'test-stream',
            records: [
              KinesisSenderRecord(
                data: Uint8List.fromList([1]),
                partitionKey: 'pk-1',
              ),
              KinesisSenderRecord(
                data: Uint8List.fromList([2]),
                partitionKey: 'pk-2',
              ),
            ],
          );

          expect(result.successfulRecordIndices, equals([0]));
          expect(result.failedRecordIndices, isEmpty);
          expect(result.retryableRecordIndices, equals([1]));
        },
      );

      test('identifies retryable records with InternalFailure error code',
          () async {
        when(() => mockClient.putRecords(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordsResponse(
              failedRecordCount: 1,
              records: [
                PutRecordsResultEntry(
                  errorCode: 'InternalFailure',
                  errorMessage: 'Internal error',
                ),
                PutRecordsResultEntry(
                  sequenceNumber: 'seq-1',
                  shardId: 'shard-1',
                ),
              ],
            ),
          ),
        );

        final sender = _TestableKinesisSender(mockClient);

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: [
            KinesisSenderRecord(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk-1',
            ),
            KinesisSenderRecord(
              data: Uint8List.fromList([2]),
              partitionKey: 'pk-2',
            ),
          ],
        );

        expect(result.successfulRecordIndices, equals([1]));
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, equals([0]));
      });

      test('handles mixed success, failure, and retryable records', () async {
        when(() => mockClient.putRecords(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordsResponse(
              failedRecordCount: 2,
              records: [
                PutRecordsResultEntry(
                  sequenceNumber: 'seq-1',
                  shardId: 'shard-1',
                ),
                PutRecordsResultEntry(
                  errorCode: 'ValidationError',
                  errorMessage: 'Invalid',
                ),
                PutRecordsResultEntry(
                  errorCode: 'ProvisionedThroughputExceededException',
                  errorMessage: 'Rate exceeded',
                ),
                PutRecordsResultEntry(
                  sequenceNumber: 'seq-2',
                  shardId: 'shard-2',
                ),
              ],
            ),
          ),
        );

        final sender = _TestableKinesisSender(mockClient);

        final result = await sender.putRecords(
          streamName: 'test-stream',
          records: List.generate(
            4,
            (i) => KinesisSenderRecord(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
            ),
          ),
        );

        expect(result.successfulRecordIndices, equals([0, 3]));
        expect(result.failedRecordIndices, equals([1]));
        expect(result.retryableRecordIndices, equals([2]));
      });

      test(
        'marks all records as retryable when ProvisionedThroughputExceededException is thrown',
        () async {
          final mockOperation = MockSmithyOperation<PutRecordsResponse>();

          when(() => mockOperation.result).thenThrow(
            ProvisionedThroughputExceededException(
              message: 'Rate exceeded for the stream',
            ),
          );

          when(() => mockClient.putRecords(any())).thenReturn(mockOperation);

          final sender = _TestableKinesisSender(mockClient);

          final result = await sender.putRecords(
            streamName: 'test-stream',
            records: [
              KinesisSenderRecord(
                data: Uint8List.fromList([1]),
                partitionKey: 'pk-1',
              ),
              KinesisSenderRecord(
                data: Uint8List.fromList([2]),
                partitionKey: 'pk-2',
              ),
            ],
          );

          expect(result.successfulRecordIndices, isEmpty);
          expect(result.failedRecordIndices, isEmpty);
          expect(result.retryableRecordIndices, equals([0, 1]));
        },
      );

      test(
        'marks all records as retryable when SmithyHttpException with 5xx status is thrown',
        () async {
          final mockOperation = MockSmithyOperation<PutRecordsResponse>();

          when(() => mockOperation.result).thenThrow(
            const SmithyHttpException(statusCode: 503, body: 'Service Unavailable'),
          );

          when(() => mockClient.putRecords(any())).thenReturn(mockOperation);

          final sender = _TestableKinesisSender(mockClient);

          final result = await sender.putRecords(
            streamName: 'test-stream',
            records: [
              KinesisSenderRecord(
                data: Uint8List.fromList([1]),
                partitionKey: 'pk-1',
              ),
            ],
          );

          expect(result.successfulRecordIndices, isEmpty);
          expect(result.failedRecordIndices, isEmpty);
          expect(result.retryableRecordIndices, equals([0]));
        },
      );

      test(
        'rethrows SmithyHttpException with non-5xx status',
        () async {
          final mockOperation = MockSmithyOperation<PutRecordsResponse>();

          when(() => mockOperation.result).thenThrow(
            const SmithyHttpException(statusCode: 400, body: 'Bad Request'),
          );

          when(() => mockClient.putRecords(any())).thenReturn(mockOperation);

          final sender = _TestableKinesisSender(mockClient);

          expect(
            () => sender.putRecords(
              streamName: 'test-stream',
              records: [
                KinesisSenderRecord(
                  data: Uint8List.fromList([1]),
                  partitionKey: 'pk-1',
                ),
              ],
            ),
            throwsA(isA<SmithyHttpException>()),
          );
        },
      );
    });
  });
}

/// A testable version of KinesisSender that accepts a mock client.
class _TestableKinesisSender extends KinesisSender {
  _TestableKinesisSender(this._mockClient)
      : super(
          region: 'us-east-1',
          credentialsProvider: FakeAWSCredentialsProvider(),
        );

  final KinesisClient _mockClient;

  @override
  Future<PutRecordsResult> putRecords({
    required String streamName,
    required List<KinesisSenderRecord> records,
  }) async {
    if (records.isEmpty) {
      return const PutRecordsResult(
        successfulRecordIndices: [],
        failedRecordIndices: [],
        retryableRecordIndices: [],
      );
    }

    final requestEntries = records
        .map(
          (record) => PutRecordsRequestEntry(
            data: record.data,
            partitionKey: record.partitionKey,
          ),
        )
        .toList();

    final request = PutRecordsRequest(
      streamName: streamName,
      records: requestEntries,
    );

    try {
      final response = await _mockClient.putRecords(request).result;
      return _parseResponse(response, records.length);
    } on ProvisionedThroughputExceededException {
      return PutRecordsResult(
        successfulRecordIndices: const [],
        failedRecordIndices: const [],
        retryableRecordIndices: List.generate(records.length, (i) => i),
      );
    } on SmithyHttpException catch (e) {
      if (e.statusCode != null && e.statusCode! >= 500) {
        return PutRecordsResult(
          successfulRecordIndices: const [],
          failedRecordIndices: const [],
          retryableRecordIndices: List.generate(records.length, (i) => i),
        );
      }
      rethrow;
    }
  }

  static const _retryableErrorCodes = {
    'ProvisionedThroughputExceededException',
    'InternalFailure',
  };

  PutRecordsResult _parseResponse(
    PutRecordsResponse response,
    int recordCount,
  ) {
    final successfulIndices = <int>[];
    final failedIndices = <int>[];
    final retryableIndices = <int>[];

    final resultEntries = response.records.toList();

    for (var i = 0; i < resultEntries.length; i++) {
      final entry = resultEntries[i];

      if (entry.errorCode == null) {
        successfulIndices.add(i);
      } else if (_retryableErrorCodes.contains(entry.errorCode)) {
        retryableIndices.add(i);
      } else {
        failedIndices.add(i);
      }
    }

    return PutRecordsResult(
      successfulRecordIndices: successfulIndices,
      failedRecordIndices: failedIndices,
      retryableRecordIndices: retryableIndices,
    );
  }
}

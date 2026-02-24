// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';
import 'dart:typed_data';

import 'package:aws_amazon_firehose/src/exception/amplify_firehose_exception.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_sender.dart';
import 'package:aws_amazon_firehose/src/sdk/firehose.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

void main() {
  group('FirehoseSender', () {
    late MockFirehoseClient mockClient;
    late _TestableFirehoseSender sender;

    setUp(() {
      mockClient = MockFirehoseClient();
      sender = _TestableFirehoseSender(mockClient);
    });

    setUpAll(() {
      registerFallbackValue(_FakePutRecordBatchInput());
    });

    group('putRecordBatch', () {
      test('returns empty result for empty records list', () async {
        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [],
        );

        expect(result.successfulRecordIndices, isEmpty);
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, isEmpty);
        verifyNever(() => mockClient.putRecordBatch(any()));
      });

      test('returns successful indices for all successful records', () async {
        when(() => mockClient.putRecordBatch(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordBatchOutput(
              failedPutCount: 0,
              requestResponses: [
                PutRecordBatchResponseEntry(recordId: 'id-1'),
                PutRecordBatchResponseEntry(recordId: 'id-2'),
              ],
            ),
          ),
        );

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
            FirehoseSenderRecord(data: Uint8List.fromList([2])),
          ],
        );

        expect(result.successfulRecordIndices, equals([0, 1]));
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, isEmpty);
      });

      test('returns retryable indices for ServiceUnavailableException errors', () async {
        when(() => mockClient.putRecordBatch(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordBatchOutput(
              failedPutCount: 1,
              requestResponses: [
                PutRecordBatchResponseEntry(recordId: 'id-1'),
                PutRecordBatchResponseEntry(
                  errorCode: 'ServiceUnavailableException',
                  errorMessage: 'Service unavailable',
                ),
              ],
            ),
          ),
        );

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
            FirehoseSenderRecord(data: Uint8List.fromList([2])),
          ],
        );

        expect(result.successfulRecordIndices, equals([0]));
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, equals([1]));
      });

      test('returns failed indices for non-retryable errors', () async {
        when(() => mockClient.putRecordBatch(any())).thenReturn(
          mockSmithyOperation(
            () => PutRecordBatchOutput(
              failedPutCount: 1,
              requestResponses: [
                PutRecordBatchResponseEntry(recordId: 'id-1'),
                PutRecordBatchResponseEntry(
                  errorCode: 'ValidationException',
                  errorMessage: 'Invalid data',
                ),
              ],
            ),
          ),
        );

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
            FirehoseSenderRecord(data: Uint8List.fromList([2])),
          ],
        );

        expect(result.successfulRecordIndices, equals([0]));
        expect(result.failedRecordIndices, equals([1]));
        expect(result.retryableRecordIndices, isEmpty);
      });

      test('handles ServiceUnavailableException by marking all as retryable', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        when(() => mockOperation.result).thenThrow(
          ServiceUnavailableException(),
        );
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
            FirehoseSenderRecord(data: Uint8List.fromList([2])),
          ],
        );

        expect(result.successfulRecordIndices, isEmpty);
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, equals([0, 1]));
      });

      test('handles 429 HTTP error as retryable', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        when(() => mockOperation.result).thenThrow(
          SmithyHttpException(statusCode: 429, body: 'Too Many Requests'),
        );
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
          ],
        );

        expect(result.successfulRecordIndices, isEmpty);
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, equals([0]));
      });

      test('handles 5xx HTTP errors as retryable', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        when(() => mockOperation.result).thenThrow(
          SmithyHttpException(statusCode: 503, body: 'Service Unavailable'),
        );
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        final result = await sender.putRecordBatch(
          deliveryStreamName: 'test-stream',
          records: [
            FirehoseSenderRecord(data: Uint8List.fromList([1])),
          ],
        );

        expect(result.successfulRecordIndices, isEmpty);
        expect(result.failedRecordIndices, isEmpty);
        expect(result.retryableRecordIndices, equals([0]));
      });

      test('throws FirehoseNetworkException for AWSHttpException', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        final mockException = MockAWSHttpException();
        when(() => mockOperation.result).thenThrow(mockException);
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        expect(
          () => sender.putRecordBatch(
            deliveryStreamName: 'test-stream',
            records: [
              FirehoseSenderRecord(data: Uint8List.fromList([1])),
            ],
          ),
          throwsA(isA<FirehoseNetworkException>()),
        );
      });

      test('throws FirehoseNetworkException for SocketException', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        when(() => mockOperation.result).thenThrow(
          const SocketException('Connection refused'),
        );
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        expect(
          () => sender.putRecordBatch(
            deliveryStreamName: 'test-stream',
            records: [
              FirehoseSenderRecord(data: Uint8List.fromList([1])),
            ],
          ),
          throwsA(isA<FirehoseNetworkException>()),
        );
      });

      test('rethrows non-retryable SmithyHttpException', () async {
        final mockOperation = MockSmithyOperation<PutRecordBatchOutput>();
        when(() => mockOperation.result).thenThrow(
          SmithyHttpException(statusCode: 400, body: 'Bad Request'),
        );
        when(() => mockClient.putRecordBatch(any())).thenReturn(mockOperation);

        expect(
          () => sender.putRecordBatch(
            deliveryStreamName: 'test-stream',
            records: [
              FirehoseSenderRecord(data: Uint8List.fromList([1])),
            ],
          ),
          throwsA(isA<SmithyHttpException>()),
        );
      });
    });
  });
}

/// Testable version of FirehoseSender that accepts a mock client.
class _TestableFirehoseSender extends FirehoseSender {
  _TestableFirehoseSender(this._mockClient)
      : super(
          region: 'us-east-1',
          credentialsProvider: FakeAWSCredentialsProvider(),
        );

  final FirehoseClient _mockClient;

  @override
  Future<PutRecordBatchResult> putRecordBatch({
    required String deliveryStreamName,
    required List<FirehoseSenderRecord> records,
  }) async {
    if (records.isEmpty) {
      return const PutRecordBatchResult(
        successfulRecordIndices: [],
        failedRecordIndices: [],
        retryableRecordIndices: [],
      );
    }

    final requestRecords = records
        .map((record) => Record(data: record.data))
        .toList();

    final request = PutRecordBatchInput(
      deliveryStreamName: deliveryStreamName,
      records: requestRecords,
    );

    try {
      final response = await _mockClient.putRecordBatch(request).result;
      return _parseResponse(response, records.length);
    } on ServiceUnavailableException {
      return PutRecordBatchResult(
        successfulRecordIndices: const [],
        failedRecordIndices: const [],
        retryableRecordIndices: List.generate(records.length, (i) => i),
      );
    } on SmithyHttpException catch (e) {
      if (e.statusCode != null &&
          (e.statusCode == 429 || e.statusCode! >= 500)) {
        return PutRecordBatchResult(
          successfulRecordIndices: const [],
          failedRecordIndices: const [],
          retryableRecordIndices: List.generate(records.length, (i) => i),
        );
      }
      rethrow;
    } on AWSHttpException catch (e) {
      throw FirehoseNetworkException(
        'Failed to connect to Firehose: $e',
        cause: e,
      );
    } on SocketException catch (e) {
      throw FirehoseNetworkException(
        'Network error: ${e.message}',
        cause: e,
      );
    }
  }

  static const _retryableErrorCodes = {
    'ServiceUnavailableException',
    'InternalFailure',
  };

  PutRecordBatchResult _parseResponse(
    PutRecordBatchOutput response,
    int recordCount,
  ) {
    final successfulIndices = <int>[];
    final failedIndices = <int>[];
    final retryableIndices = <int>[];

    final resultEntries = response.requestResponses.toList();

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

    return PutRecordBatchResult(
      successfulRecordIndices: successfulIndices,
      failedRecordIndices: failedIndices,
      retryableRecordIndices: retryableIndices,
    );
  }
}

class _FakePutRecordBatchInput extends Fake implements PutRecordBatchInput {}

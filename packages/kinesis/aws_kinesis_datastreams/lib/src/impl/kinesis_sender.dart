// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_kinesis_datastreams/src/sdk/kinesis.dart';
import 'package:aws_kinesis_datastreams/src/sdk/sdk_bridge.dart';
import 'package:smithy/smithy.dart';

/// Result of a PutRecords operation.
class PutRecordsResult {
  /// Creates a new [PutRecordsResult].
  const PutRecordsResult({
    required this.successfulRecordIndices,
    required this.failedRecordIndices,
    required this.retryableRecordIndices,
  });

  /// Indices of records that were successfully sent.
  final List<int> successfulRecordIndices;

  /// Indices of records that failed with non-retryable errors.
  final List<int> failedRecordIndices;

  /// Indices of records that failed with retryable errors.
  final List<int> retryableRecordIndices;
}

/// A record to be sent to Kinesis.
class KinesisSenderRecord {
  /// Creates a new [KinesisSenderRecord].
  const KinesisSenderRecord({
    required this.data,
    required this.partitionKey,
  });

  /// The data blob to send.
  final Uint8List data;

  /// The partition key for the record.
  final String partitionKey;
}

/// {@template aws_kinesis_datastreams.kinesis_sender}
/// Handles communication with AWS Kinesis Data Streams.
/// {@endtemplate}
class KinesisSender {
  /// {@macro aws_kinesis_datastreams.kinesis_sender}
  KinesisSender({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AWSHttpClient? httpClient,
  }) : _kinesisClient = WrappedKinesisClient(
          region: region,
          credentialsProvider: credentialsProvider,
          httpClient: httpClient,
        );

  final KinesisClient _kinesisClient;

  /// Error codes that indicate a retryable error.
  static const _retryableErrorCodes = {
    'ProvisionedThroughputExceededException',
    'InternalFailure',
  };

  /// Sends records to a Kinesis stream.
  ///
  /// Returns a [PutRecordsResult] indicating which records succeeded,
  /// failed, or should be retried.
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
      final response = await _kinesisClient.putRecords(request).result;
      return _parseResponse(response, records.length);
    } on ProvisionedThroughputExceededException {
      // All records should be retried
      return PutRecordsResult(
        successfulRecordIndices: const [],
        failedRecordIndices: const [],
        retryableRecordIndices: List.generate(records.length, (i) => i),
      );
    } on SmithyHttpException catch (e) {
      // Check if it's a retryable HTTP error (5xx)
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

  /// Parses the PutRecords response to identify successful and failed records.
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
        // Success - record has sequenceNumber and shardId
        successfulIndices.add(i);
      } else if (_retryableErrorCodes.contains(entry.errorCode)) {
        // Retryable error
        retryableIndices.add(i);
      } else {
        // Non-retryable error
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

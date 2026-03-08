// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_common/aws_common.dart';
import 'package:aws_kinesis_datastreams/src/sdk/kinesis.dart';
import 'package:aws_kinesis_datastreams/src/sdk/sdk_bridge.dart';

/// Result of a PutRecords operation.
final class PutRecordsResult {
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
final class KinesisSenderRecord {
  /// Creates a new [KinesisSenderRecord].
  const KinesisSenderRecord({required this.data, required this.partitionKey});

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
    required foundation.AWSCredentialsProvider credentialsProvider,
    AWSHttpClient? httpClient,
  }) : _kinesisClient = WrappedKinesisClient(
         region: region,
         credentialsProvider: credentialsProvider,
         httpClient: httpClient,
       );

  final KinesisClient _kinesisClient;

  /// The underlying SDK client for direct access.
  KinesisClient get sdkClient => _kinesisClient;

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

    final response = await _kinesisClient.putRecords(request).result;
    return _parseResponse(response, records.length);
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

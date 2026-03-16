// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/model/record.dart';
import 'package:amplify_kinesis_dart/src/sdk/kinesis.dart';

/// Result of a PutRecords operation.
///
/// Records are categorized into three buckets:
/// - [successfulIds]: records that were accepted by Kinesis.
/// - [retryableIds]: records that failed with any error code but have not
///   yet exceeded the retry limit. These will be retried in the next flush.
/// - [failedIds]: records that have exceeded the retry limit and should be
///   deleted from the cache.
final class PutRecordsResult {
  /// Creates a new [PutRecordsResult].
  const PutRecordsResult({
    required this.successfulIds,
    required this.retryableIds,
    required this.failedIds,
  });

  /// IDs of records that were successfully sent.
  final List<int> successfulIds;

  /// IDs of records that failed but can be retried (retry count < max).
  final List<int> retryableIds;

  /// IDs of records that exceeded the retry limit and should be deleted.
  final List<int> failedIds;
}

/// {@template amplify_kinesis.kinesis_sender}
/// Handles communication with AWS Kinesis Data Streams.
///
/// Takes a pre-configured [KinesisClient] and owns the retry-count
/// categorization so that all error codes are treated as retryable
/// until the record exceeds `maxRetries`.
/// {@endtemplate}
class KinesisSender {
  /// {@macro amplify_kinesis.kinesis_sender}
  KinesisSender({required KinesisClient kinesisClient, required int maxRetries})
    : _kinesisClient = kinesisClient,
      _maxRetries = maxRetries;

  final KinesisClient _kinesisClient;
  final int _maxRetries;

  /// Sends records to a Kinesis stream and categorizes the response.
  ///
  /// Each record in the response is categorized as:
  /// - successful: no error code
  /// - failed: has an error code AND retry count >= [_maxRetries]
  /// - retryable: has an error code AND retry count < [_maxRetries]
  Future<PutRecordsResult> putRecords({
    required String streamName,
    required List<Record> records,
  }) async {
    if (records.isEmpty) {
      return const PutRecordsResult(
        successfulIds: [],
        retryableIds: [],
        failedIds: [],
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
    return _splitResponse(response, records);
  }

  /// Splits the PutRecords response into successful, retryable, and failed
  /// record IDs based on error codes and retry counts.
  PutRecordsResult _splitResponse(
    PutRecordsResponse response,
    List<Record> records,
  ) {
    final successfulIds = <int>[];
    final retryableIds = <int>[];
    final failedIds = <int>[];

    final resultEntries = response.records.toList();

    for (var i = 0; i < resultEntries.length; i++) {
      final entry = resultEntries[i];
      final recordId = records[i].id;
      final retryCount = records[i].retryCount;

      if (entry.errorCode == null) {
        successfulIds.add(recordId);
      } else if (retryCount >= _maxRetries) {
        failedIds.add(recordId);
      } else {
        // Error codes can be: ProvisionedThroughputExceededException or
        // InternalFailure. All are treated as retryable until the retry
        // limit is reached.
        retryableIds.add(recordId);
      }
    }

    return PutRecordsResult(
      successfulIds: successfulIds,
      retryableIds: retryableIds,
      failedIds: failedIds,
    );
  }
}

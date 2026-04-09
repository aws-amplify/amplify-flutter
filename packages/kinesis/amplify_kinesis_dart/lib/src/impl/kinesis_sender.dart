// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/model/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/sdk/kinesis.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// {@template amplify_kinesis.kinesis_sender}
/// Handles communication with AWS Kinesis Data Streams.
///
/// Takes a pre-configured [KinesisClient] and owns the retry-count
/// categorization so that all error codes are treated as retryable
/// until the record exceeds `maxRetries`.
/// {@endtemplate}
class KinesisSender implements Sender {
  /// {@macro amplify_kinesis.kinesis_sender}
  KinesisSender({required KinesisClient kinesisClient, required int maxRetries})
    : _kinesisClient = kinesisClient,
      _maxRetries = maxRetries;

  final KinesisClient _kinesisClient;
  final int _maxRetries;

  @override
  Future<SendResult> sendBatch({
    required String streamName,
    required List<Record> records,
  }) async {
    if (records.isEmpty) {
      return const SendResult(
        successfulIds: [],
        retryableIds: [],
        failedIds: [],
      );
    }

    final requestEntries = records
        .map(
          (record) => PutRecordsRequestEntry(
            data: record.data,
            partitionKey: (record as KinesisRecord).partitionKey,
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
  SendResult _splitResponse(PutRecordsResponse response, List<Record> records) {
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

    return SendResult(
      successfulIds: successfulIds,
      retryableIds: retryableIds,
      failedIds: failedIds,
    );
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_record_cache_dart/src/model/record.dart';

/// Result of a batch send operation.
///
/// Records are categorized into three buckets:
/// - [successfulIds]: records accepted by the service.
/// - [retryableIds]: records that failed but can be retried.
/// - [failedIds]: records that exceeded the retry limit and should be deleted.
final class SendResult {
  /// Creates a new [SendResult].
  const SendResult({
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

/// {@template amplify_record_cache.sender}
/// Abstract interface for sending a batch of records to a streaming service.
///
/// Implementations handle the service-specific API call (e.g. Kinesis
/// `PutRecords`, Firehose `PutRecordBatch`) and categorize the response
/// into successful, retryable, and failed records.
/// {@endtemplate}
// ignore: one_member_abstracts
abstract interface class Sender {
  /// Sends a batch of records to the specified stream and returns the
  /// categorized result.
  Future<SendResult> sendBatch({
    required String streamName,
    required List<Record> records,
  });
}

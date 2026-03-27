// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_firehose_dart/src/sdk/firehose.dart' as sdk;
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// {@template amplify_firehose.firehose_sender}
/// Handles communication with Amazon Data Firehose.
///
/// Takes a pre-configured [sdk.FirehoseClient] and owns the retry-count
/// categorization so that all error codes are treated as retryable
/// until the record exceeds `maxRetries`.
/// {@endtemplate}
class FirehoseSender implements Sender {
  /// {@macro amplify_firehose.firehose_sender}
  FirehoseSender({
    required sdk.FirehoseClient firehoseClient,
    required int maxRetries,
  }) : _firehoseClient = firehoseClient,
       _maxRetries = maxRetries;

  final sdk.FirehoseClient _firehoseClient;
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

    final requestRecords = records
        .map((record) => sdk.Record(data: record.data))
        .toList();

    final request = sdk.PutRecordBatchInput(
      deliveryStreamName: streamName,
      records: requestRecords,
    );

    final response = await _firehoseClient.putRecordBatch(request).result;
    return _splitResponse(response, records);
  }

  SendResult _splitResponse(
    sdk.PutRecordBatchOutput response,
    List<Record> records,
  ) {
    final successfulIds = <int>[];
    final retryableIds = <int>[];
    final failedIds = <int>[];

    final resultEntries = response.requestResponses.toList();

    for (var i = 0; i < resultEntries.length; i++) {
      final entry = resultEntries[i];
      final recordId = records[i].id;
      final retryCount = records[i].retryCount;

      if (entry.errorCode == null) {
        successfulIds.add(recordId);
      } else if (retryCount >= _maxRetries) {
        failedIds.add(recordId);
      } else {
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

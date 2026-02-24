// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:aws_amazon_firehose/src/exception/amplify_firehose_exception.dart';
import 'package:aws_amazon_firehose/src/sdk/firehose.dart';
import 'package:aws_amazon_firehose/src/sdk/sdk_bridge.dart';
import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// Result of a PutRecordBatch operation.
class PutRecordBatchResult {
  /// Creates a new [PutRecordBatchResult].
  const PutRecordBatchResult({
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

/// A record to be sent to Firehose.
class FirehoseSenderRecord {
  /// Creates a new [FirehoseSenderRecord].
  const FirehoseSenderRecord({
    required this.data,
  });

  /// The data blob to send.
  final Uint8List data;
}

/// {@template aws_amazon_firehose.firehose_sender}
/// Handles communication with Amazon Data Firehose.
/// {@endtemplate}
class FirehoseSender {
  /// {@macro aws_amazon_firehose.firehose_sender}
  FirehoseSender({
    required String region,
    required foundation.AWSCredentialsProvider<foundation.AWSCredentials>
        credentialsProvider,
    AWSHttpClient? httpClient,
  }) : _firehoseClient = WrappedFirehoseClient(
          region: region,
          credentialsProvider: credentialsProvider,
          httpClient: httpClient,
        );

  final FirehoseClient _firehoseClient;

  /// The underlying SDK client for direct access.
  FirehoseClient get sdkClient => _firehoseClient;

  /// Error codes that indicate a retryable error.
  static const _retryableErrorCodes = {
    'ServiceUnavailableException',
    'InternalFailure',
  };

  /// Sends records to a Firehose delivery stream.
  ///
  /// Returns a [PutRecordBatchResult] indicating which records succeeded,
  /// failed, or should be retried.
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
        .map(
          (record) => Record(data: record.data),
        )
        .toList();

    final request = PutRecordBatchInput(
      deliveryStreamName: deliveryStreamName,
      records: requestRecords,
    );

    try {
      final response = await _firehoseClient.putRecordBatch(request).result;
      return _parseResponse(response, records.length);
    } on ServiceUnavailableException {
      // All records should be retried
      return PutRecordBatchResult(
        successfulRecordIndices: const [],
        failedRecordIndices: const [],
        retryableRecordIndices: List.generate(records.length, (i) => i),
      );
    } on SmithyHttpException catch (e) {
      // Check if it's a retryable HTTP error (429 or 5xx)
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
      // Network-level errors (DNS, connection refused, etc.)
      throw FirehoseNetworkException(
        'Failed to connect to Firehose: $e',
        cause: e,
      );
    } on SocketException catch (e) {
      // Socket-level errors (no internet, connection reset, etc.)
      throw FirehoseNetworkException(
        'Network error: ${e.message}',
        cause: e,
      );
    }
  }

  /// Parses the PutRecordBatch response to identify successful and failed records.
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
        // Success - record has recordId
        successfulIndices.add(i);
      } else if (_retryableErrorCodes.contains(entry.errorCode)) {
        // Retryable error
        retryableIndices.add(i);
      } else {
        // Non-retryable error
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

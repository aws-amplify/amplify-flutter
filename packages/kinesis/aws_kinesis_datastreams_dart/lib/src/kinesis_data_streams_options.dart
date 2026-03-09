// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/amplify_kinesis_client.dart'
    show AmplifyKinesisClient;
import 'package:aws_kinesis_datastreams_dart/src/flush_strategy/flush_strategy.dart';

/// Maximum number of records per Kinesis PutRecords call.
const int kKinesisMaxRecordsPerBatch = 500;

/// Maximum batch payload size for Kinesis PutRecords (10 MiB).
///
/// Per AWS docs, the total size of a PutRecords request (including partition
/// keys and data blobs) must not exceed 10 MiB.
const int kKinesisMaxBatchBytes = 10 * 1024 * 1024;

/// Maximum size of a single Kinesis record (10 MiB, partition key + data blob).
///
/// Per AWS docs: "The record size limit applies to the total size of the
/// partition key and data blob."
const int kKinesisMaxRecordBytes = 10 * 1024 * 1024;

/// Maximum length of a Kinesis partition key (256 characters).
const int kKinesisMaxPartitionKeyLength = 256;

/// {@template aws_kinesis_datastreams.amplify_kinesis_client_options}
/// Configuration options for [AmplifyKinesisClient].
///
/// All numeric properties are validated to be positive and within
/// service-imposed upper bounds.
/// {@endtemplate}
final class AmplifyKinesisClientOptions {
  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client_options}
  AmplifyKinesisClientOptions({
    this.cacheMaxBytes = 5 * 1024 * 1024,
    this.maxRecords = kKinesisMaxRecordsPerBatch,
    this.maxRetries = 5,
    this.flushStrategy = const KinesisDataStreamsInterval(),
    this.logger,
  }) {
    RangeError.checkValueInInterval(
      cacheMaxBytes,
      1,
      _maxCacheBytes,
      'cacheMaxBytes',
    );
    RangeError.checkValueInInterval(
      maxRecords,
      1,
      kKinesisMaxRecordsPerBatch,
      'maxRecords',
    );
    RangeError.checkValueInInterval(
      maxRetries,
      0,
      _maxRetryAttempts,
      'maxRetries',
    );
    if (flushStrategy case final KinesisDataStreamsInterval interval) {
      if (interval.interval.inMilliseconds < _minFlushIntervalMs ||
          interval.interval.inMilliseconds > _maxFlushIntervalMs) {
        throw RangeError.range(
          interval.interval.inMilliseconds,
          _minFlushIntervalMs,
          _maxFlushIntervalMs,
          'flushStrategy.interval',
          'Flush interval must be between 1 second and 1 hour',
        );
      }
    }
  }

  static const int _maxCacheBytes = 4 * 1024 * 1024 * 1024; // 4GB
  static const int _maxRetryAttempts = 20;
  static const int _minFlushIntervalMs = 1000; // 1 second
  static const int _maxFlushIntervalMs = 3600000; // 1 hour

  /// Maximum size of the local cache in bytes.
  ///
  /// Must be between 1 byte and 4GB.
  ///
  /// Defaults to 5MB.
  final int cacheMaxBytes;

  /// Maximum number of records per batch.
  ///
  /// Must be between 1 and 500 (the Kinesis PutRecords limit).
  ///
  /// Defaults to 500.
  final int maxRecords;

  /// Maximum number of retry attempts for failed records.
  ///
  /// Must be between 0 (no retries) and 20.
  ///
  /// Defaults to 5.
  final int maxRetries;

  /// Strategy for automatic flushing of cached records.
  ///
  /// When using [KinesisDataStreamsInterval], the interval must be
  /// between 1 second and 1 hour.
  final KinesisDataStreamsFlushStrategy flushStrategy;

  /// Optional logger for debug and error output.
  final Logger? logger;
}

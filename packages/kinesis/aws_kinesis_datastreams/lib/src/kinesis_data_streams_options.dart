// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams/src/flush_strategy/interval_flush_strategy.dart';

/// {@template aws_kinesis_datastreams.kinesis_data_streams_options}
/// Configuration options for the [KinesisDataStreams] client.
///
/// Use this class to customize the behavior of the Kinesis client:
///
/// ```dart
/// final options = KinesisDataStreamsOptions(
///   cacheMaxBytes: 10 * 1024 * 1024, // 10MB
///   maxRetries: 3,
///   flushStrategy: KinesisDataStreamsInterval(
///     interval: Duration(seconds: 60),
///   ),
/// );
/// ```
/// {@endtemplate}
class KinesisDataStreamsOptions {
  /// {@macro aws_kinesis_datastreams.kinesis_data_streams_options}
  ///
  /// Creates configuration options for the KinesisDataStreams client.
  ///
  /// - [cacheMaxBytes]: Maximum size of the local cache in bytes. Defaults to 5MB.
  /// - [maxRetries]: Maximum number of retry attempts for failed records. Defaults to 5.
  /// - [flushStrategy]: Strategy for automatic flushing. Defaults to 30-second intervals.
  const KinesisDataStreamsOptions({
    this.cacheMaxBytes = 5 * 1024 * 1024, // 5MB
    this.maxRetries = 5,
    this.flushStrategy = const KinesisDataStreamsInterval(),
  });

  /// Maximum size of the local cache in bytes.
  ///
  /// When the cache reaches this limit, new records will be rejected with a
  /// [CacheFullException] until space is freed by flushing or clearing the cache.
  ///
  /// Defaults to 5MB (5 * 1024 * 1024 bytes).
  final int cacheMaxBytes;

  /// Maximum number of retry attempts for failed records.
  ///
  /// Records that fail more than this many times will be permanently removed
  /// from the cache. This prevents records with persistent errors from
  /// blocking the queue indefinitely.
  ///
  /// Defaults to 5 retries.
  final int maxRetries;

  /// Strategy for automatic flushing of cached records.
  ///
  /// The default strategy is [KinesisDataStreamsInterval] with a 30-second
  /// interval between flush operations.
  final KinesisDataStreamsFlushStrategy flushStrategy;
}

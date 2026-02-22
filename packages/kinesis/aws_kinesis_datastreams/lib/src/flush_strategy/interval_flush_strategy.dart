// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';

/// {@template aws_kinesis_datastreams.interval_flush_strategy}
/// Interval-based flush strategy that triggers automatic flushing at regular intervals.
///
/// This is the default flush strategy used by [KinesisDataStreams]. Records are
/// automatically flushed to Kinesis at the specified interval.
///
/// Example:
/// ```dart
/// final strategy = KinesisDataStreamsInterval(
///   interval: Duration(seconds: 60), // Flush every minute
/// );
/// ```
/// {@endtemplate}
class KinesisDataStreamsInterval extends KinesisDataStreamsFlushStrategy {
  /// {@macro aws_kinesis_datastreams.interval_flush_strategy}
  ///
  /// Creates an interval-based flush strategy.
  ///
  /// The [interval] determines how frequently automatic flushing occurs.
  /// Defaults to 30 seconds.
  const KinesisDataStreamsInterval({
    this.interval = const Duration(seconds: 30),
  });

  /// The interval between automatic flush operations.
  ///
  /// Shorter intervals mean more frequent API calls but lower latency.
  /// Longer intervals reduce API calls but increase the time before
  /// records are sent.
  ///
  /// Defaults to 30 seconds.
  final Duration interval;
}

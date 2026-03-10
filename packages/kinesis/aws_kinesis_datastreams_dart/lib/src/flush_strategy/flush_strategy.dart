// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.flush_strategy}
/// Determines when automatic flushing of cached records occurs.
///
/// Available strategies:
/// - [KinesisDataStreamsInterval]: Flush at a fixed time interval (default)
/// - [KinesisDataStreamsNone]: Disable automatic flushing entirely
/// {@endtemplate}
sealed class KinesisDataStreamsFlushStrategy {
  /// {@macro aws_kinesis_datastreams.flush_strategy}
  const KinesisDataStreamsFlushStrategy();
}

/// {@template aws_kinesis_datastreams.interval_flush_strategy}
/// A flush strategy that triggers automatic flushes at a fixed interval.
/// {@endtemplate}
final class KinesisDataStreamsInterval extends KinesisDataStreamsFlushStrategy {
  /// {@macro aws_kinesis_datastreams.interval_flush_strategy}
  const KinesisDataStreamsInterval({
    this.interval = const Duration(seconds: 30),
  });

  /// The interval between automatic flush operations.
  final Duration interval;
}

/// {@template aws_kinesis_datastreams.none_flush_strategy}
/// A flush strategy that disables automatic flushing.
/// {@endtemplate}
final class KinesisDataStreamsNone extends KinesisDataStreamsFlushStrategy {
  /// {@macro aws_kinesis_datastreams.none_flush_strategy}
  const KinesisDataStreamsNone();
}

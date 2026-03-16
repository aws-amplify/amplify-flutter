// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.flush_strategy}
/// Determines when automatic flushing of cached records occurs.
///
/// Available strategies:
/// - [FlushInterval]: Flush at a fixed time interval (default)
/// - [FlushNone]: Disable automatic flushing entirely
/// {@endtemplate}
sealed class FlushStrategy {
  /// {@macro aws_kinesis_datastreams.flush_strategy}
  const FlushStrategy();
}

/// {@template aws_kinesis_datastreams.interval_flush_strategy}
/// A flush strategy that triggers automatic flushes at a fixed interval.
/// {@endtemplate}
final class FlushInterval extends FlushStrategy {
  /// {@macro aws_kinesis_datastreams.interval_flush_strategy}
  const FlushInterval({this.interval = const Duration(seconds: 30)});

  /// The interval between automatic flush operations.
  final Duration interval;
}

/// {@template aws_kinesis_datastreams.none_flush_strategy}
/// A flush strategy that disables automatic flushing.
/// {@endtemplate}
final class FlushNone extends FlushStrategy {
  /// {@macro aws_kinesis_datastreams.none_flush_strategy}
  const FlushNone();
}

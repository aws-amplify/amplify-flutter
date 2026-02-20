// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.flush_strategy}
/// Base class for flush strategies that determine when automatic flushing occurs.
///
/// Implement this class to create custom flush strategies. The library provides
/// [KinesisDataStreamsInterval] as the default implementation.
///
/// See also:
/// - [KinesisDataStreamsInterval] for interval-based flushing
/// {@endtemplate}
abstract class KinesisDataStreamsFlushStrategy {
  /// {@macro aws_kinesis_datastreams.flush_strategy}
  const KinesisDataStreamsFlushStrategy();
}

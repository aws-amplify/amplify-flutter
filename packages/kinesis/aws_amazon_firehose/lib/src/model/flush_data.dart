// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_amazon_firehose.flush_data}
/// Data returned from a flush operation.
/// {@endtemplate}
class FlushData {
  /// {@macro aws_amazon_firehose.flush_data}
  const FlushData({this.recordsFlushed = 0, this.flushInProgress = false});

  /// The number of records successfully flushed.
  final int recordsFlushed;

  /// Whether a flush was already in progress when this call was made.
  final bool flushInProgress;

  @override
  String toString() =>
      'FlushData(recordsFlushed: $recordsFlushed, flushInProgress: $flushInProgress)';
}

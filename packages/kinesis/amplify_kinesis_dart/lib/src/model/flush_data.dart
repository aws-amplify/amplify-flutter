// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_kinesis.flush_data}
/// Data returned from a flush operation.
/// {@endtemplate}
final class FlushData {
  /// {@macro amplify_kinesis.flush_data}
  const FlushData({this.recordsFlushed = 0, this.flushInProgress = false});

  /// The number of records successfully flushed.
  final int recordsFlushed;

  /// Whether a flush was already in progress when this call was made.
  final bool flushInProgress;

  @override
  String toString() =>
      'FlushData(recordsFlushed: $recordsFlushed, flushInProgress: $flushInProgress)';
}

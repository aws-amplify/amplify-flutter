// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.clear_cache_data}
/// Data returned from a clearCache operation.
/// {@endtemplate}
class ClearCacheData {
  /// {@macro aws_kinesis_datastreams.clear_cache_data}
  const ClearCacheData({this.recordsCleared = 0});

  /// The number of records that were cleared from the cache.
  final int recordsCleared;

  @override
  String toString() => 'ClearCacheData(recordsCleared: $recordsCleared)';
}

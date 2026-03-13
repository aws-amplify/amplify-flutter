// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template aws_kinesis_datastreams.record_data}
/// Data returned from a record operation.
/// {@endtemplate}
final class RecordData {
  /// {@macro aws_kinesis_datastreams.record_data}
  const RecordData({required this.recordSize});

  /// The size of the recorded data in bytes (data + partition key).
  final int recordSize;

  @override
  String toString() => 'RecordData(recordSize: $recordSize)';
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_kinesis.record_data}
/// Data returned from a record operation.
/// {@endtemplate}
final class RecordData {
  /// {@macro amplify_kinesis.record_data}
  const RecordData({required this.recordSize});

  /// The size of the recorded data in bytes (data + partition key).
  final int recordSize;

  @override
  String toString() => 'RecordData(recordSize: $recordSize)';
}

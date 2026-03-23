// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// Internal representation of a record to be sent to Firehose.
///
/// Unlike Kinesis Data Streams, Firehose records do not have a
/// partition key. The record size is simply the data blob length.
final class RecordInput {
  /// Creates a new Firehose record.
  RecordInput({
    required this.data,
    required this.streamName,
    required this.createdAt,
  }) : dataSize = data.length;

  /// Creates a Firehose record with the current timestamp.
  factory RecordInput.now({
    required Uint8List data,
    required String streamName,
  }) {
    return RecordInput(
      data: data,
      streamName: streamName,
      createdAt: DateTime.now(),
    );
  }

  /// The data blob to send to Firehose.
  final Uint8List data;

  /// The name of the Firehose delivery stream.
  final String streamName;

  /// The size of the record in bytes (data blob only).
  ///
  /// Per AWS docs, the per-record size limit for Firehose is 1,000 KiB.
  /// Unlike Kinesis Data Streams, there is no partition key to include
  /// in the size calculation.
  final int dataSize;

  /// Timestamp of when the record was created.
  final DateTime createdAt;
}

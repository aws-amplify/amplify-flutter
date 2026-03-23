// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// Internal representation of a record to be sent to Firehose.
///
/// Unlike Kinesis Data Streams, Firehose records do not have a partition key.
/// The [dataSize] is simply the length of the data blob.
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

  /// The delivery stream name.
  final String streamName;

  /// The size of the data in bytes.
  ///
  /// For Firehose, this is simply the data blob length (no partition key).
  final int dataSize;

  /// Timestamp of when the record was created.
  final DateTime createdAt;
}

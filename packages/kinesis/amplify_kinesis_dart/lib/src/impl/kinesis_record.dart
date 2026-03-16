// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

/// Internal representation of a record to be sent to Kinesis.
final class RecordInput {
  /// Creates a new Kinesis record.
  RecordInput({
    required this.data,
    required this.partitionKey,
    required this.streamName,
    required this.createdAt,
  }) : dataSize = data.length + utf8.encode(partitionKey).length;

  /// Creates a Kinesis record with the current timestamp.
  factory RecordInput.now({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) {
    return RecordInput(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
      createdAt: DateTime.now(),
    );
  }

  /// The data blob to send to Kinesis.
  final Uint8List data;

  /// The partition key for the record.
  final String partitionKey;

  /// The name of the Kinesis Data Stream.
  final String streamName;

  /// The size of the record in bytes (data blob + partition key).
  ///
  /// Per AWS docs, the record size limit applies to the total size of the
  /// partition key and data blob combined. Computed once at construction
  /// to avoid repeated UTF-8 encoding of the partition key.
  final int dataSize;

  /// Timestamp of when the record was created.
  final DateTime createdAt;
}

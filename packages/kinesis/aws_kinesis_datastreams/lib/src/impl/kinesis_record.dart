// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

/// Internal representation of a record to be sent to Kinesis.
class KinesisRecord {
  /// Creates a new Kinesis record.
  KinesisRecord({
    required this.data,
    required this.partitionKey,
    required this.streamName,
  }) : dataSize = data.length + utf8.encode(partitionKey).length,
       createdAt = DateTime.now();

  /// Creates a Kinesis record with a specific creation timestamp (for testing).
  KinesisRecord.withTimestamp({
    required this.data,
    required this.partitionKey,
    required this.streamName,
    required this.createdAt,
  }) : dataSize = data.length + utf8.encode(partitionKey).length;

  /// The data blob to send to Kinesis.
  final Uint8List data;

  /// The partition key for the record.
  final String partitionKey;

  /// The name of the Kinesis Data Stream.
  final String streamName;

  /// The size of the record in bytes (data blob + partition key).
  ///
  /// Per AWS docs, the record size limit applies to the total size of the
  /// partition key and data blob combined.
  final int dataSize;

  /// Timestamp of when the record was created.
  final DateTime createdAt;
}

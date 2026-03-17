// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// {@template amplify_kinesis.record}
/// A record persisted in local storage, ready to be flushed to Kinesis.
///
/// This is a plain Dart class with no ORM coupling, shared across all
/// storage backends (SQLite, IndexedDB, In-Memory).
/// {@endtemplate}
final class Record {
  /// {@macro amplify_kinesis.record}
  const Record({
    required this.id,
    required this.streamName,
    required this.partitionKey,
    required this.data,
    required this.dataSize,
    required this.retryCount,
    required this.createdAt,
  });

  /// Auto-incrementing primary key.
  final int id;

  /// The name of the Kinesis Data Stream.
  final String streamName;

  /// The partition key for the record.
  final String partitionKey;

  /// The data blob to send to Kinesis.
  final Uint8List data;

  /// The size of the data blob in bytes.
  final int dataSize;

  /// The number of times this record has been retried.
  final int retryCount;

  /// Unix timestamp (milliseconds) of when the record was created.
  final int createdAt;

  @override
  String toString() =>
      'Record(id: $id, streamName: $streamName, '
      'partitionKey: $partitionKey, dataSize: $dataSize, '
      'retryCount: $retryCount)';
}

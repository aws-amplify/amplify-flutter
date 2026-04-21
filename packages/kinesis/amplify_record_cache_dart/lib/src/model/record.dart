// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// {@template amplify_record_cache.record}
/// A record persisted in local storage, ready to be flushed to a streaming
/// service (Kinesis Data Streams, Firehose, etc.).
///
/// This is a plain Dart class with no ORM coupling, shared across all
/// storage backends (SQLite, IndexedDB, In-Memory).
/// {@endtemplate}
final class Record {
  /// {@macro amplify_record_cache.record}
  const Record({
    required this.id,
    required this.streamName,
    required this.data,
    required this.dataSize,
    required this.retryCount,
    required this.createdAt,
    this.partitionKey,
  });

  /// Auto-incrementing primary key.
  final int id;

  /// The name of the target stream.
  final String streamName;

  /// Optional partition key (used by Kinesis Data Streams, null for Firehose).
  final String? partitionKey;

  /// The data blob to send.
  final Uint8List data;

  /// The size of the record in bytes.
  final int dataSize;

  /// The number of times this record has been retried.
  final int retryCount;

  /// Unix timestamp (milliseconds) of when the record was created.
  final int createdAt;

  @override
  String toString() =>
      'Record(id: $id, streamName: $streamName, '
      'dataSize: $dataSize, retryCount: $retryCount)';
}

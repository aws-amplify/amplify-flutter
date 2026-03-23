// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// {@template amplify_firehose_dart.record}
/// A record persisted in local storage, ready to be flushed to Firehose.
///
/// This is a plain Dart class with no ORM coupling, shared across all
/// storage backends (SQLite, IndexedDB, In-Memory).
///
/// Unlike Kinesis Data Streams, Firehose records do not have a partition key.
/// {@endtemplate}
final class Record {
  /// {@macro amplify_firehose_dart.record}
  const Record({
    required this.id,
    required this.streamName,
    required this.data,
    required this.dataSize,
    required this.retryCount,
    required this.createdAt,
  });

  /// Auto-incrementing primary key.
  final int id;

  /// The name of the Firehose delivery stream.
  final String streamName;

  /// The data blob to send to Firehose.
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
      'dataSize: $dataSize, retryCount: $retryCount)';
}

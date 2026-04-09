// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// {@template amplify_record_cache.record_input}
/// A record to be persisted in the cache before sending.
///
/// The [dataSize] is provided by the caller so that each service can
/// compute it according to its own rules:
/// - Kinesis Data Streams: `data.length + utf8.encode(partitionKey).length`
/// - Firehose: `data.length`
/// {@endtemplate}
class RecordInput {
  /// Creates a new record input.
  RecordInput({
    required this.data,
    required this.streamName,
    required this.dataSize,
    required this.createdAt,
  });

  /// Creates a record input with the current timestamp.
  factory RecordInput.now({
    required Uint8List data,
    required String streamName,
    required int dataSize,
  }) {
    return RecordInput(
      data: data,
      streamName: streamName,
      dataSize: dataSize,
      createdAt: DateTime.now(),
    );
  }

  /// The data blob.
  final Uint8List data;

  /// The name of the target stream.
  final String streamName;

  /// The size of the record in bytes (caller-computed).
  final int dataSize;

  /// Timestamp of when the record was created.
  final DateTime createdAt;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

/// {@template aws_amazon_firehose.firehose_data_record}
/// Represents a record to be sent to Amazon Data Firehose.
///
/// Unlike Kinesis Data Streams, Firehose records do not have a partition key.
/// {@endtemplate}
class FirehoseDataRecord {
  /// {@macro aws_amazon_firehose.firehose_data_record}
  FirehoseDataRecord({
    required this.data,
    required this.streamName,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// The data blob to send.
  final Uint8List data;

  /// The delivery stream name.
  final String streamName;

  /// When the record was created.
  final DateTime createdAt;

  /// Size of the data in bytes.
  int get dataSize => data.length;
}

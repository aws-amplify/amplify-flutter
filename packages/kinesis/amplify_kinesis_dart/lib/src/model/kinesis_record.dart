// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// {@template amplify_kinesis.kinesis_record_input}
/// A KDS-specific record input that includes a [partitionKey].
///
/// Extends [RecordInput] with the partition key required by the Kinesis
/// `PutRecords` API. The [dataSize] accounts for both the data blob and
/// the UTF-8 encoded partition key bytes.
/// {@endtemplate}
class KinesisRecordInput extends RecordInput {
  /// {@macro amplify_kinesis.kinesis_record_input}
  KinesisRecordInput({
    required super.data,
    required super.streamName,
    required super.dataSize,
    required super.createdAt,
    required this.partitionKey,
  });

  /// Creates a [KinesisRecordInput] with the current timestamp.
  ///
  /// Computes [dataSize] as `data.length + utf8.encode(partitionKey).length`
  /// per the KDS PutRecords API spec.
  factory KinesisRecordInput.now({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) {
    return KinesisRecordInput(
      data: data,
      streamName: streamName,
      partitionKey: partitionKey,
      dataSize: data.length + utf8.encode(partitionKey).length,
      createdAt: DateTime.now(),
    );
  }

  /// The partition key for the Kinesis record.
  final String partitionKey;
}

/// {@template amplify_kinesis.kinesis_record}
/// A persisted KDS record with a [partitionKey].
///
/// Extends the shared [Record] with the partition key needed by the
/// Kinesis `PutRecords` API.
/// {@endtemplate}
class KinesisRecord extends Record {
  /// {@macro amplify_kinesis.kinesis_record}
  const KinesisRecord({
    required super.id,
    required super.streamName,
    required super.data,
    required super.dataSize,
    required super.retryCount,
    required super.createdAt,
    required this.partitionKey,
  });

  /// The partition key for the Kinesis record.
  final String partitionKey;

  @override
  String toString() =>
      'KinesisRecord(id: $id, streamName: $streamName, '
      'partitionKey: $partitionKey, dataSize: $dataSize, '
      'retryCount: $retryCount)';
}

/// Creates a [KinesisRecordInput] for Kinesis Data Streams.
///
/// Unlike the generic `RecordInput`, this factory computes `dataSize`
/// as `data.length + utf8.encode(partitionKey).length` per the KDS
/// PutRecords API spec.
KinesisRecordInput createKinesisRecordInput({
  required Uint8List data,
  required String partitionKey,
  required String streamName,
  required DateTime createdAt,
}) {
  return KinesisRecordInput(
    data: data,
    streamName: streamName,
    partitionKey: partitionKey,
    dataSize: data.length + utf8.encode(partitionKey).length,
    createdAt: createdAt,
  );
}

/// Creates a [KinesisRecordInput] for Kinesis Data Streams with the current
/// timestamp.
KinesisRecordInput createKinesisRecordInputNow({
  required Uint8List data,
  required String partitionKey,
  required String streamName,
}) {
  return createKinesisRecordInput(
    data: data,
    partitionKey: partitionKey,
    streamName: streamName,
    createdAt: DateTime.now(),
  );
}

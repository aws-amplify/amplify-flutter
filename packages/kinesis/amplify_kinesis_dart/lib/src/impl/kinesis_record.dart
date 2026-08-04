// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// Creates a [RecordInput] for Kinesis Data Streams.
///
/// Unlike the generic `RecordInput`, this factory computes `dataSize`
/// as `data.length + utf8.encode(partitionKey).length` per the KDS
/// PutRecords API spec.
RecordInput createKinesisRecordInput({
  required Uint8List data,
  required String partitionKey,
  required String streamName,
  required DateTime createdAt,
}) {
  return RecordInput(
    data: data,
    streamName: streamName,
    partitionKey: partitionKey,
    dataSize: data.length + utf8.encode(partitionKey).length,
    createdAt: createdAt,
  );
}

/// Creates a [RecordInput] for Kinesis Data Streams with the current
/// timestamp.
RecordInput createKinesisRecordInputNow({
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

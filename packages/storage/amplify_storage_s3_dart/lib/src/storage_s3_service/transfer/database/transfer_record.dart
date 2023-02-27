// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'transfer_record.g.dart';

/// {@template amplify_storage_s3_dart.transfer_data}
/// the type used by Storage S3 plugin upload operations when using s3 multipart upload.
/// it is persisted to TransferDatabase.
/// {@endtemplate amplify_storage_s3_dart.transfer_data}
@JsonSerializable()
class TransferRecord {
  /// {@macro amplify_storage_s3_dart.transfer_data}
  const TransferRecord({
    required this.uploadId,
    required this.objectKey,
    required this.createdAt,
  });

  /// creates new [TransferRecord] object from a [json] map.
  factory TransferRecord.fromJson(Map<String, dynamic> json) =>
      _$TransferRecordFromJson(json);

  /// creates new [TransferRecord] object from [jsonString].
  factory TransferRecord.fromJsonString(String jsonString) {
    return TransferRecord.fromJson(
      jsonDecode(jsonString) as Map<String, dynamic>,
    );
  }

  /// The multipart upload id.
  final String uploadId;

  /// The object key associated with the [uploadId].
  final String objectKey;

  /// Timestamp of [uploadId] creation.
  final DateTime createdAt;

  /// return json map representation of [TransferRecord] object.
  Map<String, dynamic> toJson() => _$TransferRecordToJson(this);

  /// return json string representation of [TransferRecord] object.
  String toJsonString() => jsonEncode(toJson());
}

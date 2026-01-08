// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

part 'aws_credentials.g.dart';

sealed class AWSCredentials {
  String get accessKeyId;
  String get secretAccessKey;
}

@JsonSerializable(fieldRename: FieldRename.snake)
final class StaticCredentials implements AWSCredentials {
  StaticCredentials(this.accessKeyId, this.secretAccessKey);

  factory StaticCredentials.fromJson(Map<String, dynamic> json) =>
      _$StaticCredentialsFromJson(json);

  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;

  Map<String, dynamic> toJson() => _$StaticCredentialsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
final class TemporaryCredentials implements AWSCredentials {
  TemporaryCredentials(
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
    this.expiration,
  );

  factory TemporaryCredentials.fromJson(Map<String, dynamic> json) =>
      _$TemporaryCredentialsFromJson(json);

  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;
  final String sessionToken;
  final DateTime expiration;

  Map<String, dynamic> toJson() => _$TemporaryCredentialsToJson(this);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

part 'aws_credentials.g.dart';

/// {@template amplify_foundation_dart.aws_credentials}
/// Base class for AWS credentials.
/// {@endtemplate}
sealed class AWSCredentials {
  /// {@template amplify_foundation_dart.aws_credentials.access_key_id}
  /// The AWS access key ID.
  /// {@endtemplate}
  String get accessKeyId;

  /// {@template amplify_foundation_dart.aws_credentials.secret_access_key}
  /// The AWS secret access key.
  /// {@endtemplate}
  String get secretAccessKey;
}

/// {@template amplify_foundation_dart.static_credentials}
/// Static AWS credentials with an access key ID and secret access key.
/// {@endtemplate}
@JsonSerializable(fieldRename: FieldRename.snake)
final class StaticCredentials implements AWSCredentials {
  /// {@macro amplify_foundation_dart.static_credentials}
  StaticCredentials(this.accessKeyId, this.secretAccessKey);

  /// Creates [StaticCredentials] from JSON.
  factory StaticCredentials.fromJson(Map<String, dynamic> json) =>
      _$StaticCredentialsFromJson(json);

  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;

  /// Converts [StaticCredentials] to JSON.
  Map<String, dynamic> toJson() => _$StaticCredentialsToJson(this);
}

/// {@template amplify_foundation_dart.temporary_credentials}
/// Temporary AWS credentials with an access key ID, secret access key,
/// session token, and expiration time.
/// {@endtemplate}
@JsonSerializable(fieldRename: FieldRename.snake)
final class TemporaryCredentials implements AWSCredentials {
  /// {@macro amplify_foundation_dart.temporary_credentials}
  TemporaryCredentials(
    this.accessKeyId,
    this.secretAccessKey,
    this.sessionToken,
    this.expiration,
  );

  /// Creates [TemporaryCredentials] from JSON.
  factory TemporaryCredentials.fromJson(Map<String, dynamic> json) =>
      _$TemporaryCredentialsFromJson(json);

  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;

  /// The session token for temporary credentials.
  final String sessionToken;

  /// The expiration time for the temporary credentials.
  final DateTime expiration;

  /// Converts [TemporaryCredentials] to JSON.
  Map<String, dynamic> toJson() => _$TemporaryCredentialsToJson(this);
}

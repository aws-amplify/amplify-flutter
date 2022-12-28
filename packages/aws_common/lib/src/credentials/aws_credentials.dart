// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aws_credentials.g.dart';

/// {@template aws_signature_v4.aws_credentials}
/// A set of credentials used for accessing AWS services.
///
/// Temporary credentials must include an STS [sessionToken].
/// {@endtemplate}
@JsonSerializable(fieldRename: FieldRename.snake)
class AWSCredentials
    with AWSEquatable<AWSCredentials>, AWSSerializable<Map<String, Object?>> {
  /// {@macro aws_signature_v4.aws_credentials}
  const AWSCredentials(
    this.accessKeyId,
    this.secretAccessKey, [
    this.sessionToken,
    this.expiration,
  ]);

  /// Deserializes credentials from JSON.
  factory AWSCredentials.fromJson(Map<String, dynamic> json) =>
      _$AWSCredentialsFromJson(json);

  /// AWS Access Key ID
  final String accessKeyId;

  /// AWS Secret Access Key
  final String secretAccessKey;

  /// AWS Session Token
  @JsonKey(name: 'token')
  final String? sessionToken;

  /// The time the credentials will expire
  final DateTime? expiration;

  @override
  List<Object?> get props => [
        accessKeyId,
        secretAccessKey,
        sessionToken,
        expiration?.toUtc(),
      ];

  @override
  Map<String, Object?> toJson() => _$AWSCredentialsToJson(this);
}

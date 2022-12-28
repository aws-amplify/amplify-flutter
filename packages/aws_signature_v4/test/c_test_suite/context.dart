// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:json_annotation/json_annotation.dart';

part 'context.g.dart';

/// Test context used to configure the [credentials] and other signing
/// parameters.
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Context {
  const Context({
    required this.credentials,
    required this.expirationInSeconds,
    required this.normalize,
    required this.region,
    required this.service,
    required this.signBody,
    required this.timestamp,
    this.omitSessionToken,
  });

  factory Context.fromJson(Map<String, Object?> json) =>
      _$ContextFromJson(json);

  /// The AWS credentials to use for signing.
  final AWSCredentials credentials;

  /// The expiration of the request, used when building signed URLs.
  final int expirationInSeconds;

  /// Whether to normalize the path of the request.
  final bool normalize;

  /// The request region.
  final String region;

  /// The AWS service of the request.
  final String service;

  /// Whether to sign the body.
  final bool signBody;

  /// The timestamp to use for the request.
  final DateTime timestamp;

  /// Whether to omit the session token from signing. If `true`, include it at
  /// the end after the signing process.
  ///
  /// Will be non-null if `credentials.sessionToken` is non-null.
  final bool? omitSessionToken;

  AWSDateTime get awsDateTime => AWSDateTime(timestamp);

  Map<String, Object?> toJson() => _$ContextToJson(this);
}

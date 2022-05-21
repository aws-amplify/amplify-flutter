// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aws_credentials.g.dart';

/// {@template aws_signature_v4.aws_credentials}
/// A set of credentials used for accessing AWS services.
///
/// Temporary credentials must include an STS [sessionToken].
/// {@endtemplate}
@JsonSerializable(fieldRename: FieldRename.snake)
class AWSCredentials with AWSSerializable {
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
  Map<String, Object?> toJson() => _$AWSCredentialsToJson(this);

  @override
  String toString() => 'AWSCredentials{accessKeyId=***, secretAccessKey=***, '
      'sessionToken=${sessionToken == null ? 'null' : '***'}, '
      'expiration=${expiration == null ? 'null' : '***'}}';
}

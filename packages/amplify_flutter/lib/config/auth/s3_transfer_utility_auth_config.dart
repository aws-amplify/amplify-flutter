/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:json_annotation/json_annotation.dart';

part 's3_transfer_utility_auth_config.g.dart';

@JsonSerializable()
class S3TransferUtilityAuthConfig {
  @JsonKey(name: 'Bucket')
  final String? bucket;

  @JsonKey(name: 'Region')
  final String? region;

  const S3TransferUtilityAuthConfig(
      {required this.bucket, required this.region});

  factory S3TransferUtilityAuthConfig.fromJson(Map<String, dynamic> json) =>
      _$S3TransferUtilityAuthConfigFromJson(json);

  Map<String, dynamic> toJson() => _$S3TransferUtilityAuthConfigToJson(this);
}

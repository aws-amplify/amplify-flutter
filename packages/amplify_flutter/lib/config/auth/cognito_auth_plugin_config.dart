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

import 'package:amplify_flutter/config/auth/appsync_auth_config.dart';
import 'package:amplify_flutter/config/auth/auth_block_config.dart';
import 'package:amplify_flutter/config/auth/cognito_userpool_config.dart';
import 'package:amplify_flutter/config/auth/credential_provider_config.dart';
import 'package:amplify_flutter/config/auth/pinpoint_analytics_auth_config.dart';
import 'package:amplify_flutter/config/auth/pinpoint_targeting_auth_config.dart';
import 'package:amplify_flutter/config/auth/s3_transfer_utility_auth_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_auth_plugin_config.g.dart';

@JsonSerializable()
class CognitoAuthPluginConfig {
  @JsonKey(name: 'CognitoUserPool')
  final Map<String, CognitoUserPoolConfig>? userPool;

  @JsonKey(name: 'CredentialsProvider')
  final Map<String, Map<String, CredentialProviderConfig>>? credentialProvider;

  @JsonKey(name: 'Auth')
  final Map<String, AuthBlockConfig>? auth;

  @JsonKey(name: 'AppSync')
  final Map<String, AppSyncAuthConfig>? appSync;

  @JsonKey(name: 'PinpointAnalytics')
  final Map<String, PinpointAnalyticsAuthConfig>? pinpointAnalytics;

  @JsonKey(name: 'PinpointTargeting')
  final Map<String, PinpointTargetingAuthConfig>? pinpointTargeting;

  @JsonKey(name: 'S3TransferUtility')
  final Map<String, S3TransferUtilityAuthConfig>? s3TransferUtility;

  const CognitoAuthPluginConfig(
      {this.userPool,
      this.credentialProvider,
      this.auth,
      this.appSync,
      this.pinpointAnalytics,
      this.pinpointTargeting,
      this.s3TransferUtility});

  factory CognitoAuthPluginConfig.fromJson(Map<String, dynamic> json) =>
      _$CognitoAuthPluginConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CognitoAuthPluginConfigToJson(this);
}

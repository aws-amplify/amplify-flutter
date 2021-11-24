//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_plugin_config.dart';
import 'package:amplify_flutter/src/config/amplify_plugin_registry.dart';
import 'package:amplify_flutter/src/config/auth/cognito/appsync.dart';
import 'package:amplify_flutter/src/config/config_map.dart';
import 'package:meta/meta.dart';

export 'cognito/appsync.dart';
export 'cognito/auth.dart';
export 'cognito/authentication_flow_type.dart';
export 'cognito/credentials_provider.dart';
export 'cognito/identity_manager.dart';
export 'cognito/mfa.dart';
export 'cognito/oauth.dart';
export 'cognito/password_protection_settings.dart';
export 'cognito/pinpoint_analytics.dart';
export 'cognito/pinpoint_targeting.dart';
export 'cognito/s3_transfer_utility.dart';
export 'cognito/social_provider.dart';
export 'cognito/user_pool.dart';

part 'cognito_config.g.dart';

/// {@template amplify_flutter.cognito_plugin_config_factory}
/// Configuration factory for [CognitoPluginConfig].
/// {@endtemplate}
@internal
class CognitoPluginConfigFactory
    extends AmplifyPluginConfigFactory<CognitoPluginConfig> {
  /// {@macro amplify_flutter.cognito_plugin_config_factory}
  const CognitoPluginConfigFactory();

  @override
  CognitoPluginConfig build(Map<String, Object?> json) {
    return CognitoPluginConfig.fromJson(json);
  }

  @override
  String get name => CognitoPluginConfig.pluginKey;
}

/// {@template amplify_flutter.cognito_plugin_config}
/// The AWS Cognito plugin configuration.
/// {@endtemplate}
@awsSerializable
class CognitoPluginConfig
    with AWSEquatable<CognitoPluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_flutter.cognito_plugin_config}
  const CognitoPluginConfig({
    this.userAgent = 'aws-amplify-cli/0.1.0',
    this.version = '0.1.0',
    this.identityManager,
    this.credentialsProvider,
    this.cognitoUserPool,
    this.auth,
    this.appSync,
    this.pinpointAnalytics,
    this.pinpointTargeting,
    this.s3TransferUtility,
  });

  /// The plugin's configuration key.
  static const pluginKey = 'awsCognitoAuthPlugin';

  @override
  String get name => pluginKey;

  final String userAgent;
  final String version;

  final AWSConfigMap<CognitoIdentityManager>? identityManager;
  final CredentialsProviders? credentialsProvider;
  final AWSConfigMap<CognitoUserPoolConfig>? cognitoUserPool;
  final AWSConfigMap<CognitoAuthConfig>? auth;
  final AWSConfigMap<CognitoAppSyncConfig>? appSync;
  final AWSConfigMap<CognitoPinpointAnalyticsConfig>? pinpointAnalytics;
  final AWSConfigMap<CognitoPinpointTargetingConfig>? pinpointTargeting;
  final AWSConfigMap<S3TransferUtility>? s3TransferUtility;

  @override
  List<Object?> get props => [
        userAgent,
        version,
        identityManager,
        credentialsProvider,
        cognitoUserPool,
        auth,
        appSync,
        pinpointAnalytics,
        pinpointTargeting,
        s3TransferUtility,
      ];

  factory CognitoPluginConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoPluginConfigFromJson(json);

  @override
  Map<String, Object?> toJson() => _$CognitoPluginConfigToJson(this);
}

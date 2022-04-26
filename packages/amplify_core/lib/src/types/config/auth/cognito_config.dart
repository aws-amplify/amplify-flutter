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

import 'package:amplify_core/src/types/config/auth/auth_config.dart';
import 'package:amplify_core/src/types/config/auth/cognito/s3_transfer_utility.dart';
import 'package:amplify_core/src/types/config/config_map.dart';
import 'package:amplify_core/src/util/equatable.dart';
import 'package:amplify_core/src/util/serializable.dart';
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

  CognitoPluginConfig copyWith({
    String? userAgent,
    String? version,
    AWSConfigMap<CognitoIdentityManager>? identityManager,
    CredentialsProviders? credentialsProvider,
    AWSConfigMap<CognitoUserPoolConfig>? cognitoUserPool,
    AWSConfigMap<CognitoAuthConfig>? auth,
    AWSConfigMap<CognitoAppSyncConfig>? appSync,
    AWSConfigMap<CognitoPinpointAnalyticsConfig>? pinpointAnalytics,
    AWSConfigMap<CognitoPinpointTargetingConfig>? pinpointTargeting,
    AWSConfigMap<S3TransferUtility>? s3TransferUtility,
  }) {
    return CognitoPluginConfig(
      userAgent: userAgent ?? this.userAgent,
      version: version ?? this.version,
      identityManager: identityManager ?? this.identityManager?.copy(),
      credentialsProvider:
          credentialsProvider ?? this.credentialsProvider?.copy(),
      cognitoUserPool: cognitoUserPool ?? this.cognitoUserPool?.copy(),
      auth: auth ?? this.auth?.copy(),
      appSync: appSync ?? this.appSync?.copy(),
      pinpointAnalytics: pinpointAnalytics ?? this.pinpointAnalytics?.copy(),
      pinpointTargeting: pinpointTargeting ?? this.pinpointTargeting?.copy(),
      s3TransferUtility: s3TransferUtility ?? this.s3TransferUtility?.copy(),
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoPluginConfigToJson(this);
}

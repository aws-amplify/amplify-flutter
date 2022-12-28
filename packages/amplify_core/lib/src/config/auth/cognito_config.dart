// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

export 'cognito/appsync.dart';
export 'cognito/auth.dart';
export 'cognito/authentication_flow_type.dart';
export 'cognito/cognito_user_attribute_key_converter.dart';
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

/// {@template amplify_core.cognito_plugin_config_factory}
/// Configuration factory for [CognitoPluginConfig].
/// {@endtemplate}
@internal
class CognitoPluginConfigFactory
    extends AmplifyPluginConfigFactory<CognitoPluginConfig> {
  /// {@macro amplify_core.cognito_plugin_config_factory}
  const CognitoPluginConfigFactory();

  @override
  CognitoPluginConfig build(Map<String, Object?> json) {
    return CognitoPluginConfig.fromJson(json);
  }

  @override
  String get name => CognitoPluginConfig.pluginKey;
}

/// {@template amplify_core.cognito_plugin_config}
/// The AWS Cognito plugin configuration.
/// {@endtemplate}
@zAwsSerializable
class CognitoPluginConfig
    with AWSEquatable<CognitoPluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.cognito_plugin_config}
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

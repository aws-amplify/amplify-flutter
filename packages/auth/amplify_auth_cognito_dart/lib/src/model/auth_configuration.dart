// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.model.auth_configuration;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.auth_configuration}
/// Union class for auth configurations of the different types.
/// {@endtemplate}

// TODO(nikahsn): refactor AuthConfiguration to not use AmplifyConfig types
class AuthConfiguration with AWSEquatable<AuthConfiguration> {
  const AuthConfiguration._({
    this.userPoolConfig,
    this.identityPoolConfig,
    this.hostedUiConfig,
    this.pinpointConfig,
  });

  /// Parses [amplifyOutputs] into the appropriate [AuthConfiguration] type.
  ///
  /// {@macro amplify_auth_cognito.auth_configuration}
  factory AuthConfiguration.fromAmplifyOutputs(AmplifyOutputs amplifyOutputs) {
    final authOutputs = amplifyOutputs.auth;
    if (authOutputs == null) {
      throw ConfigurationError(
        'Invalid config: No Auth config found',
      );
    }
    CognitoUserPoolConfig? userPoolConfig;
    if (authOutputs.userPoolId != null &&
        authOutputs.userPoolClientId != null) {
      // ignore: invalid_use_of_internal_member
      userPoolConfig = CognitoUserPoolConfig.fromAuthOutputs(authOutputs);
    }
    CognitoIdentityCredentialsProvider? identityPoolConfig;
    if (authOutputs.identityPoolId != null) {
      identityPoolConfig = CognitoIdentityCredentialsProvider(
        poolId: authOutputs.identityPoolId!,
        region: authOutputs.awsRegion,
      );
    }
    CognitoOAuthConfig? hostedUiConfig;
    if (authOutputs.userPoolClientId != null && authOutputs.oauth != null) {
      // ignore: invalid_use_of_internal_member
      hostedUiConfig = CognitoOAuthConfig.fromAuthOutputs(authOutputs);
    }
    if (userPoolConfig == null &&
        identityPoolConfig == null &&
        hostedUiConfig == null) {
      throw ConfigurationError(
        'Invalid config: No user pool or identity pool found',
      );
    }
    CognitoPinpointAnalyticsConfig? pinpointConfig;
    if (amplifyOutputs.analytics?.amazonPinpoint != null) {
      pinpointConfig = CognitoPinpointAnalyticsConfig(
        appId: amplifyOutputs.analytics!.amazonPinpoint!.appId,
        region: amplifyOutputs.analytics!.amazonPinpoint!.awsRegion,
      );
    }
    return AuthConfiguration._(
      userPoolConfig: userPoolConfig,
      identityPoolConfig: identityPoolConfig,
      hostedUiConfig: hostedUiConfig,
      pinpointConfig: pinpointConfig,
    );
  }

  /// Parses [config] into the appropriate [AuthConfiguration] type.
  ///
  /// {@macro amplify_auth_cognito.auth_configuration}
  factory AuthConfiguration.fromConfig(CognitoPluginConfig config) {
    final userPoolConfig = config.cognitoUserPool?.default$;
    final identityPoolConfig = config.credentialsProvider?.default$;
    final hostedUiConfig = config.auth?.default$?.oAuth;
    final pinpointConfig = config.pinpointAnalytics?.default$;

    if (userPoolConfig == null &&
        identityPoolConfig == null &&
        hostedUiConfig == null) {
      throw ConfigurationError(
        'Invalid config: No user pool or identity pool found',
      );
    }

    return AuthConfiguration._(
      userPoolConfig: userPoolConfig,
      identityPoolConfig: identityPoolConfig,
      hostedUiConfig: hostedUiConfig,
      pinpointConfig: pinpointConfig,
    );
  }

  /// The user pool config, if available.
  final CognitoUserPoolConfig? userPoolConfig;

  /// The identity pool config, if available.
  final CognitoIdentityCredentialsProvider? identityPoolConfig;

  /// The Hosted UI config, if available.
  final CognitoOAuthConfig? hostedUiConfig;

  /// The Pinpoint config, if available.
  final CognitoPinpointAnalyticsConfig? pinpointConfig;

  @override
  List<Object?> get props => [
        userPoolConfig,
        identityPoolConfig,
        hostedUiConfig,
        pinpointConfig,
      ];
}

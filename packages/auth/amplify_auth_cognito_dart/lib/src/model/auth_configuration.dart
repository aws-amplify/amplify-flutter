// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.model.auth_configuration;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.auth_configuration}
/// Union class for auth configurations of the different types.
/// {@endtemplate}
class AuthConfiguration with AWSEquatable<AuthConfiguration> {
  const AuthConfiguration._({
    this.userPoolConfig,
    this.identityPoolConfig,
    this.hostedUiConfig,
  });

  /// Parses [config] into the appropriate [AuthConfiguration] type.
  ///
  /// {@macro amplify_auth_cognito.auth_configuration}
  factory AuthConfiguration.fromConfig(CognitoPluginConfig config) {
    final userPoolConfig = config.cognitoUserPool?.default$;
    final identityPoolConfig = config.credentialsProvider?.default$;
    final hostedUiConfig = config.auth?.default$?.oAuth;

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
    );
  }

  /// The user pool config, if available.
  final CognitoUserPoolConfig? userPoolConfig;

  /// The identity pool config, if available.
  final CognitoIdentityCredentialsProvider? identityPoolConfig;

  /// The Hosted UI config, if available.
  final CognitoOAuthConfig? hostedUiConfig;

  @override
  List<Object?> get props => [
        userPoolConfig,
        identityPoolConfig,
        hostedUiConfig,
      ];
}

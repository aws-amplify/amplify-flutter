// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

export 'cognito_config.dart' hide CognitoPluginConfigFactory;

part 'auth_config.g.dart';

/// {@template amplify_core.auth_config}
/// The Auth category configuration.
/// {@endtemplate}
@zAmplifySerializable
class AuthConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.auth_config}
  const AuthConfig({required Map<String, AmplifyPluginConfig> plugins})
      : super(plugins);

  factory AuthConfig.fromJson(Map<String, Object?> json) =>
      _$AuthConfigFromJson(json);

  /// Creates an [AuthConfig] with the given Cognito configurations.
  factory AuthConfig.cognito({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityPoolConfig? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
    AuthenticationFlowType? authenticationFlowType,
    List<SocialProvider>? socialProviders,
    List<CognitoUserAttributeKey>? usernameAttributes,
    List<CognitoUserAttributeKey>? signupAttributes,
    PasswordProtectionSettings? passwordProtectionSettings,
    MfaConfiguration? mfaConfiguration,
    List<MfaType>? mfaTypes,
    List<CognitoUserAttributeKey>? verificationMechanisms,
  }) =>
      AuthConfig(
        plugins: {
          CognitoPluginConfig.pluginKey: CognitoPluginConfig(
            auth: AWSConfigMap.withDefault(
              CognitoAuthConfig(
                oAuth: hostedUiConfig,
                authenticationFlowType: authenticationFlowType,
                socialProviders: socialProviders,
                usernameAttributes: usernameAttributes ?? const [],
                signupAttributes: signupAttributes ?? const [],
                passwordProtectionSettings: passwordProtectionSettings ??
                    const PasswordProtectionSettings(),
                mfaConfiguration: mfaConfiguration,
                mfaTypes: mfaTypes,
                verificationMechanisms: verificationMechanisms,
              ),
            ),
            cognitoUserPool: userPoolConfig == null
                ? null
                : AWSConfigMap.withDefault(userPoolConfig),
            credentialsProvider: identityPoolConfig == null
                ? null
                : CredentialsProviders(
                    AWSConfigMap({
                      CognitoIdentityCredentialsProvider.configKey:
                          AWSConfigMap.withDefault(identityPoolConfig),
                    }),
                  ),
          ),
        },
      );

  /// The AWS Cognito plugin configuration, if available.
  @override
  CognitoPluginConfig? get awsPlugin =>
      plugins[CognitoPluginConfig.pluginKey] as CognitoPluginConfig?;

  @override
  AuthConfig copy() => AuthConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$AuthConfigToJson(this);
}

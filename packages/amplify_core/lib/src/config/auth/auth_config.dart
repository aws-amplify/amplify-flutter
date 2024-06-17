// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_response_type.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/password_policy.dart';
import 'package:meta/meta.dart';

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
    List<SocialProvider>? socialProviders,
    List<CognitoUserAttributeKey>? usernameAttributes,
    List<CognitoUserAttributeKey>? signupAttributes,
    PasswordProtectionSettings? passwordProtectionSettings,
    MfaConfiguration? mfaConfiguration,
    List<MfaType>? mfaTypes,
    List<CognitoUserAttributeKey>? verificationMechanisms,
    CognitoPinpointAnalyticsConfig? pinpointAnalyticsConfig,
  }) =>
      AuthConfig(
        plugins: {
          CognitoPluginConfig.pluginKey: CognitoPluginConfig(
            auth: AWSConfigMap.withDefault(
              CognitoAuthConfig(
                oAuth: hostedUiConfig,
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
            pinpointAnalytics: pinpointAnalyticsConfig == null
                ? null
                : AWSConfigMap.withDefault(pinpointAnalyticsConfig),
          ),
        },
      );

  /// The AWS Cognito plugin configuration, if available.
  @override
  CognitoPluginConfig? get awsPlugin =>
      plugins[CognitoPluginConfig.pluginKey] as CognitoPluginConfig?;

  @override
  AuthConfig copy() => AuthConfig(plugins: Map.of(plugins));

  @internal
  AuthOutputs? toAuthOutputs() {
    final plugin = awsPlugin?.auth?.default$;
    final userPool = awsPlugin?.cognitoUserPool?.default$;
    final identityPool = awsPlugin?.credentialsProvider?.default$;
    final region = userPool?.region ?? identityPool?.region;
    if (region == null) {
      return null;
    }

    final passwordSettings = plugin?.passwordProtectionSettings;
    final passwordPolicy = switch (passwordSettings) {
      null => null,
      final PasswordProtectionSettings settings => PasswordPolicy(
          minLength: settings.passwordPolicyMinLength,
          requireNumbers: settings.passwordPolicyCharacters.contains(
            PasswordPolicyCharacters.requiresNumbers,
          ),
          requireLowercase: settings.passwordPolicyCharacters.contains(
            PasswordPolicyCharacters.requiresLowercase,
          ),
          requireUppercase: settings.passwordPolicyCharacters.contains(
            PasswordPolicyCharacters.requiresUppercase,
          ),
          requireSymbols: settings.passwordPolicyCharacters.contains(
            PasswordPolicyCharacters.requiresSymbols,
          ),
        )
    };

    final oAuthConfig = plugin?.oAuth;
    final identityProviders =
        plugin?.socialProviders?.map((p) => p.toIdentityProvider()).toList();
    final oauth = oAuthConfig != null
        ? OAuthOutputs(
            identityProviders: identityProviders ?? [],
            domain: oAuthConfig.webDomain,
            scopes: oAuthConfig.scopes,
            redirectSignInUri: oAuthConfig.signInRedirectUri.split(','),
            signInUri: oAuthConfig.signInUri,
            signInUriQueryParameters: oAuthConfig.signInUriQueryParameters,
            redirectSignOutUri: oAuthConfig.signOutRedirectUri.split(','),
            signOutUri: oAuthConfig.signOutUri,
            signOutUriQueryParameters: oAuthConfig.signOutUriQueryParameters,
            tokenUri: oAuthConfig.tokenUri,
            tokenUriQueryParameters: oAuthConfig.tokenUriQueryParameters,
            // Amplify Flutter only supports responseType:code
            // "response_type" is set to "code" by `getAuthorizationUrl` from
            // pkg:oauth2
            responseType: OAuthResponseType.code,
          )
        : null;

    return AuthOutputs(
      awsRegion: region,
      userPoolId: userPool?.poolId,
      userPoolClientId: userPool?.appClientId,
      appClientSecret: userPool?.appClientSecret,
      identityPoolId: identityPool?.poolId,
      passwordPolicy: passwordPolicy,
      oauth: oauth,
      usernameAttributes: plugin?.usernameAttributes,
      standardRequiredAttributes: plugin?.signupAttributes,
      userVerificationTypes: plugin?.verificationMechanisms,
      mfaConfiguration: plugin?.mfaConfiguration?.toMfaEnforcement(),
      mfaMethods: plugin?.mfaTypes?.map((t) => t.toMfaMethod()).toList(),
    );
  }

  @override
  Map<String, Object?> toJson() => _$AuthConfigToJson(this);
}

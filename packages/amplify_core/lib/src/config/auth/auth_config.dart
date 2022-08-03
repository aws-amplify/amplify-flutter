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
  }) =>
      AuthConfig(
        plugins: {
          CognitoPluginConfig.pluginKey: CognitoPluginConfig(
            auth: hostedUiConfig == null
                ? null
                : AWSConfigMap.withDefault(
                    CognitoAuthConfig(oAuth: hostedUiConfig)),
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

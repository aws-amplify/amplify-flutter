// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_user_attribute_options.g.dart';

const _deprecatedMessage = '''
Use UpdateUserAttributeOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

UpdateUserAttributeOptions(
  pluginOptions: CognitoUpdateUserAttributePluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_update_user_attribute_options}
/// Cognito options for `Amplify.Auth.updateUserAttribute`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoUpdateUserAttributeOptions extends UpdateUserAttributeOptions {
  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
  @Deprecated(_deprecatedMessage)
  const CognitoUpdateUserAttributeOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoUpdateUserAttributeOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdateUserAttributeOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_update_user_attribute_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoUpdateUserAttributePluginOptions get pluginOptions =>
      CognitoUpdateUserAttributePluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoUpdateUserAttributeOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdateUserAttributeOptionsToJson(this);
}

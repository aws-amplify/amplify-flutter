// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_user_attributes_options.g.dart';

const _deprecatedMessage = '''
Use UpdateUserAttributesOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

UpdateUserAttributesOptions(
  pluginOptions: CognitoUpdateUserAttributesPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_update_user_attributes_options}
/// Cognito extension of [UpdateUserAttributesOptions] to add the platform
/// specific fields.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoUpdateUserAttributesOptions extends UpdateUserAttributesOptions {
  /// {@macro amplify_auth_cognito.cognito_update_user_attributes_options}
  @Deprecated(_deprecatedMessage)
  const CognitoUpdateUserAttributesOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_update_user_attributes_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoUpdateUserAttributesOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdateUserAttributesOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_update_user_attributes_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoUpdateUserAttributesPluginOptions get pluginOptions =>
      CognitoUpdateUserAttributesPluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoUpdateUserAttributesOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdateUserAttributesOptionsToJson(this);
}

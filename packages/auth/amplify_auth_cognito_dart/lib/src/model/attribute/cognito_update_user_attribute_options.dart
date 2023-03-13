// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_user_attribute_options.g.dart';

/// {@template amplify_auth_cognito.cognito_update_user_attribute_options}
/// Cognito options for `Amplify.Auth.updateUserAttribute`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdateUserAttributeOptions extends UpdateUserAttributeOptions {
  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
  const CognitoUpdateUserAttributeOptions({
    Map<String, String>? clientMetadata,
  })  : clientMetadata = clientMetadata ?? const {},
        super.base();

  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
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

/// {@template amplify_auth_cognito.model.cognito_update_user_attribute_plugin_options}
/// Cognito options for `Amplify.Auth.updateUserAttribute`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdateUserAttributePluginOptions
    extends UpdateUserAttributePluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_update_user_attribute_plugin_options}
  const CognitoUpdateUserAttributePluginOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_update_user_attribute_plugin_options}
  factory CognitoUpdateUserAttributePluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdateUserAttributePluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito.model.cognito_update_user_attribute_plugin_options.client_metadata}
  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoUpdateUserAttributePluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdateUserAttributePluginOptionsToJson(this);
}

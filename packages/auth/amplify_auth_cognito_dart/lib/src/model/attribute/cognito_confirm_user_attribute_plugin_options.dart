// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_user_attribute_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_user_attribute_plugin_options}
/// Cognito options for `Amplify.Auth.confirmUserAttribute`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmUserAttributePluginOptions
    extends ConfirmUserAttributePluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_user_attribute_plugin_options}
  const CognitoConfirmUserAttributePluginOptions();

  /// {@macro amplify_auth_cognito.model.cognito_confirm_user_attribute_plugin_options}
  factory CognitoConfirmUserAttributePluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmUserAttributePluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoConfirmUserAttributePluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmUserAttributePluginOptionsToJson(this);
}

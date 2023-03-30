// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_password_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_update_password_plugin_options}
/// Cognito options for `Amplify.Auth.updatePassword`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdatePasswordPluginOptions extends UpdatePasswordPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_update_password_plugin_options}
  const CognitoUpdatePasswordPluginOptions();

  /// {@macro amplify_auth_cognito.model.cognito_update_password_plugin_options}
  factory CognitoUpdatePasswordPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdatePasswordPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoUpdatePasswordPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdatePasswordPluginOptionsToJson(this);
}

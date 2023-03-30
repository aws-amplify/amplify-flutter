// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_out_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_out_plugin_options}
/// Cognito options for `Amplify.Auth.signOut`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignOutPluginOptions extends SignOutPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_out_plugin_options}
  const CognitoSignOutPluginOptions();

  /// {@macro amplify_auth_cognito.model.cognito_sign_out_plugin_options}
  factory CognitoSignOutPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoSignOutPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoSignOutPluginOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignOutPluginOptionsToJson(this);
}

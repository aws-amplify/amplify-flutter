// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_get_current_user_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_get_current_user_plugin_options}
/// Cognito options for `Amplify.Auth.getCurrentUser`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoGetCurrentUserPluginOptions extends GetCurrentUserPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_get_current_user_plugin_options}
  const CognitoGetCurrentUserPluginOptions();

  /// {@macro amplify_auth_cognito.model.cognito_get_current_user_plugin_options}
  factory CognitoGetCurrentUserPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoGetCurrentUserPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoGetCurrentUserPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoGetCurrentUserPluginOptionsToJson(this);
}

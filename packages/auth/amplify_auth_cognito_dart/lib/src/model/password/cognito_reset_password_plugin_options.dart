// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_reset_password_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_reset_password_plugin_options}
/// Cognito options for `Amplify.Auth.resetPassword`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResetPasswordPluginOptions extends ResetPasswordPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_reset_password_plugin_options}
  const CognitoResetPasswordPluginOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_reset_password_plugin_options}
  factory CognitoResetPasswordPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoResetPasswordPluginOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoResetPasswordPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoResetPasswordPluginOptionsToJson(this);
}

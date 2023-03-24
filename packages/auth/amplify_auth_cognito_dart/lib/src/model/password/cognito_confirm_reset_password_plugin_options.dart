// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_reset_password_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_reset_password_plugin_options}
/// Cognito options for `Amplify.Auth.confirmResetPassword`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmResetPasswordPluginOptions
    extends ConfirmResetPasswordPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_reset_password_plugin_options}
  const CognitoConfirmResetPasswordPluginOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_confirm_reset_password_plugin_options}
  factory CognitoConfirmResetPasswordPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmResetPasswordPluginOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoConfirmResetPasswordPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmResetPasswordPluginOptionsToJson(this);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_user_attribute_confirmation_code_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_resend_user_attribute_confirmation_code_plugin_options}
/// Cognito options for `Amplify.Auth.resendUserAttributeConfirmationCode`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResendUserAttributeConfirmationCodePluginOptions
    extends ResendUserAttributeConfirmationCodePluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_resend_user_attribute_confirmation_code_plugin_options}
  const CognitoResendUserAttributeConfirmationCodePluginOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_resend_user_attribute_confirmation_code_plugin_options}
  factory CognitoResendUserAttributeConfirmationCodePluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoResendUserAttributeConfirmationCodePluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito.model.cognito_resend_user_attribute_confirmation_code_plugin_options.client_metadata}
  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName =>
      'CognitoResendUserAttributeConfirmationCodePluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoResendUserAttributeConfirmationCodePluginOptionsToJson(this);
}

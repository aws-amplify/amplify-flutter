// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_send_user_attribute_verification_code_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_send_user_attribute_verification_code_plugin_options}
/// Cognito options for `Amplify.Auth.sendUserAttributeVerificationCode`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSendUserAttributeVerificationCodePluginOptions
    extends SendUserAttributeVerificationCodePluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_send_user_attribute_verification_code_plugin_options}
  const CognitoSendUserAttributeVerificationCodePluginOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_send_user_attribute_verification_code_plugin_options}
  factory CognitoSendUserAttributeVerificationCodePluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoSendUserAttributeVerificationCodePluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito.model.cognito_send_user_attribute_verification_code_plugin_options.client_metadata}
  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName =>
      'CognitoSendUserAttributeVerificationCodePluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoSendUserAttributeVerificationCodePluginOptionsToJson(this);
}

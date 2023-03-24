// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_sign_up_code_plugin_options.g.dart';

/// {@template amplify_auth_cognito_dart.model.cognito_resend_sign_up_code_plugin_options}
/// Cognito options for `Amplify.Auth.resendSignUpCode`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResendSignUpCodePluginOptions
    extends ResendSignUpCodePluginOptions {
  /// {@macro amplify_auth_cognito_dart.model.cognito_resend_sign_up_code_plugin_options}
  const CognitoResendSignUpCodePluginOptions({
    this.clientMetadata = const {},
  });

  /// {@macro amplify_auth_cognito_dart.model.cognito_resend_sign_up_code_plugin_options}
  factory CognitoResendSignUpCodePluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoResendSignUpCodePluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito_dart.model.cognito_resend_sign_up_code_plugin_options.client_metadata}
  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoResendSignUpCodePluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoResendSignUpCodePluginOptionsToJson(this);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_sign_up_plugin_options.g.dart';

/// {@template amplify_auth_cognito_dart.cognito_confirm_sign_up_plugin_options}
/// Cognito options for `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmSignUpPluginOptions extends ConfirmSignUpPluginOptions {
  /// {@macro amplify_auth_cognito_dart.cognito_confirm_sign_up_plugin_options}
  const CognitoConfirmSignUpPluginOptions({
    this.clientMetadata = const {},
  });

  /// {@macro amplify_auth_cognito_dart.cognito_confirm_sign_up_plugin_options}
  factory CognitoConfirmSignUpPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmSignUpPluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito_dart.cognito_confirm_sign_up_plugin_options.client_metadata}
  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignUpPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmSignUpPluginOptionsToJson(this);
}

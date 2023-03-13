// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_sign_in_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_in_options}
/// Cognito options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
class CognitoConfirmSignInOptions extends ConfirmSignInOptions {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_options}
  const CognitoConfirmSignInOptions({
    Map<String, String>? clientMetadata,
    Map<CognitoUserAttributeKey, String>? userAttributes,
  })  : clientMetadata = clientMetadata ?? const {},
        userAttributes = userAttributes ?? const {},
        super.base();

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String> clientMetadata;

  /// User attributes which were marked as required and have not been previously
  /// provided.
  final Map<CognitoUserAttributeKey, String> userAttributes;

  @override
  CognitoConfirmSignInPluginOptions get pluginOptions =>
      CognitoConfirmSignInPluginOptions(
        clientMetadata: clientMetadata,
        userAttributes: userAttributes,
      );

  @override
  List<Object?> get props => [clientMetadata, userAttributes];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignInOptions';
}

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_in_plugin_options}
/// Cognito options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmSignInPluginOptions extends ConfirmSignInPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_plugin_options}
  const CognitoConfirmSignInPluginOptions({
    Map<String, String>? clientMetadata,
    Map<CognitoUserAttributeKey, String>? userAttributes,
  })  : clientMetadata = clientMetadata ?? const {},
        userAttributes = userAttributes ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_plugin_options}
  factory CognitoConfirmSignInPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmSignInPluginOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String> clientMetadata;

  /// User attributes which were marked as required and have not been previously
  /// provided.
  final Map<CognitoUserAttributeKey, String> userAttributes;

  @override
  List<Object?> get props => [clientMetadata, userAttributes];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignInPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmSignInPluginOptionsToJson(this);
}

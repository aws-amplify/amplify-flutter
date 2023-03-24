// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_plugin_options}
/// Cognito options for `Amplify.Auth.signIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInPluginOptions extends SignInPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_plugin_options}
  const CognitoSignInPluginOptions({
    this.authFlowType,
    this.clientMetadata = const {},
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_plugin_options}
  factory CognitoSignInPluginOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInPluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito_dart.cognito_sign_in_plugin_options.auth_flow_type}
  /// Runtime override of the Authentication flow to use for sign in.
  /// {@endtemplate}
  final AuthenticationFlowType? authFlowType;

  /// {@template amplify_auth_cognito_dart.cognito_sign_in_plugin_options.client_metadata}
  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  @override
  List<Object?> get props => [authFlowType, clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoSignInPluginOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignInPluginOptionsToJson(this);
}

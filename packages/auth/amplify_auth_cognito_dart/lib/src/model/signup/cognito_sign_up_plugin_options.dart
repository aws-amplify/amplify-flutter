// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_up_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_up_plugin_options}
/// Cognito options for `Amplify.Auth.signUp`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignUpPluginOptions extends SignUpPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  const CognitoSignUpPluginOptions({
    Map<String, String>? clientMetadata,
    Map<String, String>? validationData,
  })  : validationData = validationData ?? const {},
        clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  factory CognitoSignUpPluginOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignUpPluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito_dart.cognito_sign_up_options.client_metadata}
  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  /// {@endtemplate}
  final Map<String, String> clientMetadata;

  /// {@template amplify_auth_cognito_dart.cognito_sign_up_options.validation_data}
  /// An optional map of arbitrary key-value pairs which will be passed to your
  /// PreAuthentication Lambda trigger as-is, used for implementing additional
  /// validations around authentication.
  /// {@endtemplate}
  final Map<String, String> validationData;

  @override
  List<Object?> get props => [clientMetadata, validationData];

  @override
  String get runtimeTypeName => 'CognitoSignUpPluginOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignUpPluginOptionsToJson(this);
}

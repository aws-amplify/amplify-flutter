// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_up_options.g.dart';

/// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
@zAmplifySerializable
class CognitoSignUpOptions extends SignUpOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  CognitoSignUpOptions({
    Map<CognitoUserAttributeKey, String> userAttributes = const {},
    Map<String, String>? validationData,
    Map<String, String>? clientMetadata,
  })  : validationData = validationData ?? const {},
        clientMetadata = clientMetadata ?? const {},
        userAttributes = Map.of(userAttributes)
          ..removeWhere((key, value) => key.readOnly),
        super.base();

  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  factory CognitoSignUpOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignUpOptionsFromJson(json);

  @override
  final Map<CognitoUserAttributeKey, String> userAttributes;

  /// {@macro amplify_auth_cognito_dart.cognito_sign_up_options.validation_data}
  final Map<String, String> validationData;

  /// {@macro amplify_auth_cognito_dart.cognito_sign_up_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoSignUpPluginOptions get pluginOptions => CognitoSignUpPluginOptions(
        clientMetadata: clientMetadata,
        validationData: validationData,
      );

  @override
  String get runtimeTypeName => 'CognitoSignUpOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignUpOptionsToJson(this);
}

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

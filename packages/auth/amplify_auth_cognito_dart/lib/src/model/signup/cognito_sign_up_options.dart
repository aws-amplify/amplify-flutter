// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_up_options.g.dart';

const _deprecatedMessage = '''
Use SignUpOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

SignUpOptions(
  userAttributes: {
    CognitoUserAttributeKey.email: 'test@example.com',
  },
  pluginOptions: CognitoSignUpPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoSignUpOptions extends SignUpOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  @Deprecated(_deprecatedMessage)
  CognitoSignUpOptions({
    Map<CognitoUserAttributeKey, String> userAttributes = const {},
    Map<String, String>? validationData,
    Map<String, String>? clientMetadata,
  })  : validationData = validationData ?? const {},
        clientMetadata = clientMetadata ?? const {},
        userAttributes = Map.of(userAttributes)
          ..removeWhere((key, value) => key.readOnly);

  /// {@macro amplify_auth_cognito.model.cognito_sign_up_plugin_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoSignUpOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignUpOptionsFromJson(json);

  @override
  // ignore: overridden_fields
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

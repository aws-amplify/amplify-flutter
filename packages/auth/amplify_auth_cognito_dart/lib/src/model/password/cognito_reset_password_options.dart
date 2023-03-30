// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_reset_password_options.g.dart';

const _deprecatedMessage = '''
Use ResetPasswordOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ResetPasswordOptions(
  pluginOptions: CognitoResetPasswordPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_reset_password_options}
/// Cognito extension of [ResetPasswordOptions] to add the
/// platform-specific fields.
///
/// Can be used to add [clientMetadata] to the operation.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoResetPasswordOptions extends ResetPasswordOptions {
  /// {@macro amplify_auth_cognito.cognito_reset_password_options}
  @Deprecated(_deprecatedMessage)
  const CognitoResetPasswordOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_reset_password_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoResetPasswordOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoResetPasswordOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String> clientMetadata;

  @override
  CognitoResetPasswordPluginOptions get pluginOptions =>
      CognitoResetPasswordPluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoResetPasswordOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoResetPasswordOptionsToJson(this);
}

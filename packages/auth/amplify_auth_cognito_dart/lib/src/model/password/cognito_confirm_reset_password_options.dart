// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_reset_password_options.g.dart';

const _deprecatedMessage = '''
Use ConfirmResetPasswordOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ConfirmResetPasswordOptions(
  pluginOptions: CognitoConfirmResetPasswordPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_confirm_reset_password_options}
/// Cognito extension of [ConfirmResetPasswordOptions] to add the
/// platform-specific fields.
///
/// Can be used to add [clientMetadata] to the operation.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoConfirmResetPasswordOptions extends ConfirmResetPasswordOptions {
  /// {@macro amplify_auth_cognito.cognito_confirm_reset_password_options}
  @Deprecated(_deprecatedMessage)
  const CognitoConfirmResetPasswordOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_confirm_reset_password_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoConfirmResetPasswordOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmResetPasswordOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String> clientMetadata;

  @override
  CognitoConfirmResetPasswordPluginOptions get pluginOptions =>
      CognitoConfirmResetPasswordPluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoConfirmResetPasswordOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmResetPasswordOptionsToJson(this);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_user_attribute_confirmation_code_options.g.dart';

const _deprecatedMessage = '''
Use ResendUserAttributeConfirmationCodeOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ResendUserAttributeConfirmationCodeOptions(
  pluginOptions: CognitoResendUserAttributeConfirmationCodePluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
/// Cognito options for `Amplify.Auth.resendUserAttributeConfirmationCode`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoResendUserAttributeConfirmationCodeOptions
    extends ResendUserAttributeConfirmationCodeOptions {
  /// {@macro amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
  @Deprecated(_deprecatedMessage)
  const CognitoResendUserAttributeConfirmationCodeOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoResendUserAttributeConfirmationCodeOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoResendUserAttributeConfirmationCodeOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_resend_user_attribute_confirmation_code_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoResendUserAttributeConfirmationCodePluginOptions get pluginOptions =>
      CognitoResendUserAttributeConfirmationCodePluginOptions(
        clientMetadata: clientMetadata,
      );

  @override
  String get runtimeTypeName =>
      'CognitoResendUserAttributeConfirmationCodeOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoResendUserAttributeConfirmationCodeOptionsToJson(this);
}

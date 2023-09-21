// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_send_user_attribute_verification_code_options.g.dart';

const _deprecatedMessage = '''
Use SendUserAttributeVerificationCodeOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

SendUserAttributeVerificationCodeOptions(
  pluginOptions: CognitoSendUserAttributeVerificationCodePluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_send_user_attribute_verification_code_options}
/// Cognito options for `Amplify.Auth.sendUserAttributeVerificationCode`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoSendUserAttributeVerificationCodeOptions
    extends SendUserAttributeVerificationCodeOptions {
  /// {@macro amplify_auth_cognito.cognito_send_user_attribute_verification_code_options}
  @Deprecated(_deprecatedMessage)
  const CognitoSendUserAttributeVerificationCodeOptions({
    Map<String, String>? clientMetadata,
  }) : clientMetadata = clientMetadata ?? const {};

  /// {@macro amplify_auth_cognito.cognito_send_user_attribute_verification_code_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoSendUserAttributeVerificationCodeOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoSendUserAttributeVerificationCodeOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_send_user_attribute_verification_code_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoSendUserAttributeVerificationCodePluginOptions get pluginOptions =>
      CognitoSendUserAttributeVerificationCodePluginOptions(
        clientMetadata: clientMetadata,
      );

  @override
  String get runtimeTypeName =>
      'CognitoSendUserAttributeVerificationCodeOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoSendUserAttributeVerificationCodeOptionsToJson(this);
}

/// {@macro amplify_auth_cognito.cognito_send_user_attribute_verification_code_options}
@Deprecated(_deprecatedMessage)
typedef CognitoResendUserAttributeConfirmationCodeOptions
    = CognitoSendUserAttributeVerificationCodeOptions;

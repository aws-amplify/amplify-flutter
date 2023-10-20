// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.send_attribute_verification_code_options}
/// The shared send user attribute verification code options among all Auth
/// plugins.
/// {@endtemplate}
class SendUserAttributeVerificationCodeOptions
    with
        AWSEquatable<SendUserAttributeVerificationCodeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.send_attribute_verification_code_options}
  const SendUserAttributeVerificationCodeOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.send_user_attribute_verification_code_plugin_options}
  final SendUserAttributeVerificationCodePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'SendUserAttributeVerificationCodeOptions';

  /// @nodoc
  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.send_user_attribute_verification_code_plugin_options}
/// Plugin-specific options for `Amplify.Auth.sendUserAttributeVerificationCode`.
/// {@endtemplate}
abstract class SendUserAttributeVerificationCodePluginOptions
    with
        AWSEquatable<SendUserAttributeVerificationCodePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.send_user_attribute_verification_code_plugin_options}
  const SendUserAttributeVerificationCodePluginOptions();
}

/// {@macro amplify_core.send_attribute_verification_code_options}
@Deprecated('Use SendUserAttributeVerificationCodeOptions.')
typedef ResendUserAttributeConfirmationCodeOptions
    = SendUserAttributeVerificationCodeOptions;

/// @nodoc
/// {@macro amplify_core.auth.send_user_attribute_verification_code_plugin_options}
@Deprecated('Use SendUserAttributeVerificationCodePluginOptions.')
typedef ResendUserAttributeConfirmationCodePluginOptions
    = SendUserAttributeVerificationCodePluginOptions;

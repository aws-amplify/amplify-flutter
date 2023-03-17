// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.resend_user_attribute_confirmation_code_options}
/// The shared resend user attribute confirmation code options among all Auth
/// plugins.
/// {@endtemplate}
class ResendUserAttributeConfirmationCodeOptions
    with
        AWSEquatable<ResendUserAttributeConfirmationCodeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.resend_user_attribute_confirmation_code_options}
  const ResendUserAttributeConfirmationCodeOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.resend_user_attribute_confirmation_code_plugin_options}
  final ResendUserAttributeConfirmationCodePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ResendUserAttributeConfirmationCodeOptions';

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.auth.resend_user_attribute_confirmation_code_plugin_options}
/// Plugin-specific options for `Amplify.Auth.resendUserAttributeConfirmationCode`.
/// {@endtemplate}
abstract class ResendUserAttributeConfirmationCodePluginOptions
    with
        AWSEquatable<ResendUserAttributeConfirmationCodePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.resend_user_attribute_confirmation_code_plugin_options}
  const ResendUserAttributeConfirmationCodePluginOptions();
}

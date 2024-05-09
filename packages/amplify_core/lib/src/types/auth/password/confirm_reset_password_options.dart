// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.confirm_reset_password_options}
/// The shared confirm reset password options among all Auth plugins.
/// {@endtemplate}
class ConfirmResetPasswordOptions
    with
        AWSEquatable<ConfirmResetPasswordOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.confirm_reset_password_options}
  const ConfirmResetPasswordOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.confirm_reset_password_plugin_options}
  final ConfirmResetPasswordPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ConfirmResetPasswordOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.confirm_reset_password_plugin_options}
/// Plugin-specific options for `Amplify.Auth.confirmResetPassword`.
/// {@endtemplate}
abstract class ConfirmResetPasswordPluginOptions
    with
        AWSEquatable<ConfirmResetPasswordPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_reset_password_plugin_options}
  const ConfirmResetPasswordPluginOptions();
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.confirm_reset_password_options}
/// The shared confirm reset password options among all Auth plugins.
/// {@endtemplate}
abstract class ConfirmResetPasswordOptions
    with
        AWSEquatable<ConfirmResetPasswordOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.confirm_reset_password_options}
  const factory ConfirmResetPasswordOptions({
    ConfirmResetPasswordPluginOptions? pluginOptions,
  }) = _ConfirmResetPasswordOptions;

  /// Base constructor for subclassing.
  const ConfirmResetPasswordOptions.base();

  /// {@macro amplify_core.auth.confirm_reset_password_plugin_options}
  ConfirmResetPasswordPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ConfirmResetPasswordOptions extends ConfirmResetPasswordOptions {
  const _ConfirmResetPasswordOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ConfirmResetPasswordPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ConfirmResetPasswordOptions';
}

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

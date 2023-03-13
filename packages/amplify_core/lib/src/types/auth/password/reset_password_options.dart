// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.reset_password_options}
/// The shared reset password options among all Auth plugins.
/// {@endtemplate}
abstract class ResetPasswordOptions
    with
        AWSEquatable<ResetPasswordOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.reset_password_options}
  const factory ResetPasswordOptions({
    ResetPasswordPluginOptions? pluginOptions,
  }) = _ResetPasswordOptions;

  /// Base constructor for subclassing.
  const ResetPasswordOptions.base();

  /// {@macro amplify_core.auth.reset_password_plugin_options}
  ResetPasswordPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ResetPasswordOptions extends ResetPasswordOptions {
  const _ResetPasswordOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ResetPasswordPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ResetPasswordOptions';
}

/// {@template amplify_core.auth.reset_password_plugin_options}
/// Plugin-specific options for `Amplify.Auth.resetPassword`.
/// {@endtemplate}
abstract class ResetPasswordPluginOptions
    with
        AWSEquatable<ResetPasswordPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.reset_password_plugin_options}
  const ResetPasswordPluginOptions();
}

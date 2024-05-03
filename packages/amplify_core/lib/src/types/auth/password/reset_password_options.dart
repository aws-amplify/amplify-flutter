// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.reset_password_options}
/// The shared reset password options among all Auth plugins.
/// {@endtemplate}
class ResetPasswordOptions
    with
        AWSEquatable<ResetPasswordOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.reset_password_options}
  const ResetPasswordOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.reset_password_plugin_options}
  final ResetPasswordPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ResetPasswordOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

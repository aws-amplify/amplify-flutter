// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.types.auth.confirm_sign_up_options}
/// Options passed to `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
class ConfirmSignUpOptions
    with
        AWSEquatable<ConfirmSignUpOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.types.auth.confirm_sign_up_options}
  const ConfirmSignUpOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.confirm_sign_up_plugin_options}
  final ConfirmSignUpPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ConfirmSignUpOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.confirm_sign_up_plugin_options}
/// Plugin-specific options for `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
abstract class ConfirmSignUpPluginOptions
    with
        AWSEquatable<ConfirmSignUpPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_sign_up_plugin_options}
  const ConfirmSignUpPluginOptions();
}

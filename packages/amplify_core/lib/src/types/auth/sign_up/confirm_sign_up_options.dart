// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.types.auth.confirm_sign_up_options}
/// Options passed to `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
abstract class ConfirmSignUpOptions
    with
        AWSEquatable<ConfirmSignUpOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.types.auth.confirm_sign_up_options}
  const factory ConfirmSignUpOptions({
    ConfirmSignUpPluginOptions? pluginOptions,
  }) = _ConfirmSignUpOptions;

  /// Base constructor for subclassing.
  const ConfirmSignUpOptions.base();

  /// {@macro amplify_core.auth.confirm_sign_up_plugin_options}
  ConfirmSignUpPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ConfirmSignUpOptions extends ConfirmSignUpOptions {
  const _ConfirmSignUpOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ConfirmSignUpPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ConfirmSignUpOptions';
}

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

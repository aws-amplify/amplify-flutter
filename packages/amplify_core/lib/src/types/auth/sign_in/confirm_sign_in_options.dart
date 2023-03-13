// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.confirm_sign_in_options}
/// Options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
abstract class ConfirmSignInOptions
    with
        AWSEquatable<ConfirmSignInOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_sign_in_options}
  const factory ConfirmSignInOptions({
    ConfirmSignInPluginOptions? pluginOptions,
  }) = _ConfirmSignInOptions;

  /// Base constructor for subclassing.
  const ConfirmSignInOptions.base();

  /// {@macro amplify_core.auth.confirm_sign_in_plugin_options}
  ConfirmSignInPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ConfirmSignInOptions extends ConfirmSignInOptions {
  const _ConfirmSignInOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ConfirmSignInPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ConfirmSignInOptions';
}

/// {@template amplify_core.auth.confirm_sign_in_plugin_options}
/// Plugin-specific options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
abstract class ConfirmSignInPluginOptions
    with
        AWSEquatable<ConfirmSignInPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_sign_in_plugin_options}
  const ConfirmSignInPluginOptions();
}

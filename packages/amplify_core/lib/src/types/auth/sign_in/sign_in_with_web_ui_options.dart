// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.sign_in_with_web_ui_options}
/// Options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
abstract class SignInWithWebUIOptions
    with
        AWSEquatable<SignInWithWebUIOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_with_web_ui_options}
  const factory SignInWithWebUIOptions({
    SignInWithWebUIPluginOptions? pluginOptions,
  }) = _SignInWithWebUIOptions;

  /// Base constructor for subclassing.
  const SignInWithWebUIOptions.base();

  /// {@macro amplify_core.auth.sign_in_with_web_ui_plugin_options}
  SignInWithWebUIPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _SignInWithWebUIOptions extends SignInWithWebUIOptions {
  const _SignInWithWebUIOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final SignInWithWebUIPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'SignInWithWebUIOptions';
}

/// {@template amplify_core.auth.sign_in_with_web_ui_plugin_options}
/// Plugin-specific options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
abstract class SignInWithWebUIPluginOptions
    with
        AWSEquatable<SignInWithWebUIPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_with_web_ui_plugin_options}
  const SignInWithWebUIPluginOptions();
}

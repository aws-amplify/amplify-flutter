// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.sign_in_options}
/// Options for `Amplify.Auth.signIn`.
/// {@endtemplate}
abstract class SignInOptions
    with
        AWSSerializable<Map<String, Object?>>,
        AWSEquatable<SignInOptions>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_options}
  const factory SignInOptions({
    SignInPluginOptions? pluginOptions,
  }) = _SignInOptions;

  /// Base constructor for subclassing.
  const SignInOptions.base();

  /// {@macro amplify_core.auth.sign_in_plugin_options}
  SignInPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _SignInOptions extends SignInOptions {
  const _SignInOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final SignInPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'SignInOptions';
}

/// {@template amplify_core.auth.sign_in_plugin_options}
/// Plugin-specific options for `Amplify.Auth.signIn`.
/// {@endtemplate}
abstract class SignInPluginOptions
    with
        AWSEquatable<SignInPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_plugin_options}
  const SignInPluginOptions();
}

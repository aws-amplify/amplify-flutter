// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.sign_in_with_web_ui_options}
/// Options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
class SignInWithWebUIOptions
    with
        AWSEquatable<SignInWithWebUIOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_with_web_ui_options}
  const SignInWithWebUIOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.sign_in_with_web_ui_plugin_options}
  final SignInWithWebUIPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'SignInWithWebUIOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

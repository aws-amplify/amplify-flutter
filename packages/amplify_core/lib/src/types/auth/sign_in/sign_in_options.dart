// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.sign_in_options}
/// Options for `Amplify.Auth.signIn`.
/// {@endtemplate}
class SignInOptions
    with
        AWSSerializable<Map<String, Object?>>,
        AWSEquatable<SignInOptions>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_in_options}
  const SignInOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.sign_in_plugin_options}
  final SignInPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'SignInOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

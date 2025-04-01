// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.sign_up_options}
/// Options for `Amplify.Auth.signUp`.
/// {@endtemplate}
class SignUpOptions
    with
        AWSEquatable<SignUpOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_up_options}
  ///
  /// [userAttributes] is a map of key-value pairs, where the key is one of the
  /// standard attributes, found under [AuthUserAttributeKey].
  ///
  /// For example:
  /// ```dart
  /// final userAttributes = <AuthUserAttributeKey, String>{
  ///   AuthUserAttributeKey.email: 'test@example.com',
  ///   AuthUserAttributeKey.phoneNumber: '+18885551234',
  /// };
  /// final options = SignUpOptions(userAttributes: userAttributes);
  /// ```
  const SignUpOptions({
    Map<AuthUserAttributeKey, String>? userAttributes,
    this.pluginOptions,
  }) : userAttributes = userAttributes ?? const {};

  final Map<AuthUserAttributeKey, String> userAttributes;

  /// {@macro amplify_core.auth.sign_up_plugin_options}
  final SignUpPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [userAttributes, pluginOptions];

  @override
  String get runtimeTypeName => 'SignUpOptions';

  @override
  Map<String, Object?> toJson() => {
        'userAttributes': userAttributes,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.sign_up_plugin_options}
/// Plugin-specific options for `Amplify.Auth.signUp`.
/// {@endtemplate}
abstract class SignUpPluginOptions
    with
        AWSEquatable<SignUpPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_up_plugin_options}
  const SignUpPluginOptions();
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.sign_out_options}
/// The shared sign out options among all Auth plugins.
/// {@endtemplate}
abstract class SignOutOptions
    with
        AWSEquatable<SignOutOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.sign_out_options}
  const factory SignOutOptions({
    bool globalSignOut,
    SignOutPluginOptions? pluginOptions,
  }) = _SignOutOptions;

  /// Base constructor for subclassing.
  const SignOutOptions.base({
    this.globalSignOut = false,
  });

  /// Sign the current user out from all devices
  ///
  /// If the user is signed into another device, they will not be authorized to perform
  /// tasks that requires a valid token after a global signout is called.
  final bool globalSignOut;

  /// {@macro amplify_core.auth.sign_out_plugin_options}
  SignOutPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [globalSignOut, pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'globalSignOut': globalSignOut,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _SignOutOptions extends SignOutOptions {
  const _SignOutOptions({
    super.globalSignOut = false,
    this.pluginOptions,
  }) : super.base();

  @override
  final SignOutPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'SignOutOptions';
}

/// {@template amplify_core.auth.sign_out_plugin_options}
/// Plugin-specific options for `Amplify.Auth.signOut`.
/// {@endtemplate}
abstract class SignOutPluginOptions
    with
        AWSEquatable<SignOutPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_out_plugin_options}
  const SignOutPluginOptions();
}

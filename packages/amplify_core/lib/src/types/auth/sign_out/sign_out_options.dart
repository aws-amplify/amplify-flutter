// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.sign_out_options}
/// The shared sign out options among all Auth plugins.
/// {@endtemplate}
class SignOutOptions
    with
        AWSEquatable<SignOutOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.sign_out_options}
  const SignOutOptions({
    this.globalSignOut = false,
    this.pluginOptions,
  });

  /// Sign the current user out from all devices
  ///
  /// If the user is signed into another device, they will not be authorized to perform
  /// tasks that requires a valid token after a global signout is called.
  final bool globalSignOut;

  /// {@macro amplify_core.auth.sign_out_plugin_options}
  final SignOutPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [globalSignOut, pluginOptions];

  @override
  String get runtimeTypeName => 'SignOutOptions';

  @override
  Map<String, Object?> toJson() => {
        'globalSignOut': globalSignOut,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

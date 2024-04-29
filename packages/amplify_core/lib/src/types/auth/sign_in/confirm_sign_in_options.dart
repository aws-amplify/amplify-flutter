// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.confirm_sign_in_options}
/// Options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
class ConfirmSignInOptions
    with
        AWSEquatable<ConfirmSignInOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_sign_in_options}
  const ConfirmSignInOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.confirm_sign_in_plugin_options}
  final ConfirmSignInPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ConfirmSignInOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

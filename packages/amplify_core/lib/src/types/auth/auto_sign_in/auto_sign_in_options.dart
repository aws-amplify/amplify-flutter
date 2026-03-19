// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.types.auth.auto_sign_in_options}
/// Options passed to `Amplify.Auth.autoSignIn`.
/// {@endtemplate}
class AutoSignInOptions
    with
        AWSEquatable<AutoSignInOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.types.auth.auto_sign_in_options}
  const AutoSignInOptions({this.pluginOptions});

  /// {@macro amplify_core.auth.auto_sign_in_plugin_options}
  final AutoSignInPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'AutoSignInOptions';

  @override
  Map<String, Object?> toJson() => {'pluginOptions': pluginOptions?.toJson()};
}

/// @nodoc
/// {@template amplify_core.auth.auto_sign_in_plugin_options}
/// Plugin-specific options for `Amplify.Auth.autoSignIn`.
/// {@endtemplate}
abstract class AutoSignInPluginOptions
    with
        AWSEquatable<AutoSignInPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.auto_sign_in_plugin_options}
  const AutoSignInPluginOptions();
}

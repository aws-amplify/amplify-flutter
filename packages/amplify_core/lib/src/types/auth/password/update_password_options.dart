// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.update_password_options}
/// The shared update password options among all Auth plugins.
/// {@endtemplate}
class UpdatePasswordOptions
    with
        AWSEquatable<UpdatePasswordOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_password_options}
  const UpdatePasswordOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.update_password_plugin_options}
  final UpdatePasswordPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'UpdatePasswordOptions';

  /// @nodoc
  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.update_password_plugin_options}
/// Plugin-specific options for `Amplify.Auth.updatePassword`.
/// {@endtemplate}
abstract class UpdatePasswordPluginOptions
    with
        AWSEquatable<UpdatePasswordPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.update_password_plugin_options}
  const UpdatePasswordPluginOptions();
}

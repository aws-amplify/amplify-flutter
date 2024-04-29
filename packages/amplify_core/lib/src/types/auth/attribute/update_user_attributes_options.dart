// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.update_user_attributes_options}
/// The shared update user attributes options among all Auth plugins.
/// {@endtemplate}
class UpdateUserAttributesOptions
    with
        AWSEquatable<UpdateUserAttributesOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attributes_options}
  const UpdateUserAttributesOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.update_user_attributes_plugin_options}
  final UpdateUserAttributesPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'UpdateUserAttributesOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.update_user_attributes_plugin_options}
/// Plugin-specific options for `Amplify.Auth.updateUserAttributes`.
/// {@endtemplate}
abstract class UpdateUserAttributesPluginOptions
    with
        AWSEquatable<UpdateUserAttributesPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.update_user_attributes_plugin_options}
  const UpdateUserAttributesPluginOptions();
}

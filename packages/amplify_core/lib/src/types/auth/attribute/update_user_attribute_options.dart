// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.update_user_attribute_options}
/// The shared update user attribute options among all Auth plugins.
/// {@endtemplate}
class UpdateUserAttributeOptions
    with
        AWSEquatable<UpdateUserAttributeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attribute_options}
  const UpdateUserAttributeOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.update_user_attribute_plugin_options}
  final UpdateUserAttributePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'UpdateUserAttributeOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.update_user_attribute_plugin_options}
/// Plugin-specific options for `Amplify.Auth.updateUserAttribute`.
/// {@endtemplate}
abstract class UpdateUserAttributePluginOptions
    with
        AWSEquatable<UpdateUserAttributePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.update_user_attribute_plugin_options}
  const UpdateUserAttributePluginOptions();
}

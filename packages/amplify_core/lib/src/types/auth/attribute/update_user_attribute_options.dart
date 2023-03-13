// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.update_user_attribute_options}
/// The shared update user attribute options among all Auth plugins.
/// {@endtemplate}
abstract class UpdateUserAttributeOptions
    with
        AWSEquatable<UpdateUserAttributeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attribute_options}
  const factory UpdateUserAttributeOptions({
    UpdateUserAttributePluginOptions? pluginOptions,
  }) = _UpdateUserAttributeOptions;

  /// Base constructor for subclassing.
  const UpdateUserAttributeOptions.base();

  /// {@macro amplify_core.auth.update_user_attribute_plugin_options}
  UpdateUserAttributePluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _UpdateUserAttributeOptions extends UpdateUserAttributeOptions {
  const _UpdateUserAttributeOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final UpdateUserAttributePluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'UpdateUserAttributeOptions';
}

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

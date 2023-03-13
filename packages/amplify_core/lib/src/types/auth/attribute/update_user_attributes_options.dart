// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.update_user_attributes_options}
/// The shared update user attributes options among all Auth plugins.
/// {@endtemplate}
abstract class UpdateUserAttributesOptions
    with
        AWSEquatable<UpdateUserAttributesOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.update_user_attributes_options}
  const factory UpdateUserAttributesOptions({
    UpdateUserAttributesPluginOptions? pluginOptions,
  }) = _UpdateUserAttributesOptions;

  /// Base constructor for subclassing.
  const UpdateUserAttributesOptions.base();

  /// {@macro amplify_core.auth.update_user_attributes_plugin_options}
  UpdateUserAttributesPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _UpdateUserAttributesOptions extends UpdateUserAttributesOptions {
  const _UpdateUserAttributesOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final UpdateUserAttributesPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'UpdateUserAttributesOptions';
}

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

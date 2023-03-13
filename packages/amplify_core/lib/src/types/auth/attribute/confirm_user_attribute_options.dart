// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.types.auth.confirm_user_attribute_options}
/// Options passed to `Amplify.Auth.confirmUserAttribute`
/// {@endtemplate}
abstract class ConfirmUserAttributeOptions
    with
        AWSEquatable<ConfirmUserAttributeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.types.auth.confirm_user_attribute_options}
  const factory ConfirmUserAttributeOptions({
    ConfirmUserAttributePluginOptions? pluginOptions,
  }) = _ConfirmUserAttributeOptions;

  /// Base constructor for subclassing.
  const ConfirmUserAttributeOptions.base();

  /// {@macro amplify_core.auth.confirm_user_attribute_plugin_options}
  ConfirmUserAttributePluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ConfirmUserAttributeOptions extends ConfirmUserAttributeOptions {
  const _ConfirmUserAttributeOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ConfirmUserAttributePluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ConfirmUserAttributeOptions';
}

/// {@template amplify_core.auth.confirm_user_attribute_plugin_options}
/// Plugin-specific options for `Amplify.Auth.confirmUserAttribute`.
/// {@endtemplate}
abstract class ConfirmUserAttributePluginOptions
    with
        AWSEquatable<ConfirmUserAttributePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.confirm_user_attribute_plugin_options}
  const ConfirmUserAttributePluginOptions();
}

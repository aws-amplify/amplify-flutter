// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.types.auth.confirm_user_attribute_options}
/// Options passed to `Amplify.Auth.confirmUserAttribute`
/// {@endtemplate}
class ConfirmUserAttributeOptions
    with
        AWSEquatable<ConfirmUserAttributeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.types.auth.confirm_user_attribute_options}
  const ConfirmUserAttributeOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.confirm_user_attribute_plugin_options}
  final ConfirmUserAttributePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ConfirmUserAttributeOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

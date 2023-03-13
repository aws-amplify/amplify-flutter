// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.fetch_user_attributes_options}
/// The shared fetch user attributes options among all Auth plugins.
/// {@endtemplate}
abstract class FetchUserAttributesOptions
    with
        AWSEquatable<FetchUserAttributesOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.fetch_user_attributes_options}
  const factory FetchUserAttributesOptions({
    FetchUserAttributesPluginOptions? pluginOptions,
  }) = _FetchUserAttributesOptions;

  /// Base constructor for subclassing.
  const FetchUserAttributesOptions.base();

  /// {@macro amplify_core.auth.fetch_user_attributes_plugin_options}
  FetchUserAttributesPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _FetchUserAttributesOptions extends FetchUserAttributesOptions {
  const _FetchUserAttributesOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final FetchUserAttributesPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'FetchUserAttributesOptions';
}

/// {@template amplify_core.auth.fetch_user_attributes_plugin_options}
/// Plugin-specific options for `Amplify.Auth.fetchUserAttributes`.
/// {@endtemplate}
abstract class FetchUserAttributesPluginOptions
    with
        AWSEquatable<FetchUserAttributesPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.fetch_user_attributes_plugin_options}
  const FetchUserAttributesPluginOptions();
}

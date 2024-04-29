// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.fetch_user_attributes_options}
/// The shared fetch user attributes options among all Auth plugins.
/// {@endtemplate}
class FetchUserAttributesOptions
    with
        AWSEquatable<FetchUserAttributesOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.fetch_user_attributes_options}
  const FetchUserAttributesOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.fetch_user_attributes_plugin_options}
  final FetchUserAttributesPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'FetchUserAttributesOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
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

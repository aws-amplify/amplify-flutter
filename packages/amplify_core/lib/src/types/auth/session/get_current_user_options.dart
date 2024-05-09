// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.get_current_user_options}
/// Options for `Amplify.Auth.getCurrentUser`.
/// {@endtemplate}
class GetCurrentUserOptions
    with
        AWSEquatable<GetCurrentUserOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.get_current_user_options}
  const GetCurrentUserOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.get_current_user_plugin_options}
  final GetCurrentUserPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'GetCurrentUserOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.get_current_user_plugin_options}
/// Plugin-specific options for `Amplify.Auth.getCurrentUser`.
/// {@endtemplate}
abstract class GetCurrentUserPluginOptions
    with
        AWSEquatable<GetCurrentUserPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.get_current_user_plugin_options}
  const GetCurrentUserPluginOptions();
}

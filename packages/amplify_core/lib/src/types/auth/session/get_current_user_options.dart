// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_core.auth.get_current_user_options}
@Deprecated('Use GetCurrentUserOptions instead')
typedef AuthUserOptions = GetCurrentUserOptions;

/// {@template amplify_core.auth.get_current_user_options}
/// Options for `Amplify.Auth.getCurrentUser`.
/// {@endtemplate}
abstract class GetCurrentUserOptions
    with
        AWSEquatable<GetCurrentUserOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.get_current_user_options}
  const factory GetCurrentUserOptions({
    GetCurrentUserPluginOptions? pluginOptions,
  }) = _GetCurrentUserOptions;

  /// Base constructor for subclassing.
  const GetCurrentUserOptions.base();

  /// {@macro amplify_core.auth.get_current_user_plugin_options}
  GetCurrentUserPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _GetCurrentUserOptions extends GetCurrentUserOptions {
  const _GetCurrentUserOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final GetCurrentUserPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => throw UnimplementedError();
}

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

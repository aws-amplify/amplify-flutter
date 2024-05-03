// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.fetch_auth_session_options}
/// Options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
class FetchAuthSessionOptions
    with
        AWSEquatable<FetchAuthSessionOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.fetch_auth_session_options}
  const FetchAuthSessionOptions({
    this.forceRefresh = false,
    this.pluginOptions,
  });

  /// Whether to force a refresh of the cached credentials.
  ///
  /// When `true`, any cached credentials will be ignored when deciding whether
  /// to refresh them.
  final bool forceRefresh;

  /// {@macro amplify_core.auth.fetch_auth_session_plugin_options}
  final FetchAuthSessionPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [forceRefresh, pluginOptions];

  @override
  String get runtimeTypeName => 'FetchAuthSessionOptions';

  @override
  Map<String, Object?> toJson() => {
        'forceRefresh': forceRefresh,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.fetch_auth_session_plugin_options}
/// Plugin-specific options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
abstract class FetchAuthSessionPluginOptions
    with
        AWSEquatable<FetchAuthSessionPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.fetch_auth_session_plugin_options}
  const FetchAuthSessionPluginOptions();
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_core.auth.fetch_auth_session_options}
@Deprecated('Use FetchAuthSessionOptions instead')
typedef AuthSessionOptions = FetchAuthSessionOptions;

/// {@template amplify_core.auth.fetch_auth_session_options}
/// Options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
abstract class FetchAuthSessionOptions
    with
        AWSEquatable<FetchAuthSessionOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.fetch_auth_session_options}
  const factory FetchAuthSessionOptions({
    bool forceRefresh,
    FetchAuthSessionPluginOptions? pluginOptions,
  }) = _FetchAuthSessionOptions;

  /// {@macro amplify_core.auth.fetch_auth_session_options}
  const FetchAuthSessionOptions.base({
    this.forceRefresh = false,
  });

  /// Whether to force a refresh of the cached credentials.
  ///
  /// When `true`, any cached credentials will be ignored when deciding whether
  /// to refresh them.
  final bool forceRefresh;

  /// {@macro amplify_core.auth.fetch_auth_session_plugin_options}
  FetchAuthSessionPluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [forceRefresh, pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'forceRefresh': forceRefresh,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _FetchAuthSessionOptions extends FetchAuthSessionOptions {
  const _FetchAuthSessionOptions({
    super.forceRefresh = false,
    this.pluginOptions,
  }) : super.base();

  @override
  final FetchAuthSessionPluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'FetchAuthSessionOptions';
}

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

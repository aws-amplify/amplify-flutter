// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_fetch_auth_session_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_fetch_auth_session_plugin_options}
/// Cognito options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoFetchAuthSessionPluginOptions
    extends FetchAuthSessionPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_fetch_auth_session_plugin_options}
  const CognitoFetchAuthSessionPluginOptions({
    this.allowNewIdentityCreation = true,
  });

  /// {@macro amplify_auth_cognito.model.cognito_fetch_auth_session_plugin_options}
  factory CognitoFetchAuthSessionPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoFetchAuthSessionPluginOptionsFromJson(json);

  /// Whether or a not a new identity should be created if one does not already
  /// exist.
  ///
  /// Defaults to true. Set to false to fetch the session without creating a new
  /// identity.
  ///
  /// This can be used to check if there is an authenticated user without
  /// creating an unauthenticated identity.
  final bool allowNewIdentityCreation;

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoFetchAuthSessionPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoFetchAuthSessionPluginOptionsToJson(this);
}

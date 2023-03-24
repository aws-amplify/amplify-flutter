// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_fetch_user_attributes_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_fetch_user_attributes_plugin_options}
/// Cognito options for `Amplify.Auth.fetchUserAttributes`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoFetchUserAttributesPluginOptions
    extends FetchUserAttributesPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_fetch_user_attributes_plugin_options}
  const CognitoFetchUserAttributesPluginOptions();

  /// {@macro amplify_auth_cognito.model.cognito_fetch_user_attributes_plugin_options}
  factory CognitoFetchUserAttributesPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoFetchUserAttributesPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'CognitoFetchUserAttributesPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoFetchUserAttributesPluginOptionsToJson(this);
}

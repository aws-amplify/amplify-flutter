// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_sign_out_with_web_ui_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_out_with_web_ui_options}
/// Cognito options for `Amplify.Auth.signOut` when using Hosted UI.
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CognitoSignOutWithWebUIOptions extends SignOutOptions
    with AWSEquatable<CognitoSignOutWithWebUIOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_sign_out_with_web_ui_options}
  const CognitoSignOutWithWebUIOptions({
    this.browserPackageName,
    super.globalSignOut = false,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  factory CognitoSignOutWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignOutWithWebUIOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  final String? browserPackageName;

  @override
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => [browserPackageName, globalSignOut];

  @override
  String get runtimeTypeName => 'CognitoSignOutWithWebUIOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignOutWithWebUIOptionsToJson(this);
}

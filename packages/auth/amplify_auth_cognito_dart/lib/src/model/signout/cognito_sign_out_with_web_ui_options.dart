// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
    this.isPreferPrivateSession = false,
    this.browserPackageName,
    super.globalSignOut = false,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  factory CognitoSignOutWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignOutWithWebUIOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  final bool isPreferPrivateSession;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  final String? browserPackageName;

  @override
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  String get runtimeTypeName => 'CognitoSignOutWithWebUIOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignOutWithWebUIOptionsToJson(this);
}

/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_sign_in_with_web_ui_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_options}
/// Cognito options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CognitoSignInWithWebUIOptions extends SignInWithWebUIOptions
    with AWSSerializable, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  const CognitoSignInWithWebUIOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  factory CognitoSignInWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInWithWebUIOptionsFromJson(json);

  /// {@template amplify_auth_plugin_interface.cognito_sign_in_with_web_ui_options}
  /// iOS-only: Starts the webUI signin in a private browser session, if supported by the current browser.
  ///
  /// Note that this value internally sets `prefersEphemeralWebBrowserSession` in ASWebAuthenticationSession.
  /// As per Apple documentation, Whether the request is honored depends on the user’s default web browser.
  /// Safari always honors the request.
  ///
  /// Defaults to `false`.
  /// {@endtemplate}
  final bool isPreferPrivateSession;

  /// Android-only: The browser package name (application ID) to use to launch
  /// the custom tab.
  final String? browserPackageName;

  @override
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => _$CognitoSignInWithWebUIOptionsToJson(this);

  @override
  String get runtimeTypeName => 'CognitoSignInWithWebUIOptions';
}

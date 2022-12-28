// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_with_web_ui_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
/// Cognito options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInWithWebUIOptions extends SignInWithWebUIOptions
    with
        AWSEquatable<CognitoSignInWithWebUIOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
  const CognitoSignInWithWebUIOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  factory CognitoSignInWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInWithWebUIOptionsFromJson(json);

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  /// iOS-only: Starts the webUI signin in a private browser session, if supported by the current browser.
  ///
  /// Note that this value internally sets `prefersEphemeralWebBrowserSession` in ASWebAuthenticationSession.
  /// As per Apple documentation, Whether the request is honored depends on the user’s default web browser.
  /// Safari always honors the request.
  ///
  /// Defaults to `false`.
  /// {@endtemplate}
  final bool isPreferPrivateSession;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  /// Android-only: The browser package name (application ID) to use to launch
  /// the custom tab.
  /// {@endtemplate}
  final String? browserPackageName;

  @override
  List<Object?> get props => [isPreferPrivateSession, browserPackageName];

  @override
  Map<String, Object?> toJson() => _$CognitoSignInWithWebUIOptionsToJson(this);

  @override
  String get runtimeTypeName => 'CognitoSignInWithWebUIOptions';
}

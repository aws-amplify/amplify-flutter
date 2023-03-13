// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_with_web_ui_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
/// Cognito options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInWithWebUIOptions extends SignInWithWebUIOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
  const CognitoSignInWithWebUIOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
  }) : super.base();

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
  factory CognitoSignInWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInWithWebUIOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  final bool isPreferPrivateSession;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  final String? browserPackageName;

  @override
  CognitoSignInWithWebUIPluginOptions get pluginOptions =>
      CognitoSignInWithWebUIPluginOptions(
        isPreferPrivateSession: isPreferPrivateSession,
        browserPackageName: browserPackageName,
      );

  @override
  String get runtimeTypeName => 'CognitoSignInWithWebUIOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignInWithWebUIOptionsToJson(this);
}

/// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
/// Cognito options for `Amplify.Auth.signIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInWithWebUIPluginOptions extends SignInWithWebUIPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
  const CognitoSignInWithWebUIPluginOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
  factory CognitoSignInWithWebUIPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoSignInWithWebUIPluginOptionsFromJson(json);

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
  String get runtimeTypeName => 'CognitoSignInWithWebUIPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoSignInWithWebUIPluginOptionsToJson(this);
}

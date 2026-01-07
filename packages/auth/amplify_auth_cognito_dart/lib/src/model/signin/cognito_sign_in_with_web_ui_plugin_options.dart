// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/signin/cognito_sign_in_with_web_ui_plugin_options_prompt.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_with_web_ui_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
/// Cognito options for `Amplify.Auth.signIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInWithWebUIPluginOptions extends SignInWithWebUIPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
  const CognitoSignInWithWebUIPluginOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
    this.nonce,
    this.language,
    this.loginHint,
    this.prompt,
    this.resource,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_plugin_options}
  factory CognitoSignInWithWebUIPluginOptions.fromJson(
    Map<String, Object?> json,
  ) => _$CognitoSignInWithWebUIPluginOptionsFromJson(json);

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  /// Starts the webUI signin in a private browser session, if supported by the current browser.
  ///
  /// Note that on iOS this value internally sets `prefersEphemeralWebBrowserSession` in ASWebAuthenticationSession.
  /// As per Apple documentation, Whether the request is honored depends on the user’s default web browser.
  /// Safari always honors the request.
  ///
  /// Note that on Android this value internally sets `setEphemeralBrowsingEnabled` in CustomTabsIntent.
  ///
  /// Defaults to `false`.
  /// {@endtemplate}
  final bool isPreferPrivateSession;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  /// Android-only: The browser package name (application ID) to use to launch
  /// the custom tab.
  /// {@endtemplate}
  final String? browserPackageName;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.nonce}
  /// A random value that you can add to the request. The nonce value that you provide is included in the ID token
  /// that Amazon Cognito issues. To guard against replay attacks, your app can inspect the nonce claim in the ID
  /// token and compare it to the one you generated.
  /// {@endtemplate}
  final String? nonce;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.language}
  /// The language that you want to display user-interactive pages in
  /// For more information, see Managed login localization -
  /// https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization
  /// {@endtemplate}
  final String? language;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.loginHint}
  /// A username prompt that you want to pass to the authorization server. You can collect a username, email
  /// address or phone number from your user and allow the destination provider to pre-populate the user's
  /// sign-in name.
  /// {@endtemplate}
  final String? loginHint;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.prompt}
  /// An OIDC parameter that controls authentication behavior for existing sessions.
  /// {@endtemplate}
  final List<CognitoSignInWithWebUIPrompt>? prompt;

  /// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.resource}
  /// The identifier of a resource that you want to bind to the access token in the `aud` claim. When you include
  /// this parameter, Amazon Cognito validates that the value is a URL and sets the audience of the resulting
  /// access token to the requested resource. Values for this parameter must begin with "https://", "http://localhost",
  /// or a custom URL scheme like "myapp://".
  /// {@endtemplate}
  final String? resource;

  @override
  List<Object?> get props => [
    isPreferPrivateSession,
    browserPackageName,
    nonce,
    language,
    loginHint,
    prompt,
    resource,
  ];

  @override
  String get runtimeTypeName => 'CognitoSignInWithWebUIPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoSignInWithWebUIPluginOptionsToJson(this);
}

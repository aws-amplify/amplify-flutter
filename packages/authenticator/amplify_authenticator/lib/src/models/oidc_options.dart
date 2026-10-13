// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

/// {@template amplify_authenticator.oidc_options}
/// Options for configuring the OIDC sign in parameters
///
/// ```dart
/// @override
/// Widget build(BuildContext context) {
///   return Authenticator(
///      oidcOptions: const OidcOptions(
///       nonce: 'nonce',
///       language: 'language',
///       loginHint: 'loginHint',
///       prompt: [CognitoSignInWithWebUIPrompt.login],
///       resource: 'resource',
///     ),
///     child: MaterialApp(
///       builder: Authenticator.builder(),
///       home: Scaffold(
///         body: Center(
///           child: Text('You are logged in!'),
///         ),
///       ),
///     ),
///   ),
/// }
/// ```
/// {@endtemplate}
class OidcOptions {
  /// {@macro amplify_authenticator.oidc_options}
  const OidcOptions({
    this.nonce,
    this.language,
    this.loginHint,
    this.prompt,
    this.resource,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  final String? nonce;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.language}
  final String? language;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.loginHint}
  final String? loginHint;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.prompt}
  final List<CognitoSignInWithWebUIPrompt>? prompt;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.resource}
  final String? resource;
}

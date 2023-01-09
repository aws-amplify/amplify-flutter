// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:path/path.dart' show url;

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  /// The base URL
  String get baseUrl => url.join(window.location.origin, '/');

  Never _noSuitableRedirect({required bool signIn}) {
    final inOut = signIn ? 'in' : 'out';
    throw InvalidUserPoolConfigurationException(
      'No sign $inOut redirect URLs registered for base URL: $baseUrl. '
      'Add a sign $inOut redirect URL on that starts with "$baseUrl". See '
      'the docs for more info: '
      'https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/',
    );
  }

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.firstWhere(
        (uri) => uri.toString().startsWith(baseUrl),
        orElse: () => _noSuitableRedirect(signIn: true),
      );

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.firstWhere(
        (uri) => uri.toString().startsWith(baseUrl),
        orElse: () => _noSuitableRedirect(signIn: false),
      );

  /// Launches the given URL.
  Future<void> launchUrl(String url) async {
    window.open(url, '_self');
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) async {
    final signInUrl = getSignInUri(provider: provider).toString();
    await launchUrl(signInUrl);
  }

  @override
  Future<void> signOut({
    required CognitoSignOutWithWebUIOptions options,
    required bool isPreferPrivateSession,
  }) async {
    final signOutUrl = getSignOutUri().toString();
    await launchUrl(signOutUrl);
  }
}

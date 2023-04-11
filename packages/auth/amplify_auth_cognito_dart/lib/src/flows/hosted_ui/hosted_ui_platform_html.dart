// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
import 'package:path/path.dart' show url;

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  /// The base URL
  String get _baseUrl {
    final baseElement = document.querySelector('base');
    final basePath = baseElement?.getAttribute('href') ?? '/';
    return url.join(window.location.origin, basePath);
  }

  Never _noSuitableRedirect({required bool signIn}) {
    final inOut = signIn ? 'in' : 'out';
    throw InvalidUserPoolConfigurationException(
      'No sign $inOut redirect URLs registered for base URL: $_baseUrl. '
      'Add a sign $inOut redirect URL on that starts with "$_baseUrl". See '
      'the docs for more info: '
      'https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/',
    );
  }

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.firstWhere(
        (uri) => uri.toString().startsWith(_baseUrl),
        orElse: () => _noSuitableRedirect(signIn: true),
      );

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.firstWhere(
        (uri) => uri.toString().startsWith(_baseUrl),
        orElse: () => _noSuitableRedirect(signIn: false),
      );

  /// Launches the given URL.
  Future<void> launchUrl(String url) async {
    window.open(url, '_self');
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    final signInUrl = (await getSignInUri(provider: provider)).toString();
    await launchUrl(signInUrl);
  }

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) async {
    final signOutUrl = getSignOutUri().toString();
    await launchUrl(signOutUrl);
  }
}

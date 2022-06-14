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

import 'dart:html';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/crypto/oauth.dart';
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
      message:
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
  Future<void> onFoundState({
    required String state,
    required String codeVerifier,
  }) async {
    authCodeGrant = restoreGrant(
      config,
      state: state,
      codeVerifier: codeVerifier,
      httpClient: httpClient,
    );

    final parameters = dependencyManager.get<OAuthParameters>();
    if (parameters != null) {
      dispatcher.dispatch(HostedUiEvent.exchange(parameters));
      return;
    }

    return super.onFoundState(
      state: state,
      codeVerifier: codeVerifier,
    );
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
  Future<void> signOut() async {
    final signOutUrl = getSignOutUri().toString();
    await launchUrl(signOutUrl);
  }
}

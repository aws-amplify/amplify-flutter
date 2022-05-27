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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/crypto/oauth.dart';

/// {@macro amplify_auth_cognito_dart.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito_dart.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  /// Launches the given URL.
  Future<void> launchUrl(String url) async {
    window.open(url, '_self');
    await Future<void>.delayed(Duration.zero);
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

    // Try to deserialize the current route parameters.
    final location = Uri.parse(window.location.href);
    final parameters = {...location.queryParameters};

    // Handle fragment as well e.g. /#/auth?code=...&state=...
    final fragment = location.fragment;
    final parts = fragment.split('?');
    if (parts.length == 2) {
      parameters.addAll(Uri.splitQueryString(parts[1]));
    }

    // If this is a redirect, handle it.
    if (parameters.containsKey('state') &&
        (parameters.containsKey('code') || parameters.containsKey('error'))) {
      dispatcher.dispatch(
        HostedUiEvent.exchange(
          OAuthParameters.fromJson(parameters),
        ),
      );
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

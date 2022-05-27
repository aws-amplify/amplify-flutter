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

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_core/amplify_core.dart';

import 'hosted_ui_platform_io.dart' as io;

/// {@template amplify_auth_cognito.hosted_ui_platform_flutter}
/// The hybrid Flutter implementation of [HostedUiPlatform] which uses
/// `ASWebAuthenticationSession` on iOS, Custom Tabs on Android, and the
/// standard `dart:io` implementation for the rest.
/// {@endtemplate}
class HostedUiPlatformImpl extends io.HostedUiPlatformImpl {
  /// {@macro amplify_auth_cognito.hosted_ui_platform_flutter}
  HostedUiPlatformImpl(super.dependencyManager);

  static final bool _isMobile = Platform.isAndroid || Platform.isIOS;

  NativeAuthBridge get _nativeAuthBridge => dependencyManager.expect();

  @override
  Uri get signInRedirectUri {
    if (!_isMobile) {
      return super.signInRedirectUri;
    }
    return config.signInRedirectUris.firstWhere(
      (uri) => uri.scheme != 'https' && uri.scheme != 'http',
    );
  }

  @override
  Uri get signOutRedirectUri {
    if (!_isMobile) {
      return super.signOutRedirectUri;
    }
    return config.signOutRedirectUris.firstWhere(
      (uri) => uri.scheme != 'https' && uri.scheme != 'http',
    );
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) async {
    if (!_isMobile) {
      return super.signIn(options: options, provider: provider);
    }
    final signInUri = getSignInUri(provider: provider);
    try {
      final queryParameters = await _nativeAuthBridge.signIn(
        signInUri.toString(),
        signInRedirectUri.scheme,
        options.isPreferPrivateSession,
        options.browserPackageName,
      );
      dispatcher.dispatch(
        HostedUiEvent.exchange(
          OAuthParameters.fromJson(queryParameters.cast()),
        ),
      );
    } on Exception {
      dispatcher.dispatch(const HostedUiEvent.cancelSignIn());
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    if (!_isMobile) {
      return super.signOut();
    }
    final signOutUri = getSignOutUri();
    await _nativeAuthBridge.signOut(
      signOutUri.toString(),
      signOutRedirectUri.scheme,
      null,
    );
  }
}

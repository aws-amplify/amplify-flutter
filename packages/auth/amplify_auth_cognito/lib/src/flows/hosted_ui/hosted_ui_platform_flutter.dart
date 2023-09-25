// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart'
    as io;
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// {@template amplify_auth_cognito.hosted_ui_platform_flutter}
/// The hybrid Flutter implementation of [HostedUiPlatform] which uses
/// `ASWebAuthenticationSession` on iOS, Custom Tabs on Android, and the
/// standard `dart:io` implementation for the rest.
/// {@endtemplate}
class HostedUiPlatformImpl extends io.HostedUiPlatformImpl {
  /// {@macro amplify_auth_cognito.hosted_ui_platform_flutter}
  HostedUiPlatformImpl(super.dependencyManager);

  static bool get _isMobile {
    if (Platform.isAndroid || Platform.isIOS) {
      return true;
    }
    // Allow overrides for tests
    if (zAssertsEnabled) {
      return debugDefaultTargetPlatformOverride == TargetPlatform.android ||
          debugDefaultTargetPlatformOverride == TargetPlatform.iOS;
    }
    return false;
  }

  NativeAuthBridge get _nativeAuthBridge => dependencyManager.expect();

  Never _noSuitableRedirect({required bool signIn}) {
    final inOut = signIn ? 'in' : 'out';
    throw InvalidUserPoolConfigurationException(
      'No sign $inOut redirect URLs registered for a custom scheme. '
      'Add one or more sign $inOut redirect URLs that '
      'use a custom scheme like "myapp", for example "myapp://auth". See '
      'the docs for more info: '
      'https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/',
    );
  }

  @override
  Uri get signInRedirectUri {
    if (!_isMobile) {
      return super.signInRedirectUri;
    }
    return config.signInRedirectUris.firstWhere(
      (uri) => uri.scheme != 'https' && uri.scheme != 'http',
      orElse: () => _noSuitableRedirect(signIn: true),
    );
  }

  @override
  Uri get signOutRedirectUri {
    if (!_isMobile) {
      return super.signOutRedirectUri;
    }
    return config.signOutRedirectUris.firstWhere(
      (uri) => uri.scheme != 'https' && uri.scheme != 'http',
      orElse: () => _noSuitableRedirect(signIn: false),
    );
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    if (!_isMobile) {
      return super.signIn(options: options, provider: provider);
    }
    final signInUri = await getSignInUri(provider: provider);
    try {
      final queryParameters = await _nativeAuthBridge.signInWithUrl(
        signInUri.toString(),
        signInRedirectUri.scheme,
        options.isPreferPrivateSession,
        options.browserPackageName,
      );
      dispatcher
          .dispatch(
            HostedUiEvent.exchange(
              OAuthParameters.fromJson(queryParameters.cast()),
            ),
          )
          .ignore();
    } on Exception catch (e) {
      switch (e) {
        case PlatformException(code: 'CANCELLED'):
          throw const UserCancelledException(
            'The user cancelled the sign-in flow',
          );
        case PlatformException(:final code, :var message):
          // Generated Android message is `CLASS_NAME: message`
          if (message != null && message.contains(': ')) {
            message = message.split(': ')[1];
          }
          String? recoverySuggestion;
          if (code == 'NOBROWSER') {
            recoverySuggestion =
                "Ensure you've added the <queries> tag to your "
                'AndroidManifest.xml as outlined in the docs';
          }
          throw UrlLauncherException(
            message ?? 'An unknown error occurred',
            recoverySuggestion: recoverySuggestion,
          );
        default:
          rethrow;
      }
    }
  }

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) async {
    if (!_isMobile) {
      return super.signOut(options: options);
    }
    // Launching the sign out url is not needed on iOS if isPreferPrivateSession
    // is true.
    if (Platform.isIOS && options.isPreferPrivateSession) return;
    final signOutUri = getSignOutUri();
    await _nativeAuthBridge.signOutWithUrl(
      signOutUri.toString(),
      signOutRedirectUri.scheme,
      options.isPreferPrivateSession,
      options.browserPackageName,
    );
  }
}

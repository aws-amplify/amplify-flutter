// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut({
    required CognitoSignOutWithWebUIOptions options,
    required bool isPreferPrivateSession,
  }) {
    throw UnimplementedError();
  }

  @override
  Uri get signInRedirectUri => throw UnimplementedError();

  @override
  Uri get signOutRedirectUri => throw UnimplementedError();
}

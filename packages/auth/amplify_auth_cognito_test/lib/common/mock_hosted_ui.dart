// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.io) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_core/amplify_core.dart';

typedef SignInFn = Future<void> Function(
  HostedUiPlatform platform,
  CognitoSignInWithWebUIOptions options,
  AuthProvider? provider,
);

typedef SignOutFn = Future<void> Function(
  HostedUiPlatform platform,
  CognitoSignInWithWebUIOptions options,
);

HostedUiPlatformFactory createHostedUiFactory({
  required SignInFn signIn,
  required SignOutFn signOut,
}) {
  return (DependencyManager dependencyManager) {
    return MockHostedUiPlatform(
      dependencyManager,
      signIn: signIn,
      signOut: signOut,
    );
  };
}

class MockHostedUiPlatform extends HostedUiPlatformImpl {
  MockHostedUiPlatform(
    super.dependencyManager, {
    required SignInFn signIn,
    required SignOutFn signOut,
  })  : _signIn = signIn,
        _signOut = signOut;

  final SignInFn _signIn;
  final SignOutFn _signOut;

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) =>
      _signIn(this, options, provider);

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIOptions options,
  }) =>
      _signOut(this, options);

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.first;

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.first;
}

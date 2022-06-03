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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

typedef SignInFn = Future<void> Function({
  required CognitoSignInWithWebUIOptions options,
  AuthProvider? provider,
});

HostedUiPlatformFactory createHostedUiFactory({
  required SignInFn signIn,
  required Future<void> Function() signOut,
}) {
  return (DependencyManager dependencyManager) {
    return MockHostedUiPlatform(
      dependencyManager,
      signIn: signIn,
      signOut: signOut,
    );
  };
}

class MockHostedUiPlatform extends HostedUiPlatform {
  MockHostedUiPlatform(
    super.dependencyManager, {
    required SignInFn signIn,
    required Future<void> Function() signOut,
  })  : _signIn = signIn,
        _signOut = signOut,
        super.protected();

  final SignInFn _signIn;
  final Future<void> Function() _signOut;

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) =>
      _signIn(options: options, provider: provider);

  @override
  Future<void> signOut() => _signOut();

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.first;

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.first;
}

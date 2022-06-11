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
    required CognitoSignInWithWebUIOptions options,
  }) {
    throw UnimplementedError();
  }

  @override
  Uri get signInRedirectUri => throw UnimplementedError();

  @override
  Uri get signOutRedirectUri => throw UnimplementedError();
}

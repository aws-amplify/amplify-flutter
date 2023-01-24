// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// [AmplifyAuthProvider] implementation that adds access token to request headers.
@internal
class CognitoUserPoolsAuthProvider extends TokenIdentityAmplifyAuthProvider {
  /// Get access token from `Amplify.Auth.fetchAuthSession()`.
  @override
  Future<String> getLatestAuthToken() async {
    final authSession =
        await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    return authSession.userPoolTokensResult.value.accessToken.raw;
  }

  @override
  Future<String> getIdentityId() async {
    final authSession =
        await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    return authSession.identityIdResult.value;
  }
}

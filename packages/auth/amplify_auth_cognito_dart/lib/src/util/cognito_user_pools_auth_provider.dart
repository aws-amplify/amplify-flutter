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
    final token = authSession.userPoolTokens?.accessToken.raw;
    if (token == null) {
      throw const AuthNotAuthorizedException(
        'Unable to fetch access token while authorizing with Cognito User Pools.',
      );
    }
    return token;
  }

  @override
  Future<String> getIdentityId() async {
    final authSession =
        await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    final identityId = authSession.identityId;

    if (identityId == null) {
      throw const AuthNotAuthorizedException(
        'Unable to get identityId while authorizing with Cognito User Pools.',
      );
    }

    return identityId;
  }
}

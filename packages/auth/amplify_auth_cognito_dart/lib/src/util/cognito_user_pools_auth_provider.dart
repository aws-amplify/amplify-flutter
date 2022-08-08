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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// [AmplifyAuthProvider] implementation that adds access token to request headers.
@internal
class CognitoUserPoolsAuthProvider extends TokenAmplifyAuthProvider {
  /// Get access token from `Amplify.Auth.fetchAuthSession()`.
  @override
  Future<String> getLatestAuthToken() async {
    final authSession =
        await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    final token = authSession.userPoolTokens?.accessToken.raw;
    if (token == null) {
      throw const AuthException(
        'Unable to fetch access token while authorizing with Cognito User Pools.',
      );
    }
    return token;
  }
}

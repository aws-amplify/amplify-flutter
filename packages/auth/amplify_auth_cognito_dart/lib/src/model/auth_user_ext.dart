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

@internal
library amplify_auth_cognito_dart.model.auth_user_ext;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:meta/meta.dart';

/// Helper for getting an [AuthUser] from [CognitoUserPoolTokens].
extension UserPoolTokensAuthUser on CognitoUserPoolTokens {
  /// The [AuthUser] represented by these tokens.
  AuthUser get authUser => AuthUser(
        userId: CognitoToken(idToken).userId,
        username: CognitoIdToken(idToken).username,
      );
}

/// Helper for getting an [AuthUser] from a [CognitoUser].
extension CognitoUserAuthUser on CognitoUser {
  /// The [AuthUser] representing this user.
  AuthUser get authUser => AuthUser(
        userId: userId,
        username: username,
      );
}

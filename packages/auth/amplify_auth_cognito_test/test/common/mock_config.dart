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

import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_user_pool_tokens.dart';
import 'package:amplify_core/amplify_core.dart';

const testUserPoolId = 'us-east-1_userPoolId';
const testAppClientId = 'appClientId';
const testIdentityPoolId = 'identityPoolId';
const testRegion = 'region';
const scopes = ['profile'];
const redirectUri = 'http://localhost:9999/';
const webDomain = 'example.com';
const hostedUiConfig = CognitoOAuthConfig(
  appClientId: testAppClientId,
  scopes: scopes,
  signInRedirectUri: redirectUri,
  signOutRedirectUri: redirectUri,
  webDomain: webDomain,
);

final userPoolOnlyConfig = AmplifyConfig(
  auth: AuthConfig.cognito(
    userPoolConfig: const CognitoUserPoolConfig(
      poolId: testUserPoolId,
      appClientId: testAppClientId,
      region: testRegion,
    ),
  ),
);
final mockConfig = AmplifyConfig(
  auth: AuthConfig.cognito(
    userPoolConfig: const CognitoUserPoolConfig(
      poolId: testUserPoolId,
      appClientId: testAppClientId,
      region: testRegion,
    ),
    identityPoolConfig: const CognitoIdentityPoolConfig(
      poolId: testIdentityPoolId,
      region: testRegion,
    ),
    hostedUiConfig: hostedUiConfig,
  ),
);

final accessToken = JsonWebToken(
  header: const JsonWebHeader(algorithm: Algorithm.hmacSha256),
  claims: JsonWebClaims(
    subject: userSub,
    expiration: expiration,
    customClaims: const {
      'username': username,
    },
  ),
  signature: const [],
);
const refreshToken = 'refreshToken';
const idToken = JsonWebToken(
  header: JsonWebHeader(algorithm: Algorithm.hmacSha256),
  claims: JsonWebClaims(
    subject: userSub,
    customClaims: {
      'cognito:username': username,
    },
  ),
  signature: [],
);
const username = 'username';
const userSub = 'userSub';
const accessKeyId = 'accessKeyId';
const secretAccessKey = 'secretAccessKey';
const sessionToken = 'sessionToken';
final expiration = DateTime.utc(2100, 1, 1);
const identityId = 'identityId';
const deviceKey = 'deviceKey';
const deviceGroupKey = 'deviceGroupKey';
const devicePassword = 'devicePassword';

final authConfig = AuthConfiguration.fromConfig(mockConfig.auth!.awsPlugin!);
final userPoolConfig = authConfig.userPoolConfig!;
final identityPoolConfig = authConfig.identityPoolConfig!;
final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
final deviceKeys = CognitoDeviceKeys(userPoolConfig, userSub);
final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);
final userPoolTokens = CognitoUserPoolTokens(
  accessToken: accessToken,
  idToken: idToken,
  refreshToken: refreshToken,
);
final awsCredentials = AWSCredentials(
  accessKeyId,
  secretAccessKey,
  sessionToken,
  expiration,
);

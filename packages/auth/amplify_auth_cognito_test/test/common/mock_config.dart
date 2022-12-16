// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
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

extension MockDispatch on CognitoAuthStateMachine {
  FutureOr<void> dispatch(AuthEvent event) =>
      expect<Dispatcher<AuthEvent>>()(event);
}

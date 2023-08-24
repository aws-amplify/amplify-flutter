// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AuthConfig;

const testUserPoolId = 'us-east-1_userPoolId';
const testAppClientId = 'appClientId';
const testIdentityPoolId = 'identityPoolId';
const testRegion = 'region';
const scopes = ['profile'];
const testUrlScheme = 'authtest';
final redirectUris = [
  Uri.parse('$testUrlScheme:/'),
  Uri.parse('http://localhost:9999/'),
];
const webDomain = 'example.com';

const testPinpointAppId = 'pinpointAppId';

final hostedUiConfig = AuthHostedUiConfig(
  clientId: testAppClientId,
  scopes: scopes,
  signInRedirectUris: redirectUris,
  signOutRedirectUris: redirectUris,
  domainName: webDomain,
);

final userPoolOnlyConfig = AWSAmplifyConfig(
  auth: AuthConfig.cognito(
    userPool: AuthUserPoolConfig(
      poolId: testUserPoolId,
      clientId: testAppClientId,
      region: testRegion,
    ),
  ),
);
final mockConfig = AWSAmplifyConfig(
  auth: AuthConfig.cognito(
    userPool: AuthUserPoolConfig(
      poolId: testUserPoolId,
      clientId: testAppClientId,
      region: testRegion,
      hostedUi: hostedUiConfig,
    ),
    identityPool: AuthIdentityPoolConfig(
      poolId: testIdentityPoolId,
      region: testRegion,
    ),
  ),
);

final mockConfigWithPinpoint = AWSAmplifyConfig(
  auth: AuthConfig.cognito(
    userPool: AuthUserPoolConfig(
      poolId: testUserPoolId,
      clientId: testAppClientId,
      region: testRegion,
      pinpointConfig: AnalyticsPinpointConfig(
        appId: testPinpointAppId,
        region: testRegion,
      ),
    ),
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
const password = 'password';
const userSub = 'userSub';
const accessKeyId = 'accessKeyId';
const secretAccessKey = 'secretAccessKey';
const sessionToken = 'sessionToken';
final expiration = DateTime.utc(2100, 1, 1);
const identityId = 'identityId';
const deviceKey = 'deviceKey';
const deviceGroupKey = 'deviceGroupKey';
const devicePassword = 'devicePassword';

final authConfig = mockConfig.auth!.cognito!;
final userPoolConfig = authConfig.userPool!;
final identityPoolConfig = authConfig.identityPool!;
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

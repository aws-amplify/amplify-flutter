// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_core/amplify_core.dart';

const testUserPoolId = 'us-east-1_userPoolId';
const testAppClientId = 'appClientId';
const testIdentityPoolId = 'identityPoolId';
const testRegion = 'region';
const scopes = ['profile'];
const testUrlScheme = 'authtest';
const redirectUri = '$testUrlScheme:/,http://localhost:9999/';
const webDomain = 'example.com';

const testPinpointAppId = 'pinpointAppId';

const hostedUiConfig = CognitoOAuthConfig(
  appClientId: testAppClientId,
  scopes: scopes,
  signInRedirectUri: redirectUri,
  signOutRedirectUri: redirectUri,
  webDomain: webDomain,
);
// TODO(nikahsn): update to use AmplifyOutputs config
final userPoolOnlyConfig = AmplifyConfig(
  auth: AuthConfig.cognito(
    userPoolConfig: const CognitoUserPoolConfig(
      poolId: testUserPoolId,
      appClientId: testAppClientId,
      region: testRegion,
    ),
  ),
).toAmplifyOutputs();

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
).toAmplifyOutputs();

final mockConfigWithPinpoint = AmplifyConfig(
  auth: AuthConfig.cognito(
    userPoolConfig: const CognitoUserPoolConfig(
      poolId: testUserPoolId,
      appClientId: testAppClientId,
      region: testRegion,
    ),
  ),
  analytics: const AnalyticsConfig(
    plugins: {
      'awsPinpointAnalyticsPlugin': PinpointPluginConfig(
        pinpointAnalytics:
            PinpointAnalytics(appId: testPinpointAppId, region: testRegion),
        pinpointTargeting: PinpointTargeting(region: testRegion),
      ),
    },
  ),
).toAmplifyOutputs();

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

final authConfig = AuthConfiguration.fromAmplifyOutputs(mockConfig);
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

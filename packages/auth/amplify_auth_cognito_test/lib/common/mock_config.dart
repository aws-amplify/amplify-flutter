// // Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// // SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_core/amplify_core.dart';

const amplifyConfig = '''{
  "version": "1",
  "auth": {
    "aws_region": "region",
    "user_pool_id": "us-east-1_userPoolId",
    "user_pool_client_id": "appClientId",
    "identity_pool_id": "identityPoolId",
    "password_policy": {
      "require_numbers": false,
      "require_lowercase": false,
      "require_uppercase": false,
      "require_symbols": false
    },
    "oauth":{
      "identity_providers": [],
      "domain": "example.com",
      "scopes":[
        "profile"
      ],
      "redirect_sign_in_uri":[
        "authtest:/",
        "http://localhost:9999/"
      ],
      "redirect_sign_out_uri":[
        "authtest:/",
        "http://localhost:9999/"
      ],
      "response_type": "code"
    },
    "standard_required_attributes": [],
    "username_attributes": [],
    "unauthenticated_identities_enabled": true
  }
}''';

const amplifyConfigUserPoolOnly = '''{
  "version": "1",
  "auth": {
    "aws_region": "region",
    "user_pool_id": "us-east-1_userPoolId",
    "user_pool_client_id": "appClientId",
    "password_policy": {
      "require_numbers": false,
      "require_lowercase": false,
      "require_uppercase": false,
      "require_symbols": false
    },
    "standard_required_attributes":[],
    "username_attributes":[],
    "unauthenticated_identities_enabled":true
  }
}
''';

const amplifyConfigWithAnalytics = '''{
  "version": "1",
  "analytics": {
    "amazon_pinpoint": {
      "aws_region": "region",
      "app_id": "pinpointAppId"
    }
  },
  "auth": {
    "aws_region": "region",
    "user_pool_id": "us-east-1_userPoolId",
    "user_pool_client_id": "appClientId",
    "password_policy": {
      "require_numbers": false,
      "require_lowercase": false,
      "require_uppercase": false,
      "require_symbols": false
    },
    "standard_required_attributes":[],
    "username_attributes":[],
    "unauthenticated_identities_enabled":true
  }
}''';

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

final mockConfig = AmplifyOutputs.fromJson(
  jsonDecode(amplifyConfig) as Map<String, Object?>,
);
final mockConfigUserPoolOnly = AmplifyOutputs.fromJson(
  jsonDecode(amplifyConfigUserPoolOnly) as Map<String, Object?>,
);
final mockConfigWithPinpoint = AmplifyOutputs.fromJson(
  jsonDecode(amplifyConfigWithAnalytics) as Map<String, Object?>,
);

final authConfig = AuthConfiguration.fromAmplifyOutputs(mockConfig);
// TODO(nikahsn): remove after refactoring DeviceMetadataRepository
final userPoolConfig = authConfig.userPoolConfig!;
final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
final deviceKeys =
    CognitoDeviceKeys(mockConfig.auth!.userPoolClientId!, userSub);
final identityPoolKeys =
    CognitoIdentityPoolKeys(mockConfig.auth!.identityPoolId!);
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

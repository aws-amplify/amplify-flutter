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

/// Utilities for the OAuth flow.
@internal
library amplify_auth_cognito.crypto.oauth;

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_config.dart';
import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

/// Generates a random state parameter for the auth code flow.
String generateState() {
  const length = 24;
  final bytes = Uint8List(length);
  for (var i = 0; i < length; i++) {
    final value = secureRandom.nextInt(255);
    bytes[i] = value;
  }
  return base64RawUrl.encode(bytes);
}

/// Generates a random code verifier for the auth code flow.
String createCodeVerifier() {
  const length = 128;
  const characterSet =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~';
  final codeVerifier = Uint8List(length);
  for (var i = 0; i < length; i++) {
    codeVerifier[i] = characterSet.codeUnitAt(
      secureRandom.nextInt(characterSet.length),
    );
  }
  return String.fromCharCodes(codeVerifier);
}

/// Creates an authorization code grant.
oauth2.AuthorizationCodeGrant createGrant(
  CognitoOAuthConfig config, {
  AuthProvider? provider,
  String? codeVerifier,
  http.Client? httpClient,
}) {
  return oauth2.AuthorizationCodeGrant(
    config.appClientId,
    HostedUiConfig(config).signInUri(provider),
    HostedUiConfig(config).tokenUri,
    secret: config.appClientSecret,
    httpClient: httpClient,
    codeVerifier: codeVerifier,

    // The spec recommends against this, but it's what Cognito expects. Basic
    // authorization will fail with `invalid_grant`.
    basicAuth: false,
  );
}

/// Creates an authorization code grant and advances the internal state to
/// `pendingResponse` so that parameter exchange will work.
oauth2.AuthorizationCodeGrant restoreGrant(
  CognitoOAuthConfig config, {
  required String state,
  required String codeVerifier,
  http.Client? httpClient,
}) {
  final grant = createGrant(
    config,
    codeVerifier: codeVerifier,
    httpClient: httpClient,
  );

  return grant
    // Advances the internal state.
    ..getAuthorizationUrl(
      HostedUiConfig(config).signInRedirectUri,
      scopes: config.scopes,
      state: state,
    );
}

/// Creates a `Basic` authorization header for identifiying clients.
String createBasicAuthorization(String clientId, [String? clientSecret]) {
  clientSecret ??= '';
  return 'Basic ${base64Encode('$clientId:$clientSecret'.codeUnits)}';
}

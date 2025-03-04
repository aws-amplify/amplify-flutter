// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Utilities for the OAuth flow.
@internal
library amplify_auth_cognito.crypto.oauth;

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_auth_cognito_dart/src/crypto/crypto.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:meta/meta.dart';

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

/// Creates a `Basic` authorization header for identifiying clients.
String createBasicAuthorization(String clientId, [String? clientSecret]) {
  clientSecret ??= '';
  return 'Basic ${base64Encode('$clientId:$clientSecret'.codeUnits)}';
}

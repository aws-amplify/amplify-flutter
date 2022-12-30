// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito.flow.helpers;

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:meta/meta.dart';

/// Computes the client's secret hash for use in Cognito operations.
String computeSecretHash(
  String userId,
  String clientId,
  String clientSecret,
) {
  final message = '$userId$clientId';
  final keyBytes = utf8.encode(clientSecret);
  final messageBytes = utf8.encode(message);

  final hash = Hmac(sha256, keyBytes);
  final secretHash = hash.convert(messageBytes).bytes;

  return base64Encode(secretHash);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';

enum TokenType { access, id }

JsonWebToken createJwt({
  required TokenType type,
  required Duration expiration,
  String? nonce,
}) {
  return JsonWebToken(
    header: const JsonWebHeader(
      algorithm: Algorithm.rsaSha256,
    ),
    claims: JsonWebClaims.fromJson(
      {
        'sub': userSub,
        if (type == TokenType.access) 'username': username,
        if (type == TokenType.id) 'cognito:username': username,
        'exp': (DateTime.now().add(expiration)).millisecondsSinceEpoch ~/ 1000,
        if (nonce != null) 'nonce': nonce,
      },
    ),
    signature: const [],
  );
}

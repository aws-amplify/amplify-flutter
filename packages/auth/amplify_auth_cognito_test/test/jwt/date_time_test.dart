// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:test/test.dart';

void main() {
  group('JWT', () {
    test('JsonWebClaims can handle doubles in expiration', () {
      final claims = JsonWebClaims.fromJson(const {'exp': 1300819380.0});
      expect(
        claims.expiration,
        DateTime.fromMillisecondsSinceEpoch(1300819380000, isUtc: true),
      );
    });
  });
}

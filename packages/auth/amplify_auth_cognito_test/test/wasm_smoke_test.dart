// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('plugin key is available', () {
      expect(AmplifyAuthCognitoDart.pluginKey, isNotNull);
    });

    // JWTs carry numeric `exp`/`iat` claims. Under dart2wasm a JSON number
    // decodes to `double`, so this guards the int/DateTime coercion path that
    // dart2js never had to worry about.
    test('JWT claims coerce numeric expiration to a DateTime', () {
      final claims = JsonWebClaims.fromJson(const {'exp': 1300819380.0});
      expect(
        claims.expiration,
        DateTime.fromMillisecondsSinceEpoch(1300819380000, isUtc: true),
      );
    });
  });
}

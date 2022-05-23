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

import 'dart:convert';

import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:test/test.dart';

import 'data/data.g.dart';

void main() {
  group('JsonWebToken', () {
    for (final testCase in testCases) {
      final alg = testCase.algorithm;

      group(alg.id, () {
        late JsonWebToken token;
        late JsonWebKey privateJwk;
        late JsonWebKey publicJwk;

        test('parse', () {
          expect(
            () {
              token = JsonWebToken.parse(testCase.jwt);
              privateJwk = JsonWebKey.fromJson(
                jsonDecode(testCase.privateJwk) as Map<String, Object?>,
              );
              publicJwk = JsonWebKey.fromJson(
                jsonDecode(testCase.publicJwk) as Map<String, Object?>,
              );
            },
            returnsNormally,
          );
        });

        test('encode', () {
          expect(token.encode(), equals(testCase.jwt));
          expect(privateJwk.toJson(), equals(jsonDecode(testCase.privateJwk)));
          expect(publicJwk.toJson(), equals(jsonDecode(testCase.publicJwk)));
        });
      });
    }

    test('equals', () {
      final uri = Uri.parse('https://example.com');
      const keyId = 'keyId';
      const cert = 'cert';
      const issuer = 'issuer';
      const signature = [1, 2, 3, 4];
      final expiration = DateTime.utc(2100, 1, 1);
      final t1 = JsonWebToken(
        header: JsonWebHeader(
          algorithm: Algorithm.hmacSha256,
          jwkSetUri: uri,
          keyId: keyId,
          x509CertChain: const [cert],
        ),
        claims: JsonWebClaims(
          issuer: issuer,
          expiration: expiration,
        ),
        signature: signature,
      );
      final t2 = JsonWebToken(
        header: JsonWebHeader(
          algorithm: Algorithm.hmacSha256,
          jwkSetUri: uri,
          keyId: keyId,
          x509CertChain: const [cert],
        ),
        claims: JsonWebClaims(
          issuer: issuer,
          expiration: expiration,
        ),
        signature: signature,
      );
      expect(t1, t2);
    });
  });
}

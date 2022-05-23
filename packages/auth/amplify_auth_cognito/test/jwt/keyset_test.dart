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

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:test/test.dart';

class _TestCase {
  const _TestCase({required this.keySet, required this.jwks});

  final String jwks;
  final JsonWebKeySet keySet;
}

void main() {
  group('JsonWebKeySet', () {
    final tests = <_TestCase>[
      _TestCase(
        jwks: '''
{
  "keys": [
    {
      "kty":"EC",
      "crv":"P-256",
      "x":"MKBCTNIcKUSDii11ySs3526iDZ8AiTo7Tu6KPAqv7D4",
      "y":"4Etl6SRW2YiLUrN5vfvVHuhp7x8PxltmWWlbbM4IFyM",
      "use":"enc",
      "kid":"1"
    },
    {
      "kty":"RSA",
      "n": "0vx7agoebGcQSuuPiLJXZptN9nndrQmbXEps2aiAFbWhM78LhWx4cbbfAAtVT86zwu1RK7aPFFxuhDR1L6tSoc_BJECPebWKRXjBZCiFV4n3oknjhMstn64tZ_2W-5JsGY4Hc5n9yBXArwl93lqt7_RN5w6Cf0h4QyQ5v-65YGjQR0_FDW2QvzqY368QQMicAtaSqzs8KJZgnYb9c7d0zgdAZHzu6qMQvRL5hajrn1n91CbOpbISD08qNLyrdkt-bFTWhAI4vMQFh6WeZu0fM4lFd2NcRwr3XPksINHaQ-G_xBniIqbw0Ls1jF44-csFCur-kEgU8awapJzKnqDKgw",
      "e":"AQAB",
      "alg":"RS256",
      "kid":"2011-04-29"
    }
  ]
}''',
        keySet: JsonWebKeySet([
          JsonWebKey(
            keyType: KeyType.ellipticCurve,
            ellipticCurve: EllipticCurve.p256,
            x: base64UrlUintDecode(
              'MKBCTNIcKUSDii11ySs3526iDZ8AiTo7Tu6KPAqv7D4',
            ),
            y: base64UrlUintDecode(
              '4Etl6SRW2YiLUrN5vfvVHuhp7x8PxltmWWlbbM4IFyM',
            ),
            publicKeyUse: PublicKeyUse.encryption,
            keyId: '1',
          ),
          JsonWebKey(
            keyType: KeyType.rsa,
            n: base64UrlUintDecode(
              '0vx7agoebGcQSuuPiLJXZptN9nndrQmbXEps2aiAFbWhM78LhWx4cbbfAAtVT86zwu1RK7aPFFxuhDR1L6tSoc_BJECPebWKRXjBZCiFV4n3oknjhMstn64tZ_2W-5JsGY4Hc5n9yBXArwl93lqt7_RN5w6Cf0h4QyQ5v-65YGjQR0_FDW2QvzqY368QQMicAtaSqzs8KJZgnYb9c7d0zgdAZHzu6qMQvRL5hajrn1n91CbOpbISD08qNLyrdkt-bFTWhAI4vMQFh6WeZu0fM4lFd2NcRwr3XPksINHaQ-G_xBniIqbw0Ls1jF44-csFCur-kEgU8awapJzKnqDKgw',
            ),
            e: BigInt.from(65537),
            algorithm: Algorithm.rsaSha256,
            keyId: '2011-04-29',
          ),
        ]),
      )
    ];

    for (var i = 0; i < tests.length; i++) {
      test('$i', () {
        final keySet = JsonWebKeySet.fromJson(
          jsonDecode(tests[i].jwks) as Map<String, Object?>,
        );
        expect(keySet, tests[i].keySet);
      });
    }
  });
}

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

import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:test/test.dart';

void main() {
  group('base64UrlUint', () {
    final bints = [BigInt.from(65537), BigInt.from(0), null];
    final encs = ['AQAB', 'AA', null];

    for (var i = 0; i < bints.length; i++) {
      test('encode ${bints[i].toString()}', () {
        final encoded = base64UrlUintEncode(bints[i]);
        expect(encoded, encs[i]);
      });

      test('decode ${bints[i].toString()}', () {
        final decoded = base64UrlUintTryDecode(encs[i]);
        expect(decoded, bints[i]);
      });
    }

    // Invalid inputs
    final inputs = ['Some non-base64 string', 'AA😂'];
    for (var i = 0; i < inputs.length; i++) {
      test('invalid input: "${inputs[i]}"', () {
        final decoded = base64UrlUintTryDecode(inputs[i]);
        expect(decoded, null);
      });
    }
  });
}

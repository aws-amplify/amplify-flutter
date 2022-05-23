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

import 'package:amplify_auth_cognito/src/crypto/hkdf.dart';
import 'package:convert/convert.dart';
import 'package:test/test.dart';

// From: https://datatracker.ietf.org/doc/html/rfc5869#appendix-A

void main() {
  group('HKDF', () {
    group('(SHA-256)', () {
      test('A.1', () {
        final ikm = hex.decode('0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b');
        final salt = hex.decode('000102030405060708090a0b0c');
        final info = hex.decode('f0f1f2f3f4f5f6f7f8f9');
        const length = 42;

        final hkdf = HkdfSha256(salt, ikm);
        final okm = hkdf.expand(info, length);

        final expectedPrk = hex.decode(
          '077709362c2e32df0ddc3f0dc47bba63'
          '90b6c73bb50f9c3122ec844ad7c2b3e5',
        );
        final expectedOkm = hex.decode(
          '3cb25f25faacd57a90434f64d0362f2a'
          '2d2d0a90cf1a5a4c5db02d56ecc4c5bf'
          '34007208d5b887185865',
        );
        expect(hkdf.prk, orderedEquals(expectedPrk));
        expect(okm, orderedEquals(expectedOkm));
      });

      test('A.2', () {
        final ikm = hex.decode(
          '000102030405060708090a0b0c0d0e0f'
          '101112131415161718191a1b1c1d1e1f'
          '202122232425262728292a2b2c2d2e2f'
          '303132333435363738393a3b3c3d3e3f'
          '404142434445464748494a4b4c4d4e4f',
        );
        final salt = hex.decode(
          '606162636465666768696a6b6c6d6e6f'
          '707172737475767778797a7b7c7d7e7f'
          '808182838485868788898a8b8c8d8e8f'
          '909192939495969798999a9b9c9d9e9f'
          'a0a1a2a3a4a5a6a7a8a9aaabacadaeaf',
        );
        final info = hex.decode(
          'b0b1b2b3b4b5b6b7b8b9babbbcbdbebf'
          'c0c1c2c3c4c5c6c7c8c9cacbcccdcecf'
          'd0d1d2d3d4d5d6d7d8d9dadbdcdddedf'
          'e0e1e2e3e4e5e6e7e8e9eaebecedeeef'
          'f0f1f2f3f4f5f6f7f8f9fafbfcfdfeff',
        );
        const length = 82;

        final hkdf = HkdfSha256(salt, ikm);
        final okm = hkdf.expand(info, length);

        final expectedPrk = hex.decode(
          '06a6b88c5853361a06104c9ceb35b45c'
          'ef760014904671014a193f40c15fc244',
        );
        final expectedOkm = hex.decode(
          'b11e398dc80327a1c8e7f78c596a4934'
          '4f012eda2d4efad8a050cc4c19afa97c'
          '59045a99cac7827271cb41c65e590e09'
          'da3275600c2f09b8367793a9aca3db71'
          'cc30c58179ec3e87c14c01d5c1f3434f'
          '1d87',
        );
        expect(hkdf.prk, orderedEquals(expectedPrk));
        expect(okm, orderedEquals(expectedOkm));
      });

      test('A.3', () {
        final ikm = hex.decode('0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b');
        const salt = <int>[];
        const info = <int>[];
        const length = 42;

        final hkdf = HkdfSha256(salt, ikm);
        final okm = hkdf.expand(info, length);

        final expectedPrk = hex.decode(
          '19ef24a32c717b167f33a91d6f648bdf'
          '96596776afdb6377ac434c1c293ccb04',
        );
        final expectedOkm = hex.decode(
          '8da4e775a563c18f715f802a063c5a31'
          'b8a11f5c5ee1879ec3454e5f3c738d2d'
          '9d201395faa4b61a96c8',
        );
        expect(hkdf.prk, orderedEquals(expectedPrk));
        expect(okm, orderedEquals(expectedOkm));
      });
    });
  });
}

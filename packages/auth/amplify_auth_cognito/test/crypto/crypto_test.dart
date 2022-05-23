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

import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/crypto/crypto.dart';
import 'package:test/test.dart';

class TestCase {
  const TestCase(this.hex, this.val);

  final String hex;
  final int val;
}

void main() {
  group('crypto', () {
    // Sanity checks for Dart's BigInt implementation. These tests are from the
    // aws-sdk-net-extensions-cognito repo, which is also where the SRP flow
    // tests are from. By verifying the properties in this file, we can verify
    // that the BigInt implementations match the ones there, and thus make
    // debugging easier if there is ever a discrepancy.
    test('BigInt.parse', () {
      final tests = [
        for (var i = 0; i <= 512; i++) TestCase(i.toRadixString(16), i),
      ];

      for (final t in tests) {
        expect(
          BigInt.parse(t.hex, radix: 16),
          equals(BigInt.from(t.val)),
        );
      }
    });

    test('mod', () {
      expect(BigInt.from(10) % BigInt.from(3), BigInt.one);
      expect(BigInt.from(10) % BigInt.from(5), BigInt.zero);
      expect(BigInt.from(-10) % BigInt.from(3), BigInt.two);
      expect(BigInt.from(-10) % BigInt.from(5), BigInt.zero);
    });

    test('decodeBigInt', () {
      expect(
        decodeBigInt(Uint8List.fromList([1, 44])),
        equals(BigInt.from(300)),
      );

      expect(
        decodeBigInt(Uint8List.fromList([0, 1, 44])),
        equals(BigInt.from(300)),
      );

      expect(
        decodeBigInt(Uint8List.fromList([254, 246])),
        equals(BigInt.from(65270)),
      );

      expect(
        decodeBigInt(Uint8List.fromList([0, 254, 246])),
        equals(BigInt.from(65270)),
      );
    });

    test('encodeBigInt', () {
      expect(
        encodeBigInt(BigInt.from(300)),
        orderedEquals(Uint8List.fromList([1, 44])),
      );

      expect(
        encodeBigInt(BigInt.from(65270)),
        orderedEquals(Uint8List.fromList([0, 254, 246])),
      );

      expect(
        () => encodeBigInt(BigInt.from(-1)),
        throwsA(isA<AssertionError>()),
        reason: 'We should not be handling negative BigInts',
      );
    });

    test('encodeBigIntUnsigned', () {
      expect(
        encodeBigIntUnsigned(BigInt.from(300)),
        orderedEquals(Uint8List.fromList([1, 44])),
      );

      expect(
        encodeBigIntUnsigned(BigInt.from(65270)),
        orderedEquals(Uint8List.fromList([254, 246])),
      );

      expect(
        () => encodeBigIntUnsigned(BigInt.from(-1)),
        throwsA(isA<AssertionError>()),
        reason: 'We should not be handling negative BigInts',
      );
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/result/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result Tests', () {
    group('Ok', () {
      const payload = 'payload';
      const ok = Result.ok(payload);

      test('value', () {
        expect((ok as Ok<String>).value, payload);
      });

      test('switch exhaustiveness', () {
        final value = switch (ok) {
          Ok(:final value) => value,
          Error() => null,
        };
        expect(value, payload);
      });

      test('toString', () {
        expect(ok.toString(), 'Result<String>.ok(payload)');
      });
    });

    group('Error', () {
      final exception = Exception('something went wrong');
      final error = Result<String>.error(exception);

      test('error', () {
        expect((error as Error<String>).error, exception);
      });

      test('switch exhaustiveness', () {
        final value = switch (error) {
          Ok(:final value) => value,
          Error(:final error) => error.toString(),
        };
        expect(value, exception.toString());
      });

      test('toString', () {
        expect(error.toString(), contains('Result<String>.error'));
      });
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:test/test.dart';

void main() {
  group('retryUntilUnused', () {
    test('returns the first candidate when it is already unused', () async {
      var generated = 0;
      final result = await retryUntilUnused(() {
        generated++;
        return 'value-$generated';
      }, (_) async => true);

      expect(result, 'value-1');
      expect(generated, 1, reason: 'should not regenerate an unused value');
    });

    test('regenerates until a candidate is unused', () async {
      var generated = 0;
      final result = await retryUntilUnused(() {
        generated++;
        return 'value-$generated';
      }, (value) async => value == 'value-3');

      expect(result, 'value-3');
      expect(generated, 3, reason: 'two collisions should trigger two retries');
    });

    test('throws after maxAttempts if every candidate is taken', () async {
      var generated = 0;
      await expectLater(
        retryUntilUnused(
          () {
            generated++;
            return 'value-$generated';
          },
          (_) async => false,
          maxAttempts: 3,
        ),
        throwsA(isA<StateError>()),
      );
      expect(generated, 3);
    });

    test('propagates an error thrown while checking a candidate', () async {
      var generated = 0;
      await expectLater(
        retryUntilUnused(() {
          generated++;
          return 'value-$generated';
        }, (_) async => throw Exception('probe failed')),
        throwsA(isA<Exception>()),
      );
      expect(generated, 1, reason: 'an unexpected probe error should surface');
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:test/test.dart';

void main() {
  group('retryOnUsernameExists', () {
    test('returns immediately when the first attempt succeeds', () async {
      var calls = 0;
      final result = await retryOnUsernameExists(() async {
        calls++;
        return 'ok';
      });

      expect(result, 'ok');
      expect(calls, 1, reason: 'should not retry a successful create');
    });

    test(
      'retries with a fresh call when the username already exists',
      () async {
        var calls = 0;
        final result = await retryOnUsernameExists(() async {
          calls++;
          if (calls == 1) {
            throw Exception(
              'UsernameExistsException: User account already exists',
            );
          }
          return 'ok';
        });

        expect(result, 'ok');
        expect(calls, 2, reason: 'the collision should trigger one retry');
      },
    );

    test('rethrows after maxAttempts if it always collides', () async {
      var calls = 0;
      await expectLater(
        retryOnUsernameExists(() async {
          calls++;
          throw Exception(
            'UsernameExistsException: User account already exists',
          );
        }, maxAttempts: 3),
        throwsA(isA<Exception>()),
      );
      expect(calls, 3);
    });

    test('does not retry on an unrelated error', () async {
      var calls = 0;
      await expectLater(
        retryOnUsernameExists(() async {
          calls++;
          throw Exception('SomeOtherException: boom');
        }),
        throwsA(isA<Exception>()),
      );
      expect(calls, 1, reason: 'only UsernameExistsException should retry');
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/src/result/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result Tests', () {
    group('Success', () {
      const payload = 'payload';
      const success = Success(payload);

      test('data', () {
        expect(success.data, payload);
      });

      test('dataOrNull', () {
        expect(success.dataOrNull, payload);
      });

      test('dataOrThrow', () {
        expect(() => success.dataOrThrow, returnsNormally);
      });

      test('errorOrNull', () {
        expect(success.errorOrNull, null);
      });

      test('isFailure', () {
        expect(success.isFailure, false);
      });

      test('isSuccess', () {
        expect(success.isSuccess, true);
      });

      test('handle', () {
        var onFailureCalls = 0;
        var onSuccessCalls = 0;
        success.handle(
          onSuccess: (_) => onSuccessCalls++,
          onFailure: (_) => onFailureCalls++,
        );

        expect(onSuccessCalls, 1);
        expect(onFailureCalls, 0);
      });
    });

    group('Failure', () {
      final error = Exception('Exception');
      final failure = Failure<Object, Exception>(error);

      test('error', () {
        expect(failure.error, error);
      });

      test('dataOrNull', () {
        expect(failure.dataOrNull, null);
      });

      test('dataOrThrow', () {
        expect(() => failure.dataOrThrow, throwsA(isA<Exception>()));
      });

      test('errorOrNull', () {
        expect(failure.errorOrNull, error);
      });

      test('isFailure', () {
        expect(failure.isFailure, true);
      });

      test('isSuccess', () {
        expect(failure.isSuccess, false);
      });

      test('handle', () {
        var onFailureCalls = 0;
        var onSuccessCalls = 0;
        failure.handle(
          onSuccess: (_) => onSuccessCalls++,
          onFailure: (_) => onFailureCalls++,
        );

        expect(onSuccessCalls, 0);
        expect(onFailureCalls, 1);
      });
    });
  });
}

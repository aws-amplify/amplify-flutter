// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('platform detection is correct under dart2wasm', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
      // When run with -c dart2wasm, zIsWasm should be true.
      // When run with -c dart2js, zIsWasm should be false.
      // We don't assert zIsWasm here since this test runs under both compilers.
    });

    test('core types are functional', () {
      final creds = StaticCredentials('accessKeyId', 'secretAccessKey');
      expect(creds.accessKeyId, 'accessKeyId');
      expect(creds.secretAccessKey, 'secretAccessKey');
    });

    test('Result type works', () {
      final result = Result<String>.ok('hello');
      switch (result) {
        case Ok(:final value):
          expect(value, 'hello');
        case Error():
          fail('Expected Ok, got Error');
      }
    });
  });
}

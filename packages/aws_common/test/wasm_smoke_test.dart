// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('AWSHttpRequest can be constructed', () {
      final request = AWSHttpRequest.get(Uri.parse('https://example.com'));
      expect(request.method, AWSHttpMethod.get);
      expect(request.uri.host, 'example.com');
    });

    test('AWSHttpClient can be instantiated', () {
      final client = AWSHttpClient();
      expect(client, isNotNull);
      client.close();
    });
  });
}

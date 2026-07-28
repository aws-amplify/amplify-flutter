// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works, and
/// that the common interceptors take their web-specific branch — `Host` and
/// `Content-Length` are omitted from the request, since browsers set them
/// automatically and forbid setting them from script.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('WithHost does not set the Host header on web', () {
      const interceptor = WithHost();
      final request = AWSHttpRequest.get(Uri.https('example.com', '/'));
      interceptor.intercept(request);
      expect(request.headers, isNot(contains(AWSHeaders.host)));
    });

    test(
      'WithContentLength does not set the Content-Length header on web',
      () async {
        const interceptor = WithContentLength();
        final request = AWSHttpRequest.post(
          Uri.https('example.com', '/'),
          body: 'hello'.codeUnits,
        );
        await interceptor.intercept(request);
        expect(request.headers, isNot(contains(AWSHeaders.contentLength)));
      },
    );
  });
}

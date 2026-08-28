// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works, and
/// that the signer takes its web-specific branch (`Host`/`Content-Length` are
/// signed but stripped from the sent headers, since browsers set them).
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    const signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(
        AWSCredentials('accessKeyId', 'secretAccessKey'),
      ),
    );
    final credentialScope = AWSCredentialScope(
      region: 'us-east-1',
      service: AWSService.iam,
    );

    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('signs a request and produces an Authorization header', () {
      final request = AWSHttpRequest.post(
        Uri.https('example.com', '/'),
        body: utf8.encode('hello'),
        headers: const {AWSHeaders.contentLength: '5'},
      );
      final signed = signer.signSync(request, credentialScope: credentialScope);
      expect(
        signed.headers[AWSHeaders.authorization],
        startsWith('AWS4-HMAC-SHA256'),
      );
    });

    test('signs Host/Content-Length but strips them from sent headers', () {
      final request = AWSHttpRequest.post(
        Uri.https('example.com', '/'),
        body: utf8.encode('hello'),
        headers: const {AWSHeaders.contentLength: '5'},
      );
      final signed = signer.signSync(request, credentialScope: credentialScope);
      final signedHeaders = CaseInsensitiveMap(
        signed.canonicalRequest.canonicalHeaders,
      );

      // Signed, so they are part of the signature.
      expect(signedHeaders, contains(AWSHeaders.host));
      expect(signedHeaders, contains(AWSHeaders.contentLength));
      // But not sent — the browser sets these automatically.
      expect(signed.headers, isNot(contains(AWSHeaders.host)));
      expect(signed.headers, isNot(contains(AWSHeaders.contentLength)));
    });
  });
}

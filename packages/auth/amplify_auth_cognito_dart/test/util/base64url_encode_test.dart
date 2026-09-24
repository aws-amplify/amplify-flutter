// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/util/base64url_encode.dart';
import 'package:test/test.dart';

void main() {
  group('base64UrlEncode', () {
    test('encodes bytes without padding', () {
      final bytes = utf8.encode('test');
      final encoded = base64UrlEncode(bytes);
      expect(encoded, 'dGVzdA');
      expect(encoded.contains('='), isFalse);
    });

    test('handles various byte lengths', () {
      // Length that would normally require 1 padding char
      final bytes1 = utf8.encode('ab');
      expect(base64UrlEncode(bytes1), 'YWI');
      expect(base64UrlEncode(bytes1).contains('='), isFalse);

      // Length that would normally require 2 padding chars
      final bytes2 = utf8.encode('a');
      expect(base64UrlEncode(bytes2), 'YQ');
      expect(base64UrlEncode(bytes2).contains('='), isFalse);
    });
  });

  group('base64UrlDecode', () {
    test('decodes base64url strings without padding', () {
      final decoded = base64UrlDecode('dGVzdA');
      expect(utf8.decode(decoded), 'test');
    });

    test('normalizes padding and decodes correctly', () {
      // Should handle strings that need padding normalization
      expect(utf8.decode(base64UrlDecode('YWI')), 'ab');
      expect(utf8.decode(base64UrlDecode('YQ')), 'a');
    });

    test('handles strings with padding already present', () {
      final decoded = base64UrlDecode('dGVzdA==');
      expect(utf8.decode(decoded), 'test');
    });
  });

  group('base64url round-trip', () {
    test('encode/decode round-trip preserves data', () {
      const original = 'Hello, WebAuthn World!';
      final bytes = utf8.encode(original);
      final encoded = base64UrlEncode(bytes);
      final decoded = base64UrlDecode(encoded);
      final result = utf8.decode(decoded);

      expect(result, original);
    });

    test('handles binary data', () {
      final bytes = List<int>.generate(256, (i) => i);
      final encoded = base64UrlEncode(bytes);
      final decoded = base64UrlDecode(encoded);

      expect(decoded, bytes);
    });
  });
}

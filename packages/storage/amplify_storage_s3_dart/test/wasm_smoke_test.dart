// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:convert';

import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

/// Smoke test: proves dart2wasm compilation + browser execution works.
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('plugin is constructable', () {
      expect(AmplifyStorageS3Dart(), isA<AmplifyStorageS3Dart>());
    });

    // A JSON `size` decodes to double under wasm, int under dart2js. Guards
    // the `.toInt()` coercion in S3Item.fromJson.
    test('S3Item decodes numeric size from a JSON string', () {
      const raw = '{"path":"public/a.txt","size":300000}';
      final item = S3Item.fromJson(jsonDecode(raw) as Map<String, Object?>);
      expect(item.path, 'public/a.txt');
      expect(item.size, 300000);
    });
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:typed_data';

import 'package:amplify_firehose_dart/amplify_firehose_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

/// A credentials provider returning fixed credentials. `record()` only caches
/// locally, so these are never used to sign a request.
class _StaticProvider implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async =>
      const StaticCredentials('akid', 'secret');
}

/// Smoke test: proves dart2wasm compilation + browser execution works, and
/// that `record()` reaches the web IndexedDB storage path (not the VM path).
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue);
    });

    test('record() caches on the web storage path', () async {
      final client = await AmplifyFirehoseClient.create(
        region: 'us-east-1',
        credentialsProvider: _StaticProvider(),
        storagePath: null,
      );
      addTearDown(client.close);
      await client.clearCache();

      final data = Uint8List.fromList([1, 2, 3]);
      final result = await client.record(data: data, streamName: 'stream-a');
      expect(result, isA<Ok<RecordData>>());
    });
  });
}

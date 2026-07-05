// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'package:amplify_secure_storage_dart/src/worker/secure_storage_action.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_request.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
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

    // On web the storage is backed by a worker, which exchanges
    // [SecureStorageRequest] payloads over `postMessage`. Those payloads are
    // serialized with `built_value`, so this guards that the worker
    // serializers round-trip correctly under dart2wasm — the same path that
    // dart2js exercises but with wasm's distinct type representations.
    test('worker request serializers round-trip', () {
      final request = SecureStorageRequest.write(key: 'key', value: 'value');
      final serialized = serializers.serialize(request);
      final deserialized = serializers.deserialize(serialized);
      expect(deserialized, request);
      expect(request.action, SecureStorageAction.write);
    });
  });
}

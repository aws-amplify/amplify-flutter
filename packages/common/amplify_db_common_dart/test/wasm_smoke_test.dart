// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:typed_data';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
// ignore: implementation_imports
import 'package:amplify_db_common_dart/src/connect_html.dart' show loadSqlite3;
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:drift/backends.dart';
import 'package:test/test.dart';

/// Smoke test: proves the web (`connect_html`) path compiles and runs under
/// dart2wasm.
///
/// The file name is also the `aft` opt-in marker for the dart2wasm test job.
/// A full drift open needs the `sqlite3.wasm` binary served over HTTP (see the
/// `// TODO: Run tests on web` in `main_test.dart`), which the `dart test`
/// harness doesn't provide — so that round-trip is verified in the example app.
/// Here we exercise the `dart:js_interop` bits that differ on wasm vs dart2js:
/// the HTTP `bodyBytes` cast and the WebAssembly magic-byte validation in
/// `loadSqlite3`.
///
/// Run with: dart test test/wasm_smoke_test.dart -p chrome -c dart2wasm
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue);
    });

    test('connect returns a lazy QueryExecutor without opening', () {
      // Construction must not touch sqlite3 yet (it's wrapped in a
      // LazyDatabase), so this succeeds even though sqlite3.wasm is unavailable.
      final executor = connect(name: 'SmokeDatabase', path: '/tmp');
      expect(executor, isA<QueryExecutor>());
    });

    test('loadSqlite3 returns the bytes of a valid wasm response', () async {
      // `\0asm` magic number followed by the version word.
      final wasmBytes = Uint8List.fromList([
        0x00, 0x61, 0x73, 0x6d, //
        0x01, 0x00, 0x00, 0x00,
      ]);
      final client = MockAWSHttpClient(
        (request, _) => AWSHttpResponse(statusCode: 200, body: wasmBytes),
      );
      // Round-trips the response through `dart:js_interop`: `bodyBytes` is cast
      // to `Uint8List` and each magic byte is compared — the conversions that
      // behave differently under wasm.
      final bytes = await loadSqlite3(client, AsyncMemoizer<Uint8List>());
      expect(bytes, wasmBytes);
    });

    test('loadSqlite3 throws on a non-wasm (HTML fallback) response', () async {
      final client = MockAWSHttpClient(
        (request, _) => AWSHttpResponse(
          statusCode: 200,
          body: Uint8List.fromList('<!DOCTYPE html>'.codeUnits),
        ),
      );
      expect(
        () => loadSqlite3(client, AsyncMemoizer<Uint8List>()),
        throwsA(isA<AWSHttpException>()),
      );
    });
  });
}

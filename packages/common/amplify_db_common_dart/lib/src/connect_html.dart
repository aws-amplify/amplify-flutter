// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:aws_common/web.dart';
import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:meta/meta.dart';
import 'package:sqlite3/wasm.dart';
import 'package:web/web.dart';

final _sqlite3Memo = AsyncMemoizer<Uint8List>();

const _loadSqlRecoveryMessage =
    'sqlite3.wasm needs to be included in your /web dir. '
    'See Amplify Platform Setup docs for more info: '
    'https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/';

/// {@macro amplify_db_common.connect}
QueryExecutor connect({
  required String name,
  FutureOr<String>? path,
  @visibleForTesting AWSHttpClient? client,
}) {
  return LazyDatabase(() async {
    final sqlite3Bytes = await loadSqlite3(client);
    final fs = await IndexedDbFileSystem.open(dbName: 'com.amplify.$name');
    final sqlite3 = await WasmSqlite3.load(sqlite3Bytes);
    sqlite3.registerVirtualFileSystem(fs, makeDefault: true);
    return WasmDatabase(
      sqlite3: sqlite3,
      fileSystem: fs,
      path: '/drift/$name.db',
    );
  });
}

/// Loads the sqlite.wasm file.
///
/// Available for testing only.
@visibleForTesting
Future<Uint8List> loadSqlite3([
  AWSHttpClient? client,
  AsyncMemoizer<Uint8List>? memo,
]) {
  return (memo ?? _sqlite3Memo).runOnce(() async {
    client ??= AWSHttpClient();
    final baseRef = getBaseElementHrefFromDom() ?? '/';
    final uri = Uri.parse('${window.location.origin}${baseRef}sqlite3.wasm');
    final request = AWSHttpRequest(method: AWSHttpMethod.get, uri: uri);
    try {
      final operation = client!.send(request);
      final response = await operation.response;
      final code = response.statusCode;
      if (code >= 300) {
        throw AWSHttpException(
          request,
          'Request to load sqlite3.wasm returned status code: $code.\n\n'
          '$_loadSqlRecoveryMessage',
        );
      }
      return (await response.bodyBytes) as Uint8List;
    } on Object catch (e) {
      if (e is AmplifyException) rethrow;
      throw AWSHttpException(
        request,
        'An unknown exception occurred loading sqlite3.wasm.\n\n'
        '$_loadSqlRecoveryMessage\n\n$e',
      );
    }
  });
}

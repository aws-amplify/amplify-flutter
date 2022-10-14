// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:html';

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:meta/meta.dart';
import 'package:sqlite3/wasm.dart';

final _sqlite3Memo = AsyncMemoizer<Uint8List>();

/// {@macro amplify_drift_util.connect}
QueryExecutor connect({
  required String name,
  String? path,
  @visibleForTesting AWSHttpClient? client,
}) {
  return LazyDatabase(() async {
    final sqlite3Bytes = await _loadSqlite3(client);
    final fs = await IndexedDbFileSystem.open(dbName: 'com.amplify.$name');
    final sqlite3 = await WasmSqlite3.load(
      sqlite3Bytes,
      SqliteEnvironment(fileSystem: fs),
    );
    return WasmDatabase(sqlite3: sqlite3, path: '/drift/$name.db');
  });
}

Future<Uint8List> _loadSqlite3([AWSHttpClient? client]) {
  return _sqlite3Memo.runOnce(() async {
    client ??= AWSHttpClient();
    final request = AWSHttpRequest(
      method: AWSHttpMethod.get,
      uri: Uri.parse('${window.location.origin}/sqlite3.wasm'),
    );
    try {
      final operation = client!.send(request);
      final response = await operation.response;
      final code = response.statusCode;
      if (code >= 400) {
        _handleSqliteLoadError(
          message: 'Request to load sqlite3.wasm returned status code: $code.',
        );
      }
      return response.bodyBytes as Uint8List;
    } on Object catch (e) {
      if (e is AmplifyException) rethrow;
      _handleSqliteLoadError(underlyingException: e);
    }
  });
}

Never _handleSqliteLoadError({
  String? message = 'An unknown exception occurred loading sqlite3.wasm.',
  Object? underlyingException,
}) {
  throw AmplifyException(
    '$message '
    'sqlite3.wasm needs to be included in your /web dir. '
    'See Amplify Platform Setup docs for more info: '
    'https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/',
    underlyingException: underlyingException,
  );
}

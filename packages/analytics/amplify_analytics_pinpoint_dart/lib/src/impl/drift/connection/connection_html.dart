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

import 'package:amplify_analytics_pinpoint_dart/src/impl/drift/drift_tables.dart';
import 'package:drift/web.dart';

import 'dart:async';
import 'dart:html';

import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/path_provider.dart';
import 'package:drift/drift.dart';
import 'package:drift/remote.dart';
import 'package:drift/web.dart';
import 'package:drift/wasm.dart';
import 'package:http/http.dart' as http;
import 'package:sqlite3/wasm.dart';

// Code adapted from:
// https://github.com/simolus3/drift/blob/develop/examples/app/lib/database/connection/web.dart

const _useWorker = true;

/// Obtains a database connection for running drift on the web.
DatabaseConnection connect(CachedEventsPathProvider? pathProvider,
    {bool isInWebWorker = false}) {
  if (_useWorker && !isInWebWorker) {
    final worker = SharedWorker('shared_worker.dart.js');
    return remote(worker.port!.channel());
  } else {
    return DatabaseConnection.delayed(Future.sync(() async {
      // We're using the experimental wasm support in Drift because this gives
      // us a recent sqlite3 version with fts5 support.
      // This is still experimental, so consider using the approach described in
      // https://drift.simonbinder.eu/web/ instead.

      final response = await http.get(Uri.parse('sqlite3.wasm'));
      final fs =
          await IndexedDbFileSystem.open(dbName: 'amplify_flutter_analytics');
      final sqlite3 = await WasmSqlite3.load(
        response.bodyBytes,
        SqliteEnvironment(fileSystem: fs),
      );

      final databaseImpl = WasmDatabase(sqlite3: sqlite3, path: 'app.db');
      return DatabaseConnection(databaseImpl);
    }));
  }
}

import 'dart:async';
import 'dart:html';

import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/path_provider.dart';
import 'package:drift/drift.dart';
import 'package:drift/remote.dart';
import 'package:drift/web.dart';
import 'package:drift/wasm.dart';
import 'package:http/http.dart' as http;
import 'package:sqlite3/wasm.dart';

// Code adapter from:
// https://github.com/simolus3/drift/blob/develop/examples/app/lib/database/connection/web.dart

const _useWorker = true;

/// Obtains a database connection for running drift on the web.
DatabaseConnection connect(
    {bool isInWebWorker = false, CachedEventsPathProvider? pathProvider}) {
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

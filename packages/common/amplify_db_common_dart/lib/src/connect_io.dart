// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:amplify_core/amplify_core.dart';
import 'package:drift/drift.dart';
import 'package:drift/isolate.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

/// {@macro amplify_db_common.connect}
///
/// Creates the executor in a new background isolate.
/// See [Using drift in a background isolate](https://drift.simonbinder.eu/docs/advanced-features/isolates/#initialization-on-the-main-thread)
/// and [the drift native example](https://github.com/simolus3/drift/blob/3253cd7ead51d7b163542929eb0fc8daee573fce/examples/app/lib/database/connection/native.dart)
/// for more info.
QueryExecutor connect({
  required String name,
  FutureOr<String>? path,
}) {
  assert(path != null, 'path cannot be null on vm.');

  return DatabaseConnection.delayed(
    Future.sync(() async {
      final resolvedPath = await path;
      if (resolvedPath == null || !Directory(resolvedPath).existsSync()) {
        throw ArgumentError('Invalid or non-existent path: $resolvedPath');
      }

      final dbPath = p.join(resolvedPath, 'com.amplify.$name.sqlite');
      safePrint('Spawning drift isolate with path: $dbPath');

      final receiveDriftIsolate = ReceivePort();
      await Isolate.spawn(
        _entrypointForDriftIsolate,
        _IsolateStartRequest(receiveDriftIsolate.sendPort, dbPath),
      );

      final driftIsolateOrError = await receiveDriftIsolate.first;

      if (driftIsolateOrError is IsolateSpawnException) {
        throw Exception(
          'Error in drift isolate: ${driftIsolateOrError.message}',
        );
      }

      if (driftIsolateOrError is! DriftIsolate) {
        throw Exception(
          'Unexpected type received from isolate: ${driftIsolateOrError.runtimeType}',
        );
      }

      final driftIsolate = driftIsolateOrError;
      return driftIsolate.connect();
    }),
  ).executor;
}

class _IsolateStartRequest {
  _IsolateStartRequest(this.talkToMain, this.databasePath);

  final SendPort talkToMain;
  final String databasePath;
}

void _entrypointForDriftIsolate(_IsolateStartRequest request) {
  final databaseImpl = NativeDatabase(File(request.databasePath));

  final driftServer = DriftIsolate.inCurrent(
    () => DatabaseConnection(databaseImpl),
  );

  request.talkToMain.send(driftServer);
}

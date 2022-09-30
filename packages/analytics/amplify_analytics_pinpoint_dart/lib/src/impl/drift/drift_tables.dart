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

import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/path_provider.dart';
import 'connection/connection.dart' as impl;

import 'package:drift/drift.dart';
part 'drift_tables.g.dart';

/// This file determines results of auto generated drift_tables.g.dart file on dart build
/// Whenever updating schema, increment schemaVersion field below
class DriftJsonStrings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get jsonString => text()();
}

@DriftDatabase(tables: [DriftJsonStrings])
class DriftDatabaseJsonStrings extends _$DriftDatabaseJsonStrings {
  DriftDatabaseJsonStrings(CachedEventsPathProvider? pathProvider)
      : super(impl.connect(pathProvider).executor);

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;

  Future<List<DriftJsonString>> get allJsonStrings =>
      select(driftJsonStrings).get();

  Future<List<DriftJsonString>> getJsonStrings(int maxToGet) {
    final statement = (select(driftJsonStrings)
      ..orderBy([(v) => OrderingTerm.asc(v.id)])
      ..limit(maxToGet));

    return statement.get();
  }

  Future<int> addJsonString(String jsonString) {
    return into(driftJsonStrings)
        .insert(DriftJsonStringsCompanion(jsonString: Value(jsonString)));
  }

  //
  Future<int> deleteJsonStrings(Iterable<int> idsToDelete) {
    final statement = delete(driftJsonStrings)
      ..where((t) => t.id.isIn(idsToDelete));
    return statement.go();
  }
}

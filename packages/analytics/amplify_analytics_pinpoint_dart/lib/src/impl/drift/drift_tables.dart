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

import 'package:drift/drift.dart';

part 'drift_tables.g.dart';

/// SQL schema of data stored in DriftDatabase
class DriftJsonStrings extends Table {
  /// Identifies object in the SQL database
  IntColumn get id => integer().autoIncrement()();

  /// The string value stored for this object
  TextColumn get jsonString => text()();
}

/// {@template amplify_analytics_pinpoint_dart.drift_database_json_strings}
/// Drift class for managing stored [DriftJsonStrings]
/// {@endtemplate}
@DriftDatabase(tables: [DriftJsonStrings])
class DriftDatabaseJsonStrings extends _$DriftDatabaseJsonStrings {
  /// {@macro amplify_analytics_pinpoint_dart.drift_database_json_strings}
  DriftDatabaseJsonStrings(super.driftQueryExecutor);

  static DriftDatabaseJsonStrings? _instance;

  /// {@macro amplify_analytics_pinpoint_dart.drift_database_json_strings}
  static DriftDatabaseJsonStrings getInstance(
    QueryExecutor driftQueryExecutor,
  ) {
    return _instance ??= DriftDatabaseJsonStrings(driftQueryExecutor);
  }

  // Reminder: Bump this number whenever you change or add a table definition.
  @override
  int get schemaVersion => 1;

  /// Retrieve all [DriftJsonString] stored in the database
  Future<List<DriftJsonString>> get allJsonStrings =>
      select(driftJsonStrings).get();

  /// Get [maxToGet] number of [DriftJsonString] from the database
  /// Returns oldest first
  Future<List<DriftJsonString>> getJsonStrings(int maxToGet) {
    final statement = (select(driftJsonStrings)
      ..orderBy([(v) => OrderingTerm.asc(v.id)])
      ..limit(maxToGet));

    return statement.get();
  }

  /// Add a new [DriftJsonString] to the database
  Future<int> addJsonString(String jsonString) {
    return into(driftJsonStrings)
        .insert(DriftJsonStringsCompanion(jsonString: Value(jsonString)));
  }

  /// Delete a [DriftJsonString] from the database
  Future<int> deleteJsonStrings(Iterable<int> idsToDelete) {
    final statement = delete(driftJsonStrings)
      ..where((t) => t.id.isIn(idsToDelete));
    return statement.go();
  }
}

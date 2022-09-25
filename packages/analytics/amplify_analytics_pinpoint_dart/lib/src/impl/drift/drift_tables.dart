import 'dart:collection';
import 'dart:io';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:drift/drift.dart';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'drift_tables.g.dart';

/// This file determines results of auto generated drift_tables.g.dart file on dart build
/// Whenever updating schema, increment schemaVersion field below
class DriftJsonStrings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get jsonString => text()();
}

@DriftDatabase(tables: [DriftJsonStrings])
class DriftDatabaseJsonStrings extends _$DriftDatabaseJsonStrings {
  DriftDatabaseJsonStrings(PathProvider? pathProvider)
      : super(_openConnection(pathProvider));

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

LazyDatabase _openConnection(PathProvider? pathProvider) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final dir = await pathProvider!.getApplicationSupportPath();
    final file = File(p.join(dir.path, 'db.sqlite'));

    // TODO - WEB?
    return NativeDatabase(file);
  });
}

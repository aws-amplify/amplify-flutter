import 'dart:io';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:drift/drift.dart';

import 'package:drift/native.dart';
// no web ...
// TODO - how find storage location on web?
//import 'package:path_provider/path_provider.dart';
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

  Future<List<DriftJsonString>> getJsonStrings(int maxToGet) {
    return (select(driftJsonStrings)..limit(maxToGet)).get();
  }

  Future<int> addJsonString(String jsonString) {
    return into(driftJsonStrings)
        .insert(DriftJsonStringsCompanion(jsonString: Value(jsonString)));
  }

  Future deleteOldestJsonString(int numToDelete) {
    var del = delete(driftJsonStrings);
    del.limitExpr = Limit(numToDelete, 0);
    return del.go(); //limitExpr(Limit(5))).go();
  }
}

LazyDatabase _openConnection(PathProvider? pathProvider) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.

    // FOR NATIVE (not web though ...)
    //final dbFolder = await getApplicationDocumentsDirectory();

    // TEMP TODO - define final cross platform storage location
    //final file = File(p.join(dbFolder.path, 'db.sqlite'));
    final dir = await pathProvider!.getApplicationSupportPath();

    final file = File(p.join(dir.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_db_common/amplify_db_common.dart';
import 'package:drift/drift.dart';

part 'db.g.dart';

@DriftDatabase(tables: [CountTable])
class AppDb extends _$AppDb {
  AppDb([QueryExecutor? executor]) : super(executor ?? connect(name: 'app'));

  @override
  int get schemaVersion => 1;

  Future<int> getLatestCount() async {
    final storedCount = await (select(countTable)
          ..orderBy([
            (countTable) => OrderingTerm.desc(countTable.id),
          ])
          ..limit(1))
        .getSingleOrNull();
    return storedCount?.count ?? 0;
  }

  Future<int> incrementCount() async {
    return transaction(() async {
      final count = await getLatestCount() + 1;
      await into(countTable).insert(
        CountTableCompanion.insert(count: count),
      );
      return count;
    });
  }

  Future<int> decrementCount() async {
    return transaction(() async {
      final count = await getLatestCount() - 1;
      await into(countTable).insert(
        CountTableCompanion.insert(count: count),
      );
      return count;
    });
  }
}

class CountTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get count => integer()();
}

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

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

// TODO(Jordan-Nelson): Run tests on web. This will require loading sqlite3.wasm
@TestOn('vm')

import 'package:amplify_drift_util/amplify_drift_util.dart';
import 'package:drift/drift.dart';
import 'package:test/test.dart';

// ignore: avoid_relative_lib_imports
import '../example/lib/database.dart';

void main() {
  group('drift utils', () {
    test('connect completes ', () async {
      expect(
        connect(name: 'TestDatabase', path: '/tmp').ensureOpen(
          TestQueryExecutorUser(),
        ),
        completes,
      );
    });

    test('can delete, insert, and query', () async {
      final db = MyDatabase();
      await db.delete(db.todos).go();
      await db.into(db.todos).insert(
            TodosCompanion.insert(
              title: 'New todo',
              content: 'todo content',
            ),
          );
      final items = await db.select(db.todos).get();
      expect(items.length, 1);
      expect(items[0].title, 'New todo');
    });
  });
}

class TestQueryExecutorUser implements QueryExecutorUser {
  @override
  Future<void> beforeOpen(
    QueryExecutor executor,
    OpeningDetails details,
  ) async {
    // do nothing
  }

  @override
  int get schemaVersion => 1;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(Jordan-Nelson): Run tests on web. This will require loading sqlite3.wasm
@TestOn('vm')

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:test/test.dart';

import 'database.dart';
import 'util.dart';

void main() {
  group('drift utils', () {
    test('connect completes', () async {
      expect(
        connect(name: 'TestDatabase', path: '/tmp').ensureOpen(
          TestQueryExecutorUser(),
        ),
        completes,
      );
    });

    test('connect completes with delayed path resolving', () async {
      expect(
        connect(name: 'TestDatabase', path: Future.value('/tmp')).ensureOpen(
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

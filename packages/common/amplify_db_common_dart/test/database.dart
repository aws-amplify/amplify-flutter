// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// The example below is taken from https://drift.simonbinder.eu/docs/getting-started/

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'database.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  IntColumn get category => integer().nullable()();
}

@DataClassName('Category')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}

@DriftDatabase(tables: [Todos, Categories])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(connect(name: 'MyDatabase', path: '/tmp'));

  @override
  int get schemaVersion => 1;
}

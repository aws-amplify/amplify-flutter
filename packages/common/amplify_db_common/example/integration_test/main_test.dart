// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_db_common/amplify_db_common.dart';
import 'package:amplify_db_common_example/db.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Counter', () {
    late AppDb db;

    setUp(() async {
      db = AppDb(connect(name: 'app_test'));
    });

    tearDown(() async {
      await db.delete(db.countTable).go();
      await db.close();
    });

    testWidgets('can decrement', (_) async {
      expect(await db.getLatestCount(), 0);
      await Future.wait<void>([
        for (var i = 0; i < 10; i++) db.decrementCount(),
      ]);
      expect(await db.getLatestCount(), -10);
    });

    testWidgets('can increment', (_) async {
      expect(await db.getLatestCount(), 0);
      await Future.wait<void>([
        for (var i = 0; i < 10; i++) db.incrementCount(),
      ]);
      expect(await db.getLatestCount(), 10);
    });
  });
}

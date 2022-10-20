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

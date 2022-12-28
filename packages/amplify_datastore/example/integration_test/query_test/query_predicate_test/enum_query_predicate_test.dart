// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'type enum',
    () {
      setUp(() async {
        await configureDataStore();
        await clearDataStore();
      });

      testWidgets('eq()', (WidgetTester tester) async {
        var models = [
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.yes),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with all matches
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.eq(EnumField.yes),
          expectedModels: models,
        );

        // test with no matches
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.eq(EnumField.no),
          expectedModels: [],
        );
      });

      testWidgets('eq() (with partial matches)', (WidgetTester tester) async {
        var models = [
          ModelWithEnum(enumField: EnumField.no),
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.no),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with partial matches for EnumField.yes
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.eq(EnumField.yes),
          expectedModels: models
              .where((element) => element.enumField == EnumField.yes)
              .toList(),
        );

        // test with partial matches for EnumField.no
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.eq(EnumField.no),
          expectedModels: models
              .where((element) => element.enumField == EnumField.no)
              .toList(),
        );
      });

      testWidgets('ne()', (WidgetTester tester) async {
        var models = [
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.yes),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with all matches
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.ne(EnumField.no),
          expectedModels: models,
        );

        // test with no matches
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.ne(EnumField.yes),
          expectedModels: [],
        );
      });

      testWidgets('ne() (with partial matches)', (WidgetTester tester) async {
        var models = [
          ModelWithEnum(enumField: EnumField.no),
          ModelWithEnum(enumField: EnumField.yes),
          ModelWithEnum(enumField: EnumField.no),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with partial matches for EnumField.yes
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.ne(EnumField.yes),
          expectedModels: models
              .where((element) => element.enumField == EnumField.no)
              .toList(),
        );

        // test with partial matches for EnumField.no
        await testQueryPredicate<ModelWithEnum>(
          queryPredicate: ModelWithEnum.ENUMFIELD.ne(EnumField.no),
          expectedModels: models
              .where((element) => element.enumField == EnumField.yes)
              .toList(),
        );
      });
    },
  );
}

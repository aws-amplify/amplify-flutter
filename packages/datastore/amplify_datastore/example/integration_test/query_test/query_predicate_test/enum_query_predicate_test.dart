/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

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

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
    'type bool',
    () {
      setUp(() async {
        await configureDataStore();
        await clearDataStore();
      });

      testWidgets('eq()', (WidgetTester tester) async {
        var models = [
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: true),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with all matches
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.eq(true),
          expectedModels: models,
        );

        // test with no matches
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.eq(false),
          expectedModels: [],
        );
      });

      testWidgets('eq() (with partial matches)', (WidgetTester tester) async {
        var models = [
          ModelWithAppsyncScalarTypes(booleanValue: false),
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: false),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with partial matches for true
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.eq(true),
          expectedModels:
              models.where((element) => element.booleanValue!).toList(),
        );

        // test with no matches for false
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.eq(false),
          expectedModels:
              models.where((element) => !element.booleanValue!).toList(),
        );
      });

      testWidgets('ne()', (WidgetTester tester) async {
        var models = [
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: true),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with all matches
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.ne(false),
          expectedModels: models,
        );

        // test with no matches
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.ne(true),
          expectedModels: [],
        );
      });

      testWidgets('ne() (with partial matches)', (WidgetTester tester) async {
        var models = [
          ModelWithAppsyncScalarTypes(booleanValue: false),
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(booleanValue: false),
        ];

        for (var model in models) {
          await Amplify.DataStore.save(model);
        }

        // test with partial matches for true
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.ne(true),
          expectedModels:
              models.where((element) => !element.booleanValue!).toList(),
        );

        // test with partial matches for false
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.BOOLEANVALUE.ne(false),
          expectedModels:
              models.where((element) => element.booleanValue!).toList(),
        );
      });
    },
    // see: https://github.com/aws-amplify/amplify-flutter/issues/752
    skip: true,
  );
}

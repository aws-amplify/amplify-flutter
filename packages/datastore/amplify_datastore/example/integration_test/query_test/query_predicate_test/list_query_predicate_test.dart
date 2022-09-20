/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  group('type List<String>', () {
    // models used for all tests
    final models = [
      ModelWithAppsyncScalarTypes(listOfStringValue: ['foo']),
      ModelWithAppsyncScalarTypes(listOfStringValue: ['foo', 'bar']),
      ModelWithAppsyncScalarTypes(listOfStringValue: ['abc']),
      ModelWithAppsyncScalarTypes(listOfStringValue: ['abc', 'foo', 'bar']),
      ModelWithAppsyncScalarTypes(listOfStringValue: []),
    ];

    // distinct list of values in the test models
    final listOfStringValues =
        models.map((e) => e.listOfStringValue).toSet().toList();

    setUpAll(() async {
      await configureDataStore();
      await clearDataStore();
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // a list of unique values across all the lists
      final values = listOfStringValues
          .whereType<List<String>>()
          .expand((el) => el)
          .toSet()
          .toList();

      // test against each value
      for (var value in values) {
        final exactMatchModels = models
            .where((model) => model.listOfStringValue!.contains(value))
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate:
              ModelWithAppsyncScalarTypes.LISTOFSTRINGVALUE.contains(value),
          expectedModels: exactMatchModels,
        );
      }

      // test against a non existing value
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.LISTOFSTRINGVALUE.contains('foobar'),
        expectedModels: [],
      );
    });
  });
}

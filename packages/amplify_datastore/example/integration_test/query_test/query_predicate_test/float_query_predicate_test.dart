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

import 'dart:math';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type double', () {
    // models used for all tests
    var models = [
      ModelWithAppsyncScalarTypes(floatValue: -10.0),
      ModelWithAppsyncScalarTypes(floatValue: -1.0),
      ModelWithAppsyncScalarTypes(floatValue: 0.0),
      ModelWithAppsyncScalarTypes(floatValue: 0.1),
      ModelWithAppsyncScalarTypes(floatValue: 2.1),
      ModelWithAppsyncScalarTypes(floatValue: 1000.0),
      ModelWithAppsyncScalarTypes(floatValue: 999999999.0),
      ModelWithAppsyncScalarTypes(floatValue: -999999999.0),
      ModelWithAppsyncScalarTypes(floatValue: pi),
      ModelWithAppsyncScalarTypes(),
    ];

    // a value that will return 1 or 0 when compared to each test value
    var maxDoubleValue = 999999999.0;

    // a that will return 0 or -1 when compared to each test value
    var minDoubleValue = -999999999.0;

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.floatValue != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.floatValue).toSet().toList();

    // distinct list of non-null values in the test models
    var nonNullValues = values.whereType<double>().toList();

    setUpAll(() async {
      await configureDataStore();
      await clearDataStore();
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
    });

    testWidgets('eq()', (WidgetTester tester) async {
      // test against all values
      for (var value in nonNullValues) {
        var expectedModels =
            models.where((model) => model.floatValue == value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.eq(123.123),
        expectedModels: [],
      );
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in nonNullValues) {
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        var expectedModels =
            nonNullModels.where((model) => model.floatValue != value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.ne(123.123),
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        expectedModels: nonNullModels,
      );
    });

    testWidgets(
      'lt()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = nonNullModels
              .where((model) => model.floatValue! < value)
              .toList();
          await testQueryPredicate<ModelWithAppsyncScalarTypes>(
            queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.lt(value),
            expectedModels: expectedModels,
          );
        }

        // test with no matches
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate:
              ModelWithAppsyncScalarTypes.FLOATVALUE.lt(minDoubleValue),
          expectedModels: [],
        );
      },
    );

    testWidgets(
      'le()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = nonNullModels
              .where((model) => model.floatValue! <= value)
              .toList();
          await testQueryPredicate<ModelWithAppsyncScalarTypes>(
            queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.le(value),
            expectedModels: expectedModels,
          );
        }

        // test with match all models
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate:
              ModelWithAppsyncScalarTypes.FLOATVALUE.le(maxDoubleValue),
          expectedModels: nonNullModels,
        );
      },
    );

    testWidgets(
      'gt()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = nonNullModels
              .where((model) => model.floatValue! > value)
              .toList();
          await testQueryPredicate<ModelWithAppsyncScalarTypes>(
            queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.gt(value),
            expectedModels: expectedModels,
          );
        }

        // test with match all models
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate:
              ModelWithAppsyncScalarTypes.FLOATVALUE.gt(maxDoubleValue),
          expectedModels: [],
        );
      },
    );

    testWidgets(
      'ge()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = nonNullModels
              .where((model) => model.floatValue! >= value)
              .toList();
          await testQueryPredicate<ModelWithAppsyncScalarTypes>(
            queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE.ge(value),
            expectedModels: expectedModels,
          );
        }

        // test with match all models
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate:
              ModelWithAppsyncScalarTypes.FLOATVALUE.ge(minDoubleValue),
          expectedModels: nonNullModels,
        );
      },
    );

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000.0';
      var exactMatchModels = nonNullModels
          .where((model) =>
              model.floatValue!.toString().startsWith(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
            .beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '10';
      var partialMatchModels = nonNullModels
          .where((model) =>
              model.floatValue!.toString().startsWith(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
            .beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123.123';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.FLOATVALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000.0';
      var exactMatchModels = nonNullModels
          .where((model) =>
              model.floatValue!.toString().contains(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.FLOATVALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '10';
      var partialMatchModels = nonNullModels
          .where((model) =>
              model.floatValue!.toString().contains(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
            .contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123.123';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.FLOATVALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets(
      'bewtween()',
      (WidgetTester tester) async {
        // test with exact match
        var exactMatchPattern = 1000.0;
        var exactMatchModels = models
            .where((model) => model.floatValue == exactMatchPattern)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
              .between(exactMatchPattern, exactMatchPattern),
          expectedModels: exactMatchModels,
        );

        // test with partial match
        var partialMatchStart = -1.0;
        var partialMatchEnd = 1.0;
        var rangeMatchModels = nonNullModels
            .where((model) => model.floatValue! >= partialMatchStart)
            .where((model) => model.floatValue! <= partialMatchEnd)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
              .between(partialMatchStart, partialMatchEnd),
          expectedModels: rangeMatchModels,
        );

        // test with no match
        var noMatchStart = 1000000.0;
        var noMatchEnd = 1000000.1;
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.FLOATVALUE
              .between(noMatchStart, noMatchEnd),
          expectedModels: [],
        );
      },
    );
  });
}

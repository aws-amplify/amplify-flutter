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
import 'package:amplify_flutter/amplify.dart';

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type double', () {
    late List<DoubleTypeModel> models;
    late List<double?> values;
    late List<double> nonNullValues;

    setUpAll(() async {
      await configureDataStore();
      await Amplify.DataStore.clear();

      models = [
        DoubleTypeModel(value: -10.0),
        DoubleTypeModel(value: -1.0),
        DoubleTypeModel(value: 0.0),
        DoubleTypeModel(value: 0.1),
        DoubleTypeModel(value: 2.1),
        DoubleTypeModel(value: 1000.0),
        // a model with a null is excluded since queries will
        // not return models with null when a query predicate is used
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        //
        // DoubleTypeModel(),
      ];

      values = models.map((e) => e.value).toSet().toList();

      nonNullValues = values.whereType<double>().toList();

      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
    });

    testWidgets('eq()', (WidgetTester tester) async {
      // test against all values
      //
      // currently, querying with null is not supported
      // see: https://github.com/aws-amplify/amplify-flutter/issues/511
      for (var value in nonNullValues) {
        var expectedModels =
            models.where((model) => model.value == value).toList();
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.eq(123.123),
        expectedModels: [],
      );
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      //
      // currently, querying with null is not supported
      // see: https://github.com/aws-amplify/amplify-flutter/issues/511
      for (var value in nonNullValues) {
        var expectedModels =
            models.where((model) => model.value != value).toList();
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.ne(123.123),
        expectedModels: models,
      );
    });

    testWidgets(
      'lt()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = models
              .where((element) => element.value != null)
              .where((model) => model.value!.compareTo(value) < 0)
              .toList();
          await testDoubleQueryPredicate(
            queryPredicate: DoubleTypeModel.VALUE.lt(value),
            expectedModels: expectedModels,
          );
        }

        // test with no matches
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.lt(-1000000.1),
          expectedModels: [],
        );

        // test with match all models
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.lt(1000000.1),
          expectedModels: models,
        );
      },
      // see: https://github.com/aws-amplify/amplify-flutter/issues/830
      skip: true,
    );

    testWidgets(
      'le()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = models
              .where((element) => element.value != null)
              .where((model) => model.value!.compareTo(value) <= 0)
              .toList();
          await testDoubleQueryPredicate(
            queryPredicate: DoubleTypeModel.VALUE.le(value),
            expectedModels: expectedModels,
          );
        }

        // test with no matches
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.le(-1000000.1),
          expectedModels: [],
        );

        // test with match all models
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.le(1000000.1),
          expectedModels: models,
        );
      },
      // see: https://github.com/aws-amplify/amplify-flutter/issues/830
      skip: true,
    );

    testWidgets(
      'gt()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = models
              .where((element) => element.value != null)
              .where((model) => model.value!.compareTo(value) > 0)
              .toList();
          await testDoubleQueryPredicate(
            queryPredicate: DoubleTypeModel.VALUE.gt(value),
            expectedModels: expectedModels,
          );
        }

        // test with no matches
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.gt(1000000.1),
          expectedModels: [],
        );

        // test with match all models
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.gt(-1000000.1),
          expectedModels: models,
        );
      },
      // see: https://github.com/aws-amplify/amplify-flutter/issues/830
      skip: true,
    );

    testWidgets(
      'ge()',
      (WidgetTester tester) async {
        // test against all (non-null) values
        for (var value in nonNullValues) {
          var expectedModels = models
              .where((element) => element.value != null)
              .where((model) => model.value!.compareTo(value) >= 0)
              .toList();
          await testDoubleQueryPredicate(
            queryPredicate: DoubleTypeModel.VALUE.ge(value),
            expectedModels: expectedModels,
          );
        }

        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.ge(1000000.1),
          expectedModels: [],
        );

        // test with match all models
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE.ge(-1000000.1),
          expectedModels: models,
        );
      },
      // see: https://github.com/aws-amplify/amplify-flutter/issues/830
      skip: true,
    );

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000.0';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where(
              (model) => model.value!.toString().startsWith(exactMatchPattern))
          .toList();
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '10';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where((model) =>
              model.value!.toString().startsWith(partialMatchPattern))
          .toList();
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123.123';
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000.0';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.toString().contains(exactMatchPattern))
          .toList();
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '0';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where(
              (model) => model.value!.toString().contains(partialMatchPattern))
          .toList();
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123.123';
      await testDoubleQueryPredicate(
        queryPredicate: DoubleTypeModel.VALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets(
      'bewtween()',
      (WidgetTester tester) async {
        // test with exact match
        var exactMatchPattern = 1000.0;
        var exactMatchModels =
            models.where((model) => model.value == exactMatchPattern).toList();
        await testDoubleQueryPredicate(
          queryPredicate: DoubleTypeModel.VALUE
              .between(exactMatchPattern, exactMatchPattern),
          expectedModels: exactMatchModels,
        );

        // test with partial match
        var partialMatchStart = -1.0;
        var partialMatchEnd = 1.0;
        var rangeMatchModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(partialMatchStart) >= 0)
            .where((model) => model.value!.compareTo(partialMatchEnd) <= 0)
            .toList();
        await testDoubleQueryPredicate(
          queryPredicate:
              DoubleTypeModel.VALUE.between(partialMatchStart, partialMatchEnd),
          expectedModels: rangeMatchModels,
        );

        // test with no match
        var noMatchStart = 1000000.0;
        var noMatchEnd = 2000000.0;
        await testDoubleQueryPredicate(
          queryPredicate:
              DoubleTypeModel.VALUE.between(noMatchStart, noMatchEnd),
          expectedModels: [],
        );
      },
      // // see: https://github.com/aws-amplify/amplify-flutter/issues/830
      skip: true,
    );
  });
}

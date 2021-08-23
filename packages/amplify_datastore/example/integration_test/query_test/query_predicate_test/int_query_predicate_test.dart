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

  group('type int', () {
    late List<IntTypeModel> models;
    late List<int?> values;
    late List<int> nonNullValues;

    setUpAll(() async {
      await configureDataStore();
      await Amplify.DataStore.clear();

      models = [
        IntTypeModel(value: 0),
        IntTypeModel(value: 1),
        IntTypeModel(value: 2),
        IntTypeModel(value: -1),
        IntTypeModel(value: -10),
        IntTypeModel(value: 1000),
        // a model with a null is excluded since queries will
        // not return models with null when a query predicate is used
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        //
        // IntTypeModel(),
      ];

      values = models.map((e) => e.value).toSet().toList();

      nonNullValues = values.whereType<int>().toList();

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
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.eq(123),
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
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.ne(123),
        expectedModels: models,
      );
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(value) < 0)
            .toList();
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.lt(-1000000),
        expectedModels: [],
      );

      // test with match all models
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.lt(1000000),
        expectedModels: models,
      );
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(value) <= 0)
            .toList();
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.le(-1000000),
        expectedModels: [],
      );

      // test with match all models
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.le(1000000),
        expectedModels: models,
      );
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(value) > 0)
            .toList();
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.gt(1000000),
        expectedModels: [],
      );

      // test with match all models
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.gt(-1000000),
        expectedModels: models,
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(value) >= 0)
            .toList();
        await testIntQueryPredicate(
          queryPredicate: IntTypeModel.VALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.ge(1000000),
        expectedModels: [],
      );

      // test with match all models
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.ge(-1000000),
        expectedModels: models,
      );
    });

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where(
              (model) => model.value!.toString().startsWith(exactMatchPattern))
          .toList();
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '10';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where((model) =>
              model.value!.toString().startsWith(partialMatchPattern))
          .toList();
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123';
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.toString().contains(exactMatchPattern))
          .toList();
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '0';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where(
              (model) => model.value!.toString().contains(partialMatchPattern))
          .toList();
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123';
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 1000;
      var exactMatchModels =
          models.where((model) => model.value == exactMatchPattern).toList();
      await testIntQueryPredicate(
        queryPredicate:
            IntTypeModel.VALUE.between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = -1;
      var partialMatchEnd = 1;
      var rangeMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.value!.compareTo(partialMatchEnd) <= 0)
          .toList();
      await testIntQueryPredicate(
        queryPredicate:
            IntTypeModel.VALUE.between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 1000000;
      var noMatchEnd = 2000000;
      await testIntQueryPredicate(
        queryPredicate: IntTypeModel.VALUE.between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

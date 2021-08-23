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

  group('type String', () {
    late List<StringTypeModel> models;
    late List<String?> values;
    late List<String> nonNullValues;

    setUpAll(() async {
      await configureDataStore();
      await Amplify.DataStore.clear();

      models = [
        StringTypeModel(value: 'foo'),
        StringTypeModel(value: 'bar'),
        StringTypeModel(value: 'foo'),
        StringTypeModel(value: 'bar'),
        StringTypeModel(value: 'abcd'),
        StringTypeModel(value: 'abce'),
        StringTypeModel(value: 'abcf'),
        StringTypeModel(value: ''),
        // a model with a null is excluded since queries will
        // not return models with null when a query predicate is used
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        //
        // StringTypeModel(),
      ];

      values = models.map((e) => e.value).toSet().toList();

      nonNullValues = values.whereType<String>().toList();

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
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.eq('no match'),
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
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.ne('no match'),
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
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.lt(''),
        expectedModels: [],
      );

      // test with match all models
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.lt('zzz'),
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
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.le('zzz'),
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
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.gt('zzz'),
        expectedModels: [],
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = models
            .where((element) => element.value != null)
            .where((model) => model.value!.compareTo(value) >= 0)
            .toList();
        await testStringQueryPredicate(
          queryPredicate: StringTypeModel.VALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.ge('zzz'),
        expectedModels: [],
      );

      // test with match all models
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.ge(''),
        expectedModels: models,
      );
    });

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.startsWith(exactMatchPattern))
          .toList();
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'a';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.startsWith(partialMatchPattern))
          .toList();
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.contains(exactMatchPattern))
          .toList();
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'bc';
      var partialMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.contains(partialMatchPattern))
          .toList();
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels =
          models.where((model) => model.value == exactMatchPattern).toList();
      await testStringQueryPredicate(
        queryPredicate:
            StringTypeModel.VALUE.between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = 'abcd';
      var partialMatchEnd = 'abcf';
      var rangeMatchModels = models
          .where((element) => element.value != null)
          .where((model) => model.value!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.value!.compareTo(partialMatchEnd) <= 0)
          .toList();
      await testStringQueryPredicate(
        queryPredicate:
            StringTypeModel.VALUE.between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 'foobar';
      var noMatchEnd = 'foobuzz';
      await testStringQueryPredicate(
        queryPredicate: StringTypeModel.VALUE.between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

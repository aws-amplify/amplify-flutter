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
    // models used for all tests
    var models = [
      StringTypeModel(value: 'foo'),
      StringTypeModel(value: 'bar'),
      StringTypeModel(value: 'foo'),
      StringTypeModel(value: 'bar'),
      StringTypeModel(value: 'abcd'),
      StringTypeModel(value: 'abce'),
      StringTypeModel(value: 'abcf'),
      StringTypeModel(value: '!@#^&*()'),
      StringTypeModel(value: '\u{1F601}'),
      StringTypeModel(value: ''),
      StringTypeModel(),
    ];

    // a string value that will return 1 when compared to each test value
    var maxStringValue = '\u{FFFFF}';

    // a string that will return 0 or -1 when compared to each test value
    var minStringValue = '';

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.value != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.value).toSet().toList();

    // distinct list of non-null values in the test models
    var nonNullValues = values.whereType<String>().toList();

    setUpAll(() async {
      await configureDataStore();
      await clearDataStore();
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
    });
    testWidgets('eq()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels =
            models.where((model) => model.value == value).toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.eq('no match'),
        expectedModels: [],
      );
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        var expectedModels =
            nonNullModels.where((model) => model.value != value).toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.ne('no match'),
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        expectedModels: nonNullModels,
      );
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) < 0)
            .toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.lt(minStringValue),
        expectedModels: [],
      );

      // test with match all models
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.lt(maxStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) <= 0)
            .toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.le(maxStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) > 0)
            .toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.gt(maxStringValue),
        expectedModels: [],
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) >= 0)
            .toList();
        await testQueryPredicate<StringTypeModel>(
          queryPredicate: StringTypeModel.VALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.ge(maxStringValue),
        expectedModels: [],
      );

      // test with match all models
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.ge(minStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = nonNullModels
          .where((model) => model.value!.startsWith(exactMatchPattern))
          .toList();
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'a';
      var partialMatchModels = nonNullModels
          .where((model) => model.value!.startsWith(partialMatchPattern))
          .toList();
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = nonNullModels
          .where((model) => model.value!.contains(exactMatchPattern))
          .toList();
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'bc';
      var partialMatchModels = nonNullModels
          .where((model) => model.value!.contains(partialMatchPattern))
          .toList();
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels =
          models.where((model) => model.value == exactMatchPattern).toList();
      await testQueryPredicate<StringTypeModel>(
        queryPredicate:
            StringTypeModel.VALUE.between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = 'abcd';
      var partialMatchEnd = 'abcf';
      var rangeMatchModels = nonNullModels
          .where((model) => model.value!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.value!.compareTo(partialMatchEnd) <= 0)
          .toList();
      // verify that the test is testing a partial match
      expect(rangeMatchModels.length, greaterThanOrEqualTo(1));
      await testQueryPredicate<StringTypeModel>(
        queryPredicate:
            StringTypeModel.VALUE.between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 'foobar';
      var noMatchEnd = 'foobuzz';
      await testQueryPredicate<StringTypeModel>(
        queryPredicate: StringTypeModel.VALUE.between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

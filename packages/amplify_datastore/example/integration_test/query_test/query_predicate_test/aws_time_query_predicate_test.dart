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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type AWS Time', () {
    // models used for all tests
    var models = [
      TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1))),
      TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 2))),
      TimeTypeModel(value: TemporalTime(DateTime(2020, 2, 1))),
    ];

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.value != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.value).toSet().toList();

    // distinct list of non-null values in the test models
    var nonNullValues = values.whereType<TemporalTime>().toList();

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
            models.where((model) => model.value == value).toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.eq(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.value != value).toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.ne(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) < 0)
            .toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.lt(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) <= 0)
            .toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.le(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) > 0)
            .toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.gt(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.value!.compareTo(value) >= 0)
            .toList();
        await testQueryPredicate<TimeTypeModel>(
          queryPredicate: TimeTypeModel.VALUE.ge(value.getDateTime()),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('between()', (WidgetTester tester) async {
      // test with partial match
      var partialMatchStart = models[1].value!;
      var partialMatchEnd = models[2].value!;
      var rangeMatchModels = nonNullModels
          .where((model) => model.value!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.value!.compareTo(partialMatchEnd) <= 0)
          .toList();
      // verify that the test is testing a partial match
      expect(rangeMatchModels.length, greaterThanOrEqualTo(1));
      await testQueryPredicate<TimeTypeModel>(
        queryPredicate: TimeTypeModel.VALUE.between(
            partialMatchStart.getDateTime(), partialMatchEnd.getDateTime()),
        expectedModels: rangeMatchModels,
      );
    });
  });
}

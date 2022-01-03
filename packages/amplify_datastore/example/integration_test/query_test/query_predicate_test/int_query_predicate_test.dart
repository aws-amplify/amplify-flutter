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

import '../../utils/constants.dart';
import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type int', () {
    // models used for all tests
    var models = [
      IntTypeModel(value: -10),
      IntTypeModel(value: -1),
      IntTypeModel(value: 0),
      IntTypeModel(value: 1),
      IntTypeModel(value: 2),
      IntTypeModel(value: 1000),
      IntTypeModel(value: dataStoreMaxInt),
      IntTypeModel(value: dataStoreMinInt),
      IntTypeModel(),
    ];

    // a value that will return 1 or 0 when compared to each test value
    var maxIntValue = dataStoreMaxInt;

    // a that will return 0 or -1 when compared to each test value
    var minIntleValue = dataStoreMinInt;

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.value != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.value).toSet().toList();

    // distinct list of non-null values in the test models
    var nonNullValues = values.whereType<int>().toList();

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
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.eq(123),
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
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.ne(123),
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        expectedModels: nonNullModels,
      );
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.value! < value).toList();
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.lt(minIntleValue),
        expectedModels: [],
      );
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.value! <= value).toList();
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.le(maxIntValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.value! > value).toList();
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.gt(maxIntValue),
        expectedModels: [],
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.value! >= value).toList();
        await testQueryPredicate<IntTypeModel>(
          queryPredicate: IntTypeModel.VALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.ge(minIntleValue),
        expectedModels: nonNullModels,
      );
    });

    // TODO: Should this use can be supported? It would be a breaking change to remove this support

    // testWidgets('beginsWith()', (WidgetTester tester) async {
    //   // test with exact match
    //   var exactMatchPattern = '1000';
    //   var exactMatchModels = nonNullModels
    //       .where(
    //           (model) => model.value!.toString().startsWith(exactMatchPattern))
    //       .toList();
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.beginsWith(exactMatchPattern),
    //     expectedModels: exactMatchModels,
    //   );

    //   // test with partial match
    //   var partialMatchPattern = '10';
    //   var partialMatchModels = nonNullModels
    //       .where((model) =>
    //           model.value!.toString().startsWith(partialMatchPattern))
    //       .toList();
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.beginsWith(partialMatchPattern),
    //     expectedModels: partialMatchModels,
    //   );

    //   // test with no match
    //   var noMatchPattern = '123';
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.beginsWith(noMatchPattern),
    //     expectedModels: [],
    //   );
    // });

    // testWidgets('contains()', (WidgetTester tester) async {
    //   // test with exact match
    //   var exactMatchPattern = '1000';
    //   var exactMatchModels = nonNullModels
    //       .where((model) => model.value!.toString().contains(exactMatchPattern))
    //       .toList();
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.contains(exactMatchPattern),
    //     expectedModels: exactMatchModels,
    //   );

    //   // test with partial match
    //   var partialMatchPattern = '0';
    //   var partialMatchModels = nonNullModels
    //       .where(
    //           (model) => model.value!.toString().contains(partialMatchPattern))
    //       .toList();
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.contains(partialMatchPattern),
    //     expectedModels: partialMatchModels,
    //   );

    //   // test with no match
    //   var noMatchPattern = '123';
    //   await testQueryPredicate<IntTypeModel>(
    //     queryPredicate: IntTypeModel.VALUE.contains(noMatchPattern),
    //     expectedModels: [],
    //   );
    // });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 1000;
      var exactMatchModels =
          models.where((model) => model.value == exactMatchPattern).toList();
      await testQueryPredicate<IntTypeModel>(
        queryPredicate:
            IntTypeModel.VALUE.between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = -1;
      var partialMatchEnd = 1;
      var rangeMatchModels = nonNullModels
          .where((model) => model.value! >= partialMatchStart)
          .where((model) => model.value! <= partialMatchEnd)
          .toList();
      await testQueryPredicate<IntTypeModel>(
        queryPredicate:
            IntTypeModel.VALUE.between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 100000;
      var noMatchEnd = 100001;
      await testQueryPredicate<IntTypeModel>(
        queryPredicate: IntTypeModel.VALUE.between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

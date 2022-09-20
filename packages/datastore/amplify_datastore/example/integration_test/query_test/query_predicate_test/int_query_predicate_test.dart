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

import '../../utils/constants.dart';
import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type int', () {
    // models used for all tests
    var models = [
      ModelWithAppsyncScalarTypes(intValue: -10),
      ModelWithAppsyncScalarTypes(intValue: -1),
      ModelWithAppsyncScalarTypes(intValue: 0),
      ModelWithAppsyncScalarTypes(intValue: 1),
      ModelWithAppsyncScalarTypes(intValue: 2),
      ModelWithAppsyncScalarTypes(intValue: 1000),
      ModelWithAppsyncScalarTypes(intValue: dataStoreMaxInt),
      ModelWithAppsyncScalarTypes(intValue: dataStoreMinInt),
      ModelWithAppsyncScalarTypes(),
    ];

    // a value that will return 1 or 0 when compared to each test value
    var maxIntValue = dataStoreMaxInt;

    // a that will return 0 or -1 when compared to each test value
    var minIntleValue = dataStoreMinInt;

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.intValue != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.intValue).toSet().toList();

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
            models.where((model) => model.intValue == value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.eq(123),
        expectedModels: [],
      );
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        var expectedModels =
            nonNullModels.where((model) => model.intValue != value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.ne(123),
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        expectedModels: nonNullModels,
      );
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.intValue! < value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.lt(minIntleValue),
        expectedModels: [],
      );
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.intValue! <= value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.le(maxIntValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.intValue! > value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.gt(maxIntValue),
        expectedModels: [],
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels =
            nonNullModels.where((model) => model.intValue! >= value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE.ge(minIntleValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000';
      var exactMatchModels = nonNullModels
          .where((model) =>
              model.intValue!.toString().startsWith(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.INTVALUE.beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '10';
      var partialMatchModels = nonNullModels
          .where((model) =>
              model.intValue!.toString().startsWith(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE
            .beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.INTVALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = '1000';
      var exactMatchModels = nonNullModels
          .where(
              (model) => model.intValue!.toString().contains(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.INTVALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = '0';
      var partialMatchModels = nonNullModels
          .where((model) =>
              model.intValue!.toString().contains(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.INTVALUE.contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = '123';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.INTVALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 1000;
      var exactMatchModels =
          models.where((model) => model.intValue == exactMatchPattern).toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE
            .between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = -1;
      var partialMatchEnd = 1;
      var rangeMatchModels = nonNullModels
          .where((model) => model.intValue! >= partialMatchStart)
          .where((model) => model.intValue! <= partialMatchEnd)
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE
            .between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 100000;
      var noMatchEnd = 100001;
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.INTVALUE
            .between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

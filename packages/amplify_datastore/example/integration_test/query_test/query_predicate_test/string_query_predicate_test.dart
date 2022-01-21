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

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type String', () {
    // models used for all tests
    var models = [
      ModelWithAppsyncScalarTypes(stringValue: 'foo'),
      ModelWithAppsyncScalarTypes(stringValue: 'bar'),
      ModelWithAppsyncScalarTypes(stringValue: 'foo'),
      ModelWithAppsyncScalarTypes(stringValue: 'bar'),
      ModelWithAppsyncScalarTypes(stringValue: 'abcd'),
      ModelWithAppsyncScalarTypes(stringValue: 'abce'),
      ModelWithAppsyncScalarTypes(stringValue: 'abcf'),
      ModelWithAppsyncScalarTypes(stringValue: '!@#^&*()'),
      ModelWithAppsyncScalarTypes(stringValue: '\u{1F601}'),
      ModelWithAppsyncScalarTypes(stringValue: ''),
      ModelWithAppsyncScalarTypes(),
    ];

    // a string value that will return 1 when compared to each test value
    var maxStringValue = '\u{FFFFF}';

    // a string that will return 0 or -1 when compared to each test value
    var minStringValue = '';

    // non-null models used for all tests
    var nonNullModels = models.where((e) => e.stringValue != null).toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.stringValue).toSet().toList();

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
            models.where((model) => model.stringValue == value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.eq(value),
          expectedModels: expectedModels,
        );
      }

      // test with no match
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.eq('no match'),
        expectedModels: [],
      );
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        var expectedModels =
            nonNullModels.where((model) => model.stringValue != value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.ne(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.ne('no match'),
        // update `nonNullModels` to `models` when #823 is fixed
        // see: https://github.com/aws-amplify/amplify-flutter/issues/823
        expectedModels: nonNullModels,
      );
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.stringValue!.compareTo(value) < 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.lt(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.lt(minStringValue),
        expectedModels: [],
      );

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.lt(maxStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.stringValue!.compareTo(value) <= 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.le(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.le(maxStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.stringValue!.compareTo(value) > 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.gt(value),
          expectedModels: expectedModels,
        );
      }

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.gt(maxStringValue),
        expectedModels: [],
      );
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all (non-null) values
      for (var value in nonNullValues) {
        var expectedModels = nonNullModels
            .where((model) => model.stringValue!.compareTo(value) >= 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE.ge(value),
          expectedModels: expectedModels,
        );
      }

      // test with no matches
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.ge(maxStringValue),
        expectedModels: [],
      );

      // test with match all models
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.ge(minStringValue),
        expectedModels: nonNullModels,
      );
    });

    testWidgets('beginsWith()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = nonNullModels
          .where((model) => model.stringValue!.startsWith(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .beginsWith(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'a';
      var partialMatchModels = nonNullModels
          .where((model) => model.stringValue!.startsWith(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .beginsWith(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.beginsWith(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('contains()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = nonNullModels
          .where((model) => model.stringValue!.contains(exactMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.contains(exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchPattern = 'bc';
      var partialMatchModels = nonNullModels
          .where((model) => model.stringValue!.contains(partialMatchPattern))
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .contains(partialMatchPattern),
        expectedModels: partialMatchModels,
      );

      // test with no match
      var noMatchPattern = 'foobar';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate:
            ModelWithAppsyncScalarTypes.STRINGVALUE.contains(noMatchPattern),
        expectedModels: [],
      );
    });

    testWidgets('bewtween()', (WidgetTester tester) async {
      // test with exact match
      var exactMatchPattern = 'foo';
      var exactMatchModels = models
          .where((model) => model.stringValue == exactMatchPattern)
          .toList();
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .between(exactMatchPattern, exactMatchPattern),
        expectedModels: exactMatchModels,
      );

      // test with partial match
      var partialMatchStart = 'abcd';
      var partialMatchEnd = 'abcf';
      var rangeMatchModels = nonNullModels
          .where(
              (model) => model.stringValue!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.stringValue!.compareTo(partialMatchEnd) <= 0)
          .toList();
      // verify that the test is testing a partial match
      expect(rangeMatchModels.length, greaterThanOrEqualTo(1));
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );

      // test with no match
      var noMatchStart = 'foobar';
      var noMatchEnd = 'foobuzz';
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.STRINGVALUE
            .between(noMatchStart, noMatchEnd),
        expectedModels: [],
      );
    });
  });
}

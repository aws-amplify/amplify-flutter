// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../../utils/query_predicate_utils.dart';
import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('type AWSTime', () {
    // dates users for all tests
    var dates = [
      DateTime.fromMillisecondsSinceEpoch(0),
      DateTime(2020, 1, 1),
      DateTime(2020, 1, 1, 10, 30),
      DateTime(2020, 1, 1, 11, 30),
      DateTime(2020, 1, 1, 11, 30, 30),
      DateTime(2020, 1, 1, 11, 30, 45),
      DateTime(2020, 1, 1, 11, 30, 45, 100),
      DateTime(2020, 1, 1, 11, 30, 45, 100, 250),
      DateTime(2020, 1, 1, 23, 59, 59),
    ];

    // models used for all tests
    var models = dates
        .map((date) =>
            ModelWithAppsyncScalarTypes(awsTimeValue: TemporalTime(date)))
        .toList();

    // distinct list of values in the test models
    var values = models.map((e) => e.awsTimeValue!).toSet().toList();

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
            models.where((model) => model.awsTimeValue == value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.eq(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('ne()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels =
            models.where((model) => model.awsTimeValue != value).toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.ne(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('lt()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels = models
            .where((model) => model.awsTimeValue!.compareTo(value) < 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.lt(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('le()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels = models
            .where((model) => model.awsTimeValue!.compareTo(value) <= 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.le(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('gt()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels = models
            .where((model) => model.awsTimeValue!.compareTo(value) > 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.gt(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('ge()', (WidgetTester tester) async {
      // test against all values
      for (var value in values) {
        var expectedModels = models
            .where((model) => model.awsTimeValue!.compareTo(value) >= 0)
            .toList();
        await testQueryPredicate<ModelWithAppsyncScalarTypes>(
          queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE.ge(value),
          expectedModels: expectedModels,
        );
      }
    });

    testWidgets('between()', (WidgetTester tester) async {
      // test with partial match
      var partialMatchStart = models[1].awsTimeValue!;
      var partialMatchEnd = models[2].awsTimeValue!;
      var rangeMatchModels = models
          .where(
              (model) => model.awsTimeValue!.compareTo(partialMatchStart) >= 0)
          .where((model) => model.awsTimeValue!.compareTo(partialMatchEnd) <= 0)
          .toList();
      // verify that the test is testing a partial match
      expect(rangeMatchModels.length, greaterThanOrEqualTo(1));
      await testQueryPredicate<ModelWithAppsyncScalarTypes>(
        queryPredicate: ModelWithAppsyncScalarTypes.AWSTIMEVALUE
            .between(partialMatchStart, partialMatchEnd),
        expectedModels: rangeMatchModels,
      );
    });
    // Skip bc AWSTime issue on Android https://github.com/aws-amplify/amplify-flutter/issues/2214
    // TODO(ragingsquirrel3): remove skip when issue fixed or implementation ported to Dart.
  }, skip: Platform.isAndroid);
}

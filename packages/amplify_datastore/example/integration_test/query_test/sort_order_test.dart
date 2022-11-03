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

import 'dart:io';
import 'dart:math';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../utils/constants.dart';
import '../utils/setup_utils.dart';
import '../utils/sort_order_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('sort order', () {
    group('for type String', () {
      var models = [
        ModelWithAppsyncScalarTypes(stringValue: 'nnn'),
        ModelWithAppsyncScalarTypes(stringValue: 'abc'),
        ModelWithAppsyncScalarTypes(stringValue: 'aaa'),
        ModelWithAppsyncScalarTypes(stringValue: 'xyz'),
        ModelWithAppsyncScalarTypes(stringValue: 'zzz'),
        ModelWithAppsyncScalarTypes(stringValue: ''),
        ModelWithAppsyncScalarTypes(stringValue: '!@#^&*()'),
        ModelWithAppsyncScalarTypes(stringValue: '\u{1F601}'),
        ModelWithAppsyncScalarTypes(),
      ];
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: models,
        queryField: ModelWithAppsyncScalarTypes.STRINGVALUE,
        sort: sortStringTypeModel,
      );
    });

    group('for type Int', () {
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: [
          ModelWithAppsyncScalarTypes(intValue: dataStoreMaxInt),
          ModelWithAppsyncScalarTypes(intValue: dataStoreMinInt),
          ModelWithAppsyncScalarTypes(intValue: 0),
          ModelWithAppsyncScalarTypes(intValue: 1),
          ModelWithAppsyncScalarTypes(intValue: -1),
          ModelWithAppsyncScalarTypes(intValue: 10),
          ModelWithAppsyncScalarTypes(),
        ],
        queryField: ModelWithAppsyncScalarTypes.INTVALUE,
        sort: sortIntTypeModel,
      );
    });

    group(
      'for type Float',
      () {
        testSortOperations<ModelWithAppsyncScalarTypes>(
          models: [
            ModelWithAppsyncScalarTypes(floatValue: double.maxFinite),
            ModelWithAppsyncScalarTypes(floatValue: double.minPositive),
            ModelWithAppsyncScalarTypes(floatValue: pi),
            ModelWithAppsyncScalarTypes(floatValue: 0.0),
            ModelWithAppsyncScalarTypes(floatValue: 1.0),
            ModelWithAppsyncScalarTypes(floatValue: 1.1),
            ModelWithAppsyncScalarTypes(floatValue: 0.9),
            ModelWithAppsyncScalarTypes(floatValue: -1.1),
            ModelWithAppsyncScalarTypes(floatValue: 10.0),
            ModelWithAppsyncScalarTypes(),
          ],
          queryField: ModelWithAppsyncScalarTypes.FLOATVALUE,
          sort: sortFloatTypeModel,
        );
      },
      // see; https://github.com/aws-amplify/amplify-flutter/issues/856
      skip: true,
    );

    group('for type Boolean', () {
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: [
          ModelWithAppsyncScalarTypes(booleanValue: false),
          ModelWithAppsyncScalarTypes(booleanValue: true),
          ModelWithAppsyncScalarTypes(),
        ],
        queryField: ModelWithAppsyncScalarTypes.BOOLEANVALUE,
        sort: sortBooleanTypeModel,
      );
    });

    group('for type AWSDate', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 02, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) =>
              ModelWithAppsyncScalarTypes(awsDateValue: TemporalDate(value)))
          .toList();
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: models,
        queryField: ModelWithAppsyncScalarTypes.AWSDATEVALUE,
        sort: sortAWSDateTypeModel,
      );
    });

    group('for type AWSDateTime', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59),
        // TemporalDateTime values with milliseconds & microseconds are not parsed correctly on Android
        // see: https://github.com/aws-amplify/amplify-flutter/issues/817
        // DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(
              awsDateTimeValue: TemporalDateTime(value)))
          .toList();
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: models,
        queryField: ModelWithAppsyncScalarTypes.AWSDATETIMEVALUE,
        sort: sortAWSDateTimeTypeModel,
      );
    });

    group('for type AWSTime', () {
      var values = [
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 01),
        DateTime(2020, 01, 01, 00, 01, 00),
        DateTime(2020, 01, 01, 01, 00, 00),
        DateTime(2020, 01, 01, 01, 01, 01),
        DateTime(2020, 01, 01, 23, 59, 59),
        // TemporalTime values with milliseconds & microseconds are not parsed correctly on Android
        // see: https://github.com/aws-amplify/amplify-flutter/issues/817
        // DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) =>
              ModelWithAppsyncScalarTypes(awsTimeValue: TemporalTime(value)))
          .toList();
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: models,
        queryField: ModelWithAppsyncScalarTypes.AWSTIMEVALUE,
        sort: sortAWSTimeTypeModel,
        // Skip bc AWSTime issue on Android https://github.com/aws-amplify/amplify-flutter/issues/2214
        // TODO(ragingsquirrel3): remove skip when issue fixed or implementation ported to Dart.
        skip: Platform.isAndroid,
      );
    });

    group('for type AWSTimestamp', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(
              awsTimestampValue: TemporalTimestamp(value)))
          .toList();
      testSortOperations<ModelWithAppsyncScalarTypes>(
        models: models,
        queryField: ModelWithAppsyncScalarTypes.AWSTIMESTAMPVALUE,
        sort: sortAWSTimestampTypeModel,
      );
    });

    group('multi field sort', () {
      var models = [
        ModelWithAppsyncScalarTypes(intValue: 0, stringValue: 'abc'),
        ModelWithAppsyncScalarTypes(intValue: 1, stringValue: 'abc'),
        ModelWithAppsyncScalarTypes(intValue: 2, stringValue: 'abc'),
        ModelWithAppsyncScalarTypes(intValue: 0, stringValue: ''),
        ModelWithAppsyncScalarTypes(intValue: 1, stringValue: ''),
        ModelWithAppsyncScalarTypes(intValue: 2, stringValue: ''),
        ModelWithAppsyncScalarTypes(intValue: 0, stringValue: 'xyz'),
        ModelWithAppsyncScalarTypes(intValue: 1, stringValue: 'xyz'),
        ModelWithAppsyncScalarTypes(intValue: 2, stringValue: 'xyz'),
      ];

      setUp(() async {
        await configureDataStore();
        await clearDataStore();
        for (var model in models) {
          await Amplify.DataStore.save(model);
        }
      });

      testWidgets('ascending() & ascending()', (WidgetTester tester) async {
        var expectedModels = models
          ..sort(
              (ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
            return a.intValue != b.intValue
                ? a.intValue!.compareTo(b.intValue!)
                : a.stringValue!.compareTo(b.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          ModelWithAppsyncScalarTypes.classType,
          sortBy: [
            ModelWithAppsyncScalarTypes.INTVALUE.ascending(),
            ModelWithAppsyncScalarTypes.STRINGVALUE.ascending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });

      testWidgets('ascending() & descending()', (WidgetTester tester) async {
        var expectedModels = models
          ..sort(
              (ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
            return a.intValue != b.intValue
                ? a.intValue!.compareTo(b.intValue!)
                : b.stringValue!.compareTo(a.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          ModelWithAppsyncScalarTypes.classType,
          sortBy: [
            ModelWithAppsyncScalarTypes.INTVALUE.ascending(),
            ModelWithAppsyncScalarTypes.STRINGVALUE.descending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });

      testWidgets('descending() & descending()', (WidgetTester tester) async {
        var expectedModels = models
          ..sort(
              (ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
            return a.intValue != b.intValue
                ? b.intValue!.compareTo(a.intValue!)
                : b.stringValue!.compareTo(a.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          ModelWithAppsyncScalarTypes.classType,
          sortBy: [
            ModelWithAppsyncScalarTypes.INTVALUE.descending(),
            ModelWithAppsyncScalarTypes.STRINGVALUE.descending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });
    });
  });
}

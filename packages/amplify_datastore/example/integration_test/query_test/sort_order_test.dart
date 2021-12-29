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

import 'dart:math';

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:collection/collection.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import '../utils/constants.dart';
import '../utils/setup_utils.dart';
import '../utils/sort_order_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('sort order', () {
    group('for type string', () {
      var models = [
        StringTypeModel(value: 'nnn'),
        StringTypeModel(value: 'abc'),
        StringTypeModel(value: 'aaa'),
        StringTypeModel(value: 'xyz'),
        StringTypeModel(value: 'zzz'),
        StringTypeModel(value: ''),
        StringTypeModel(value: '!@#^&*()'),
        StringTypeModel(value: '\u{1F601}'),
        StringTypeModel(),
      ];
      testSortOperations<StringTypeModel, String>(
        models: models,
        queryField: StringTypeModel.VALUE,
        sort: sortStringTypeModel,
      );
    });

    group('for type int', () {
      testSortOperations<IntTypeModel, num>(
        models: [
          IntTypeModel(value: dataStoreMaxInt),
          IntTypeModel(value: dataStoreMinInt),
          IntTypeModel(value: 0),
          IntTypeModel(value: 1),
          IntTypeModel(value: -1),
          IntTypeModel(value: 10),
          IntTypeModel(),
        ],
        queryField: IntTypeModel.VALUE,
        sort: sortIntTypeModel,
      );
    });

    group(
      'for type double',
      () {
        testSortOperations<DoubleTypeModel, num>(
          models: [
            DoubleTypeModel(value: double.maxFinite),
            DoubleTypeModel(value: double.minPositive),
            DoubleTypeModel(value: pi),
            DoubleTypeModel(value: 0.0),
            DoubleTypeModel(value: 1.0),
            DoubleTypeModel(value: 1.1),
            DoubleTypeModel(value: 0.9),
            DoubleTypeModel(value: -1.1),
            DoubleTypeModel(value: 10.0),
            DoubleTypeModel(),
          ],
          queryField: DoubleTypeModel.VALUE,
          sort: sortDoubleTypeModel,
        );
      },
      // see; https://github.com/aws-amplify/amplify-flutter/issues/856
      skip: true,
    );

    group('for type bool', () {
      testBoolSortOperations<BoolTypeModel>(
        models: [
          BoolTypeModel(value: false),
          BoolTypeModel(value: true),
          BoolTypeModel(),
        ],
        queryField: BoolTypeModel.VALUE,
        sort: sortBoolTypeModel,
      );
    });

    group('for type AWSDate', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) => DateTypeModel(value: TemporalDate(value)))
          .toList();
      testSortOperations<DateTypeModel, TemporalDate>(
        models: models,
        queryField: DateTypeModel.VALUE,
        sort: sortDateTypeModel,
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
          .map((value) => DateTimeTypeModel(value: TemporalDateTime(value)))
          .toList();
      testSortOperations<DateTimeTypeModel, TemporalDateTime>(
        models: models,
        queryField: DateTimeTypeModel.VALUE,
        sort: sortDateTimeTypeModel,
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
          .map((value) => TimeTypeModel(value: TemporalTime(value)))
          .toList();
      testSortOperations<TimeTypeModel, TemporalTime>(
        models: models,
        queryField: TimeTypeModel.VALUE,
        sort: sortTimeTypeModel,
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
          .map((value) => TimestampTypeModel(value: TemporalTimestamp(value)))
          .toList();
      testSortOperations<TimestampTypeModel, TemporalTimestamp>(
        models: models,
        queryField: TimestampTypeModel.VALUE,
        sort: sortTimestampTypeModel,
      );
    });

    group('multi field sort', () {
      var models = [
        MultiTypeModel(intValue: 0, stringValue: 'abc'),
        MultiTypeModel(intValue: 1, stringValue: 'abc'),
        MultiTypeModel(intValue: 2, stringValue: 'abc'),
        MultiTypeModel(intValue: 0, stringValue: ''),
        MultiTypeModel(intValue: 1, stringValue: ''),
        MultiTypeModel(intValue: 2, stringValue: ''),
        MultiTypeModel(intValue: 0, stringValue: 'xyz'),
        MultiTypeModel(intValue: 1, stringValue: 'xyz'),
        MultiTypeModel(intValue: 2, stringValue: 'xyz'),
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
          ..sort((MultiTypeModel a, MultiTypeModel b) {
            return a.intValue != b.intValue
                ? a.intValue!.compareTo(b.intValue!)
                : a.stringValue!.compareTo(b.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          MultiTypeModel.classType,
          sortBy: [
            MultiTypeModel.INTVALUE.ascending(),
            MultiTypeModel.STRINGVALUE.ascending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });

      testWidgets('ascending() & descending()', (WidgetTester tester) async {
        var expectedModels = models
          ..sort((MultiTypeModel a, MultiTypeModel b) {
            return a.intValue != b.intValue
                ? a.intValue!.compareTo(b.intValue!)
                : b.stringValue!.compareTo(a.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          MultiTypeModel.classType,
          sortBy: [
            MultiTypeModel.INTVALUE.ascending(),
            MultiTypeModel.STRINGVALUE.descending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });

      testWidgets('descending() & descending()', (WidgetTester tester) async {
        var expectedModels = models
          ..sort((MultiTypeModel a, MultiTypeModel b) {
            return a.intValue != b.intValue
                ? b.intValue!.compareTo(a.intValue!)
                : b.stringValue!.compareTo(a.stringValue!);
          });
        var actualModels = await Amplify.DataStore.query(
          MultiTypeModel.classType,
          sortBy: [
            MultiTypeModel.INTVALUE.descending(),
            MultiTypeModel.STRINGVALUE.descending(),
          ],
        );
        expect(actualModels, orderedEquals(expectedModels));
      });
    });
  });
}

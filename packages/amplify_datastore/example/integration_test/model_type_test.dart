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

import 'dart:convert';
import 'dart:math';

import 'package:amplify_datastore/amplify_datastore.dart';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/constants.dart';
import 'utils/model_test_operation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('a model with field of type', () {
    group('String', () {
      var values = ['', 'foo', 'bar', '!@#"', '\u{1F601}'];
      var models =
          values.map((value) => StringTypeModel(value: value)).toList();
      testModelOperations(models: models);
    });

    group('String (with null value)', () {
      var models = List.generate(5, (_) => StringTypeModel());
      testModelOperations(models: models);
    });

    group('List<String>', () {
      var list = List.generate(3, (i) => '$i');
      var models = List.generate(5, (_) => StringListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group('List<String> (with null value)', () {
      var models = List.generate(5, (_) => StringListTypeModel());
      testModelOperations(models: models);
    });

    group('int', () {
      var values = [dataStoreMinInt, dataStoreMaxInt, 0, -1, 1];
      var models = values.map((value) => IntTypeModel(value: value)).toList();
      testModelOperations(models: models);
    });

    group('int (with null value)', () {
      var models = List.generate(5, (i) => IntTypeModel());
      testModelOperations(models: models);
    });

    group('List<int>', () {
      var list = List.generate(3, (i) => i);
      var models = List.generate(5, (_) => IntListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<int> (with null value)',
      () {
        var models = List.generate(5, (_) => IntListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('double', () {
      var values = [double.maxFinite, double.minPositive, pi, 0.0, 0.1];
      var models =
          values.map((value) => DoubleTypeModel(value: value)).toList();
      testModelOperations(models: models);
    });

    group('double (with null value)', () {
      var models = List.generate(5, (i) => DoubleTypeModel());
      testModelOperations(models: models);
    });

    group('List<double>', () {
      var list = List.generate(3, (i) => i.toDouble());
      var models = List.generate(5, (_) => DoubleListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group('List<double> (with null value)', () {
      var models = List.generate(5, (_) => DoubleListTypeModel());
      testModelOperations(models: models);
    });

    group('bool', () {
      var models = List.generate(
          5, (i) => BoolTypeModel(value: i % 2 == 0 ? false : true));
      testModelOperations(models: models);
    });

    group('bool (with null value)', () {
      var models = List.generate(5, (i) => BoolTypeModel());
      testModelOperations(models: models);
    });

    group('List<bool>', () {
      var list = List.generate(3, (i) => i == 0 ? false : true);
      var models = List.generate(5, (_) => BoolListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group('List<bool> (with null value)', () {
      var models = List.generate(5, (_) => BoolListTypeModel());
      testModelOperations(models: models);
    });

    group('AWSDate', () {
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
      testModelOperations(models: models);
    });

    group('AWSDate (with null value)', () {
      var models = List.generate(5, (i) => DateTypeModel());
      testModelOperations(models: models);
    });

    group('List<AWSDate>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDate(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<AWSDate> (with null value)',
      () {
        var models = List.generate(5, (_) => DateListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('AWSDateTime', () {
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
      testModelOperations(models: models);
      testModelOperations(
        models: models,
        skips: {DataStoreOperation.query: true},
      );
    });

    group('AWSDateTime (with null value)', () {
      var models = List.generate(5, (i) => DateTimeTypeModel());
      testModelOperations(models: models);
    });

    group('List<AWSDateTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDateTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateTimeListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<AWSDateTime> (with null value)',
      () {
        var models = List.generate(5, (_) => DateTimeListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('AWSTime', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59),
        // TemporalTime values with milliseconds & microseconds are not parsed correctly on Android
        // see: https://github.com/aws-amplify/amplify-flutter/issues/817
        // DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) => TimeTypeModel(value: TemporalTime(value)))
          .toList();
      testModelOperations(models: models);
    });

    group('AWSTime (with null value)', () {
      var models = List.generate(5, (i) => TimeTypeModel());
      testModelOperations(models: models);
    });

    group('List<AWSTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => TimeListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<AWSTime> (with null value)',
      () {
        var models = List.generate(5, (_) => TimeListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('AWSTimestamp', () {
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
      testModelOperations(models: models);
    });

    group('AWSTimestamp (with null value)', () {
      var models = List.generate(5, (i) => TimestampTypeModel());
      testModelOperations(models: models);
    });

    group(
      'List<AWSTimestamp>',
      () {
        var now = DateTime.now();
        var list = List.generate(
            3, (i) => TemporalTimestamp(now.add(Duration(days: i))));
        var models =
            List.generate(5, (_) => TimestampListTypeModel(value: list));
        testModelOperations(models: models);
      },
      // should be unskipped after https://github.com/aws-amplify/amplify-flutter/issues/814 is resolved
      skip: true,
    );

    group(
      'List<AWSTimestamp> (with null value)',
      () {
        var models = List.generate(5, (_) => TimestampListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('AWSJSON', () {
      String json = jsonEncode({
        'string': 'foo',
        'bool': true,
        'int': 1,
        'double': 1.0,
      });
      var models = List.generate(5, (i) => JSONTypeModel(value: json));
      testModelOperations(models: models);
    });

    group('AWSJSON (with null value)', () {
      var models = List.generate(5, (i) => JSONTypeModel());
      testModelOperations(models: models);
    });

    group('List<AWSJSON>', () {
      String generateJson(int value) => jsonEncode(Map.from({
            'string': 'foo',
            'bool': true,
            'int': value,
            'double': value.toDouble()
          }));
      var list = List.generate(3, (i) => generateJson(i));
      var models = List.generate(5, (_) => JSONListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group('List<AWSJSON> (with null value)', () {
      var models = List.generate(5, (_) => JSONListTypeModel());
      testModelOperations(models: models);
    });

    group('enum', () {
      var models = List.generate(5,
          (i) => EnumTypeModel(value: i == 0 ? EnumModel.no : EnumModel.yes));
      testModelOperations(models: models);
    });

    group('enum (with null value)', () {
      var models = List.generate(5, (i) => EnumTypeModel());
      testModelOperations(models: models);
    });

    group('List<enum>', () {
      var list = List.generate(3, (i) => i == 0 ? EnumModel.no : EnumModel.yes);
      var models = List.generate(5, (_) => EnumListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group('List<enum> (with null value)', () {
      var models = List.generate(5, (_) => EnumListTypeModel());
      testModelOperations(models: models);
    });

    group('List<CustomType>', () {
      var customTypeValue = AllScalarTypesCustomType(
        stringValue: 'string',
        intValue: 1,
        floatValue: 1.0,
        boolValue: true,
        dateValue: TemporalDate(DateTime.utc(2021, 9, 22)),
        dateTimeValue: TemporalDateTime(DateTime.utc(2021, 9, 22, 23, 0, 0)),
        timeValue: TemporalTime(DateTime.utc(2021, 9, 22, 0, 0, 0)),
        timestampValue: TemporalTimestamp(DateTime.utc(2021, 9, 22, 0, 0, 0)),
        jsonValue: '{"foo":"bar"}',
        enumValue: EnumModel.yes,
        customTypeValue: SimpleCustomType(foo: 'bar'),
      );

      var listCustomTypeValue = List.generate(
        2,
        (i) => AllScalarTypesListCustomType(
          stringValues: [i.toString(), (i + 1).toString()],
          intValues: [i, i + 1],
          floatValues: [i.toDouble(), (i + 1).toDouble()],
          boolValues: [i % 2 == 0, i % 2 != 0],
          dateValues: [
            TemporalDate(DateTime.utc(2021, 9, 22 + i)),
            TemporalDate(DateTime.utc(2021, 9, 22 - i))
          ],
          dateTimeValues: [
            TemporalDateTime(DateTime.utc(2021, 9, 22 + i, 23, 0, 0)),
            TemporalDateTime(DateTime.utc(2021, 9, 22 - i, 23, 0, 0)),
          ],
          timeValues: [
            TemporalTime(DateTime.utc(2021, 9, 22 + i, 0, 0, 0)),
            TemporalTime(DateTime.utc(2021, 9, 22 - i, 0, 0, 0))
          ],
          timestampValues: [
            TemporalTimestamp(DateTime.utc(2021, 9, 22 + i, 0, 0, 0)),
            TemporalTimestamp(DateTime.utc(2021, 9, 22 - i, 0, 0, 0))
          ],
          jsonValues: ['{"foo":"bar"}', '{"baz":"qux"}'],
          enumValues: [
            i % 2 == 0 ? EnumModel.no : EnumModel.yes,
            i % 2 != 0 ? EnumModel.no : EnumModel.yes
          ],
          customTypeValues: [
            SimpleCustomType(foo: 'bar number $i'),
            SimpleCustomType(foo: 'bar number ${i + 1}')
          ],
        ),
      );

      var models = List.generate(
          5,
          (_) => ModelNestedCustomType(
              customTypeValue: customTypeValue,
              listCustomTypeValue: listCustomTypeValue));

      testModelOperations(models: models);
    });
  });
}

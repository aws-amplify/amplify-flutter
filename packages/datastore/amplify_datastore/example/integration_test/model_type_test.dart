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
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(stringValue: value))
          .toList();
      testModelOperations(models: models);
    });

    group(
        'Schalar type value is null or a list of scalar types where the list is null',
        () {
      var models = List.generate(5, (_) => ModelWithAppsyncScalarTypes());
      testModelOperations(models: models);
    });

    group('List<String>', () {
      var list = List.generate(3, (i) => '$i');
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfStringValue: list));
      testModelOperations(models: models);
    });

    group('Int', () {
      var values = [dataStoreMinInt, dataStoreMaxInt, 0, -1, 1];
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(intValue: value))
          .toList();
      testModelOperations(models: models);
    });

    group('List<Int>', () {
      var list = List.generate(3, (i) => i);
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfIntValue: list));
      testModelOperations(models: models);
    });

    group('Float', () {
      var values = [double.maxFinite, double.minPositive, pi, 0.0, 0.1];
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(floatValue: value))
          .toList();
      testModelOperations(models: models);
    });

    group('List<Float>', () {
      var list = List.generate(3, (i) => i.toDouble());
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfFloatValue: list));
      testModelOperations(models: models);
    });

    group('Boolean', () {
      var models = List.generate(
          5,
          (i) => ModelWithAppsyncScalarTypes(
              booleanValue: i % 2 == 0 ? false : true));
      testModelOperations(models: models);
    });

    group('List<Boolean>', () {
      var list = List.generate(3, (i) => i == 0 ? false : true);
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfBooleanValue: list));
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
          .map((value) =>
              ModelWithAppsyncScalarTypes(awsDateValue: TemporalDate(value)))
          .toList();
      testModelOperations(models: models);
    });

    group('List<AWSDate>', () {
      var dateTime = DateTime.parse("2021-11-09T18:53:12.183540Z");
      var list = List.generate(
          3, (i) => TemporalDate(dateTime.add(Duration(days: i))));
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfAWSDateValue: list));
      testModelOperations(models: models);
    });

    group('AWSDateTime', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) => ModelWithAppsyncScalarTypes(
              awsDateTimeValue: TemporalDateTime(value)))
          .toList();
      testModelOperations(models: models);
      testModelOperations(
        models: models,
        skips: {DataStoreOperation.query: true},
      );
    });

    group('List<AWSDateTime>', () {
      var dateTime = DateTime.parse("2021-11-09T18:53:12.183540Z");
      var list = List.generate(
          3, (i) => TemporalDateTime(dateTime.add(Duration(days: i))));
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfAWSDateTimeValue: list));
      testModelOperations(models: models);
    });

    group('AWSTime', () {
      var values = [
        DateTime(0000, 01, 01, 00, 00, 00),
        DateTime(1970, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 00, 00, 00),
        DateTime(2020, 01, 01, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59),
        DateTime(2999, 12, 31, 23, 59, 59, 999, 999),
      ];
      var models = values
          .map((value) =>
              ModelWithAppsyncScalarTypes(awsTimeValue: TemporalTime(value)))
          .toList();
      testModelOperations(models: models);
    });

    group('List<AWSTime>', () {
      var dateTime = DateTime.parse("2021-11-09T18:53:12.183540Z");
      var list = List.generate(
          3, (i) => TemporalTime(dateTime.add(Duration(days: i))));
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfAWSTimeValue: list));
      testModelOperations(models: models);
    });

    group('AWSTimestamp', () {
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
      testModelOperations(models: models);
    });

    group('List<AWSTimestamp>', () {
      var now = DateTime.now();
      var list = List.generate(
          3, (i) => TemporalTimestamp(now.add(Duration(days: i))));
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfAWSTimestampValue: list));
      testModelOperations(models: models);
    });

    group('AWSJSON', () {
      String json = jsonEncode({
        'string': 'foo',
        'bool': true,
        'int': 1,
        'double': 1.0,
      });
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(awsJsonValue: json));
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
      var models = List.generate(
          5, (_) => ModelWithAppsyncScalarTypes(listOfAWSJsonValue: list));
      testModelOperations(models: models);
    });

    group('enum', () {
      var models = List.generate(
          5,
          (i) =>
              ModelWithEnum(enumField: i == 0 ? EnumField.no : EnumField.yes));
      testModelOperations(models: models);
    });

    group('enum (with null value)', () {
      var models = List.generate(5, (_) => ModelWithEnum());
      testModelOperations(models: models);
    });

    group('List<enum>', () {
      var list = List.generate(3, (i) => i == 0 ? EnumField.no : EnumField.yes);
      var models =
          List.generate(5, (_) => ModelWithEnum(listOfEnumField: list));
      testModelOperations(models: models);
    });

    group('List<CustomType>', () {
      var customTypeValue = CustomTypeWithAppsyncScalarTypes(
        stringValue: 'string',
        intValue: 1,
        floatValue: 1.0,
        booleanValue: true,
        awsDateValue: TemporalDate(DateTime.utc(2021, 9, 22)),
        awsDateTimeValue: TemporalDateTime(DateTime.utc(2021, 9, 22, 23, 0, 0)),
        awsTimeValue: TemporalTime(DateTime.utc(2021, 9, 22, 0, 0, 0)),
        awsTimestampValue:
            TemporalTimestamp(DateTime.utc(2021, 9, 22, 0, 0, 0)),
        awsJsonValue: '{"foo":"bar"}',
        enumValue: EnumField.yes,
        customTypeValue: SimpleCustomType(foo: 'bar'),
      );

      var listCustomTypeValue = List.generate(
        2,
        (i) => CustomTypeWithAppsyncScalarTypes(
          listOfStringValue: [i.toString(), (i + 1).toString()],
          listOfIntValue: [i, i + 1],
          listOfFloatValue: [i.toDouble(), (i + 1).toDouble()],
          listOfBooleanValue: [i % 2 == 0, i % 2 != 0],
          listOfAWSDateValue: [
            TemporalDate(DateTime.utc(2021, 9, 22 + i)),
            TemporalDate(DateTime.utc(2021, 9, 22 - i))
          ],
          listOfAWSDateTimeValue: [
            TemporalDateTime(DateTime.utc(2021, 9, 22 + i, 23, 0, 0)),
            TemporalDateTime(DateTime.utc(2021, 9, 22 - i, 23, 0, 0)),
          ],
          listOfAWSTimeValue: [
            TemporalTime(DateTime.utc(2021, 9, 22 + i, 0, 0, 0)),
            TemporalTime(DateTime.utc(2021, 9, 22 - i, 0, 0, 0))
          ],
          listOfAWSTimestampValue: [
            TemporalTimestamp(DateTime.utc(2021, 9, 22 + i, 0, 0, 0)),
            TemporalTimestamp(DateTime.utc(2021, 9, 22 - i, 0, 0, 0))
          ],
          listOfAWSJsonValue: ['{"foo":"bar"}', '{"baz":"qux"}'],
          listOfEnumValue: [
            i % 2 == 0 ? EnumField.no : EnumField.yes,
            i % 2 != 0 ? EnumField.no : EnumField.yes
          ],
          listOfCustomTypeValue: [
            SimpleCustomType(foo: 'bar number $i'),
            SimpleCustomType(foo: 'bar number ${i + 1}')
          ],
        ),
      );

      var models = List.generate(
          5,
          (_) => ModelWithCustomType(
              customTypeValue: customTypeValue,
              listOfCustomTypeValue: listCustomTypeValue));

      testModelOperations(models: models);
    });
  });
}

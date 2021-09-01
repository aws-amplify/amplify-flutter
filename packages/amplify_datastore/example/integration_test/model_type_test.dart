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

import 'package:amplify_datastore/amplify_datastore.dart';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/model_test_operation_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('a model with field of type', () {
    group('String', () {
      var models = List.generate(5, (i) => StringTypeModel(value: '$i'));
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
      var models = List.generate(5, (i) => IntTypeModel(value: i));
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
      var models =
          List.generate(5, (i) => DoubleTypeModel(value: i.toDouble()));
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

    group('TemporalDate', () {
      var now = DateTime.now();
      var models =
          List.generate(5, (i) => DateTypeModel(value: TemporalDate(now)));
      testModelOperations(models: models);
    });

    group('TemporalDate (with null value)', () {
      var models = List.generate(5, (i) => DateTypeModel());
      testModelOperations(models: models);
    });

    group('List<TemporalDate>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDate(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<TemporalDate> (with null value)',
      () {
        var models = List.generate(5, (_) => DateListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalDateTime', () {
      var now = DateTime.now();
      var models = List.generate(
          5, (i) => DateTimeTypeModel(value: TemporalDateTime(now)));
      testModelOperations(
        models: models,
        skips: {DataStoreOperation.query: true},
      );
    });

    group('TemporalDateTime (with null value)', () {
      var models = List.generate(5, (i) => DateTimeTypeModel());
      testModelOperations(models: models);
    });

    group('List<TemporalDateTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDateTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateTimeListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<TemporalDateTime> (with null value)',
      () {
        var models = List.generate(5, (_) => DateTimeListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalTime', () {
      var now = DateTime.now();
      var models =
          List.generate(5, (i) => TimeTypeModel(value: TemporalTime(now)));
      testModelOperations(
        models: models,
        skips: {DataStoreOperation.query: true},
      );
    });

    group('TemporalTime (with null value)', () {
      var models = List.generate(5, (i) => TimeTypeModel());
      testModelOperations(models: models);
    });

    group('List<TemporalTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => TimeListTypeModel(value: list));
      testModelOperations(models: models);
    });

    group(
      'List<TemporalTime> (with null value)',
      () {
        var models = List.generate(5, (_) => TimeListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalTimestamp', () {
      var now = DateTime.now();
      var models = List.generate(
          5, (i) => TimestampTypeModel(value: TemporalTimestamp(now)));
      testModelOperations(models: models);
    });

    group('TemporalTimestamp (with null value)', () {
      var models = List.generate(5, (i) => TimestampTypeModel());
      testModelOperations(models: models);
    });

    group(
      'List<TemporalTimestamp>',
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
      'List<TemporalTimestamp> (with null value)',
      () {
        var models = List.generate(5, (_) => TimestampListTypeModel());
        testModelOperations(models: models);
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('AWSJSON', () {
      String json = jsonEncode(Map.from({
        'string': 'foo',
        'bool': true,
        'int': 1,
        'double': 1.0,
      }));
      var models = List.generate(5, (i) => JSONTypeModel(value: json));
      testModelOperations(models: models);
    });

    group('json (with null value)', () {
      var models = List.generate(5, (i) => JSONTypeModel());
      testModelOperations(models: models);
    });

    group('List<json>', () {
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

    group('List<json> (with null value)', () {
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
  });
}

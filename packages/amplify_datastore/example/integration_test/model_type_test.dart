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
      testModelOperations<StringTypeModel>(
        models: models,
        classType: StringTypeModel.classType,
      );
    });

    group('String (with null value)', () {
      var models = List.generate(5, (i) => StringTypeModel());
      testModelOperations<StringTypeModel>(
        models: models,
        classType: StringTypeModel.classType,
      );
    });

    group('List<String>', () {
      var list = List.generate(3, (i) => '$i');
      var models = List.generate(5, (_) => StringListTypeModel(value: list));
      testModelOperations<StringListTypeModel>(
        models: models,
        classType: StringListTypeModel.classType,
      );
    });

    group('List<String> (with null value)', () {
      var models = List.generate(5, (_) => StringListTypeModel());
      testModelOperations<StringListTypeModel>(
        models: models,
        classType: StringListTypeModel.classType,
      );
    });

    group('int', () {
      var models = List.generate(5, (i) => IntTypeModel(value: i));
      testModelOperations<IntTypeModel>(
        models: models,
        classType: IntTypeModel.classType,
      );
    });

    group('int (with null value)', () {
      var models = List.generate(5, (i) => IntTypeModel());
      testModelOperations<IntTypeModel>(
        models: models,
        classType: IntTypeModel.classType,
      );
    });

    group('List<int>', () {
      var list = List.generate(3, (i) => i);
      var models = List.generate(5, (_) => IntListTypeModel(value: list));
      testModelOperations<IntListTypeModel>(
        models: models,
        classType: IntListTypeModel.classType,
      );
    });

    group(
      'List<int> (with null value)',
      () {
        var models = List.generate(5, (_) => IntListTypeModel());
        testModelOperations<IntListTypeModel>(
          models: models,
          classType: IntListTypeModel.classType,
        );
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('double', () {
      var models =
          List.generate(5, (i) => DoubleTypeModel(value: i.toDouble()));
      testModelOperations<DoubleTypeModel>(
        models: models,
        classType: DoubleTypeModel.classType,
      );
    });

    group('double (with null value)', () {
      var models = List.generate(5, (i) => DoubleTypeModel());
      testModelOperations<DoubleTypeModel>(
        models: models,
        classType: DoubleTypeModel.classType,
      );
    });

    group('List<double>', () {
      var list = List.generate(3, (i) => i.toDouble());
      var models = List.generate(5, (_) => DoubleListTypeModel(value: list));
      testModelOperations<DoubleListTypeModel>(
        models: models,
        classType: DoubleListTypeModel.classType,
      );
    });

    group('List<double> (with null value)', () {
      var models = List.generate(5, (_) => DoubleListTypeModel());
      testModelOperations<DoubleListTypeModel>(
        models: models,
        classType: DoubleListTypeModel.classType,
      );
    });

    group('bool', () {
      var models =
          List.generate(5, (i) => BoolTypeModel(value: i == 0 ? false : true));
      testModelOperations<BoolTypeModel>(
        models: models,
        classType: BoolTypeModel.classType,
      );
    });

    group('bool (with null value)', () {
      var models = List.generate(5, (i) => BoolTypeModel());
      testModelOperations<BoolTypeModel>(
        models: models,
        classType: BoolTypeModel.classType,
      );
    });

    group('List<bool>', () {
      var list = List.generate(3, (i) => i == 0 ? false : true);
      var models = List.generate(5, (_) => BoolListTypeModel(value: list));
      testModelOperations<BoolListTypeModel>(
        models: models,
        classType: BoolListTypeModel.classType,
      );
    });

    group('List<bool> (with null value)', () {
      var models = List.generate(5, (_) => BoolListTypeModel());
      testModelOperations<BoolListTypeModel>(
        models: models,
        classType: BoolListTypeModel.classType,
      );
    });

    group('TemporalDate', () {
      var now = DateTime.now();
      var models =
          List.generate(5, (i) => DateTypeModel(value: TemporalDate(now)));
      testModelOperations<DateTypeModel>(
        models: models,
        classType: DateTypeModel.classType,
      );
    });

    group('TemporalDate (with null value)', () {
      var models = List.generate(5, (i) => DateTypeModel());
      testModelOperations<DateTypeModel>(
        models: models,
        classType: DateTypeModel.classType,
      );
    });

    group('List<TemporalDate>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDate(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateListTypeModel(value: list));
      testModelOperations<DateListTypeModel>(
        models: models,
        classType: DateListTypeModel.classType,
      );
    });

    group(
      'List<TemporalDate> (with null value)',
      () {
        var models = List.generate(5, (_) => DateListTypeModel());
        testModelOperations<DateListTypeModel>(
          models: models,
          classType: DateListTypeModel.classType,
        );
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalDateTime', () {
      var now = DateTime.now();
      var models = List.generate(
          5, (i) => DateTimeTypeModel(value: TemporalDateTime(now)));
      testModelOperations<DateTimeTypeModel>(
        models: models,
        classType: DateTimeTypeModel.classType,
        // should be unskipped after https://github.com/aws-amplify/amplify-flutter/issues/817 is resolved
        skips: {DataStoreOperation.query: true},
      );
    });

    group('TemporalDateTime (with null value)', () {
      var models = List.generate(5, (i) => DateTimeTypeModel());
      testModelOperations<DateTimeTypeModel>(
        models: models,
        classType: DateTimeTypeModel.classType,
      );
    });

    group('List<TemporalDateTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalDateTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => DateTimeListTypeModel(value: list));
      testModelOperations<DateTimeListTypeModel>(
        models: models,
        classType: DateTimeListTypeModel.classType,
      );
    });

    group(
      'List<TemporalDateTime> (with null value)',
      () {
        var models = List.generate(5, (_) => DateTimeListTypeModel());
        testModelOperations<DateTimeListTypeModel>(
          models: models,
          classType: DateTimeListTypeModel.classType,
        );
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalTime', () {
      var now = DateTime.now();
      var models =
          List.generate(5, (i) => TimeTypeModel(value: TemporalTime(now)));
      testModelOperations<TimeTypeModel>(
        models: models,
        classType: TimeTypeModel.classType,
        // should be unskipped after https://github.com/aws-amplify/amplify-flutter/issues/817 is resolved
        skips: {DataStoreOperation.query: true},
      );
    });

    group('TemporalTime (with null value)', () {
      var models = List.generate(5, (i) => TimeTypeModel());
      testModelOperations<TimeTypeModel>(
        models: models,
        classType: TimeTypeModel.classType,
      );
    });

    group('List<TemporalTime>', () {
      var now = DateTime.now();
      var list =
          List.generate(3, (i) => TemporalTime(now.add(Duration(days: i))));
      var models = List.generate(5, (_) => TimeListTypeModel(value: list));
      testModelOperations<TimeListTypeModel>(
        models: models,
        classType: TimeListTypeModel.classType,
      );
    });

    group(
      'List<TemporalTime> (with null value)',
      () {
        var models = List.generate(5, (_) => TimeListTypeModel());
        testModelOperations<TimeListTypeModel>(
          models: models,
          classType: TimeListTypeModel.classType,
        );
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('TemporalTimestamp', () {
      var now = DateTime.now();
      var models = List.generate(
          5, (i) => TimestampTypeModel(value: TemporalTimestamp(now)));
      testModelOperations<TimestampTypeModel>(
        models: models,
        classType: TimestampTypeModel.classType,
      );
    });

    group('TemporalTimestamp (with null value)', () {
      var models = List.generate(5, (i) => TimestampTypeModel());
      testModelOperations<TimestampTypeModel>(
        models: models,
        classType: TimestampTypeModel.classType,
      );
    });

    group(
      'List<TemporalTimestamp>',
      () {
        var now = DateTime.now();
        var list = List.generate(
            3, (i) => TemporalTimestamp(now.add(Duration(days: i))));
        var models =
            List.generate(5, (_) => TimestampListTypeModel(value: list));
        testModelOperations<TimestampListTypeModel>(
          models: models,
          classType: TimestampListTypeModel.classType,
        );
      },
      // should be unskipped after https://github.com/aws-amplify/amplify-flutter/issues/814 is resolved
      skip: true,
    );

    group(
      'List<TemporalTimestamp> (with null value)',
      () {
        var models = List.generate(5, (_) => TimestampListTypeModel());
        testModelOperations<TimestampListTypeModel>(
          models: models,
          classType: TimestampListTypeModel.classType,
        );
      },
      // unskip when https://github.com/aws-amplify/amplify-flutter/issues/813 is resolved
      skip: true,
    );

    group('json', () {
      String json = jsonEncode(Map.from({
        'string': 'foo',
        'bool': true,
        'int': 1,
        'double': 1.0,
      }));
      var models = List.generate(5, (i) => JSONTypeModel(value: json));
      testModelOperations<JSONTypeModel>(
        models: models,
        classType: JSONTypeModel.classType,
      );
    });

    group('json (with null value)', () {
      var models = List.generate(5, (i) => JSONTypeModel());
      testModelOperations<JSONTypeModel>(
        models: models,
        classType: JSONTypeModel.classType,
      );
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
      testModelOperations<JSONListTypeModel>(
        models: models,
        classType: JSONListTypeModel.classType,
      );
    });

    group('List<json> (with null value)', () {
      var models = List.generate(5, (_) => JSONListTypeModel());
      testModelOperations<JSONListTypeModel>(
        models: models,
        classType: JSONListTypeModel.classType,
      );
    });

    group('enum', () {
      var models = List.generate(5,
          (i) => EnumTypeModel(value: i == 0 ? EnumModel.no : EnumModel.yes));
      testModelOperations<EnumTypeModel>(
        models: models,
        classType: EnumTypeModel.classType,
      );
    });

    group('enum (with null value)', () {
      var models = List.generate(5, (i) => EnumTypeModel());
      testModelOperations<EnumTypeModel>(
        models: models,
        classType: EnumTypeModel.classType,
      );
    });

    group('List<enum>', () {
      var list = List.generate(3, (i) => i == 0 ? EnumModel.no : EnumModel.yes);
      var models = List.generate(5, (_) => EnumListTypeModel(value: list));
      testModelOperations<EnumListTypeModel>(
        models: models,
        classType: EnumListTypeModel.classType,
      );
    });

    group('List<enum> (with null value)', () {
      var models = List.generate(5, (_) => EnumListTypeModel());
      testModelOperations<EnumListTypeModel>(
        models: models,
        classType: EnumListTypeModel.classType,
      );
    });
  });
}

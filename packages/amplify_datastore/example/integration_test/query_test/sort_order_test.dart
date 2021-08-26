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
import 'package:collection/collection.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import '../utils/setup_utils.dart';

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('sort order', () {
    group('for type string', () {
      testSortOperations<StringTypeModel>(
        classType: StringTypeModel.classType,
        models: [
          StringTypeModel(value: 'nnn'),
          StringTypeModel(value: 'abc'),
          StringTypeModel(value: 'aaa'),
          StringTypeModel(value: 'xyz'),
          StringTypeModel(value: 'zzz'),
          StringTypeModel(value: ''),
          StringTypeModel(),
        ],
        queryField: StringTypeModel.VALUE,
        sort: sortStringTypeModel,
      );
    });

    group('for type int', () {
      testSortOperations<IntTypeModel>(
        classType: IntTypeModel.classType,
        models: [
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

    group('for type double', () {
      testSortOperations<DoubleTypeModel>(
        classType: DoubleTypeModel.classType,
        models: [
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
    });

    group('for type bool', () {
      testSortOperations<BoolTypeModel>(
        classType: BoolTypeModel.classType,
        models: [
          BoolTypeModel(value: false),
          BoolTypeModel(value: true),
          BoolTypeModel(),
        ],
        queryField: BoolTypeModel.VALUE,
        sort: sortBoolTypeModel,
      );
    });

    group('for type Date', () {
      testSortOperations<DateTypeModel>(
        classType: DateTypeModel.classType,
        models: [
          DateTypeModel(value: TemporalDate(DateTime(2020, 01, 01))),
          DateTypeModel(value: TemporalDate(DateTime(2020, 02, 01))),
          DateTypeModel(value: TemporalDate(DateTime(2020, 01, 02))),
          DateTypeModel(value: TemporalDate(DateTime(2010, 01, 01))),
          DateTypeModel(),
        ],
        queryField: DateTypeModel.VALUE,
        sort: sortDateTypeModel,
      );
    });

    group('for type DateTime', () {
      testSortOperations<DateTimeTypeModel>(
        classType: DateTimeTypeModel.classType,
        models: [
          DateTimeTypeModel(value: TemporalDateTime(DateTime(2020, 1, 1))),
          DateTimeTypeModel(
              value: TemporalDateTime(DateTime(2020, 1, 1, 12, 30, 45))),
          DateTimeTypeModel(
              value: TemporalDateTime(DateTime(2020, 1, 1, 12, 45, 00))),
          DateTimeTypeModel(value: TemporalDateTime(DateTime(2020, 2, 1))),
          DateTimeTypeModel(value: TemporalDateTime(DateTime(2020, 1, 2))),
          DateTimeTypeModel(value: TemporalDateTime(DateTime(2010, 1, 1))),
          DateTimeTypeModel(),
        ],
        queryField: DateTimeTypeModel.VALUE,
        sort: sortDateTimeTypeModel,
      );
    });

    group('for type Time', () {
      testSortOperations<TimeTypeModel>(
        classType: TimeTypeModel.classType,
        models: [
          TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1))),
          TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1, 12, 30, 45))),
          TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1, 12, 45, 00))),
          TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1, 10, 00, 00))),
          TimeTypeModel(value: TemporalTime(DateTime(2020, 1, 1, 23, 59, 59))),
          TimeTypeModel(),
        ],
        queryField: TimeTypeModel.VALUE,
        sort: sortTimeTypeModel,
      );
    });

    group('for type Timestamp', () {
      testSortOperations<TimestampTypeModel>(
        classType: TimestampTypeModel.classType,
        models: [
          TimestampTypeModel(value: TemporalTimestamp(DateTime(2020, 1, 1))),
          TimestampTypeModel(
              value: TemporalTimestamp(DateTime(2020, 1, 1, 12, 30, 45))),
          TimestampTypeModel(
              value: TemporalTimestamp(DateTime(2020, 1, 1, 12, 45, 00))),
          TimestampTypeModel(
              value: TemporalTimestamp(DateTime(2020, 1, 1, 10, 00, 00))),
          TimestampTypeModel(
              value: TemporalTimestamp(DateTime(2020, 1, 1, 23, 59, 59))),
          TimestampTypeModel(),
        ],
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
        expect(ListEquality().equals(actualModels, expectedModels), isTrue);
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
        expect(ListEquality().equals(actualModels, expectedModels), isTrue);
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
        expect(ListEquality().equals(actualModels, expectedModels), isTrue);
      });
    });
  });
}

testSortOperations<T extends Model>({
  required ModelType<T> classType,
  required List<T> models,
  required QueryField queryField,
  required int sort(T a, T b),
}) {
  var ascendingSortedModels = models..sort(sort);
  var descendingSortedModels = ascendingSortedModels.reversed.toList();

  setUp(() async {
    await configureDataStore();
    await clearDataStore();
    for (var model in models) {
      await Amplify.DataStore.save(model);
    }
  });

  testWidgets('ascending()', (WidgetTester tester) async {
    var actualModels = await Amplify.DataStore.query(classType,
        sortBy: [queryField.ascending()]);
    expect(ListEquality().equals(actualModels, ascendingSortedModels), isTrue);
  });

  testWidgets('descending()', (WidgetTester tester) async {
    var actualModels = await Amplify.DataStore.query(classType,
        sortBy: [queryField.descending()]);
    expect(ListEquality().equals(actualModels, descendingSortedModels), isTrue);
  });
}

int sortStringTypeModel(StringTypeModel a, StringTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.compareTo(b.value!);
  }
}

int sortIntTypeModel(IntTypeModel a, IntTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.compareTo(b.value!);
  }
}

int sortDoubleTypeModel(DoubleTypeModel a, DoubleTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.compareTo(b.value!);
  }
}

int sortBoolTypeModel(BoolTypeModel a, BoolTypeModel b) {
  if (a.value == b.value) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else if (a.value!) {
    return 1;
  } else {
    return 0;
  }
}

int sortDateTypeModel(DateTypeModel a, DateTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.getDateTime().compareTo(b.value!.getDateTime());
  }
}

int sortDateTimeTypeModel(DateTimeTypeModel a, DateTimeTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.getDateTimeInUtc().compareTo(b.value!.getDateTimeInUtc());
  }
}

int sortTimeTypeModel(TimeTypeModel a, TimeTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.getDateTime().compareTo(b.value!.getDateTime());
  }
}

int sortTimestampTypeModel(TimestampTypeModel a, TimestampTypeModel b) {
  if (a.value == null && b.value == null) {
    return 0;
  } else if (a.value == null) {
    return -1;
  } else if (b.value == null) {
    return 1;
  } else {
    return a.value!.toSeconds().compareTo(b.value!.toSeconds());
  }
}

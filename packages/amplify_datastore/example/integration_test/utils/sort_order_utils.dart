//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'model_utils.dart';
import 'setup_utils.dart';

/// test ascending and descending sort operations given a [queryField]
/// to sort on and a [sort] method to test against
testSortOperations<T extends Model>({
  required List<T> models,
  required QueryField queryField,
  required int sort(T a, T b),
}) {
  var classType = getModelType<T>();
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
    expect(actualModels, orderedEquals(ascendingSortedModels));
  });

  testWidgets('descending()', (WidgetTester tester) async {
    var actualModels = await Amplify.DataStore.query(classType,
        sortBy: [queryField.descending()]);
    expect(actualModels, orderedEquals(descendingSortedModels));
  });
}

/// sort [StringTypeModel] by value, accounting for nulls
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

/// sort [IntTypeModel] by value, accounting for nulls
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

/// sort [DoubleTypeModel] by value, accounting for nulls
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

/// sort [BoolTypeModel] by value, accounting for nulls
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

/// sort [DateTypeModel] by value, accounting for nulls
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

/// sort [DateTimeTypeModel] by value, accounting for nulls
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

/// sort [TimeTypeModel] by value, accounting for nulls
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

/// sort [TimestampTypeModel] by value, accounting for nulls
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

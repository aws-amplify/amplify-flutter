import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:collection/collection.dart';
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
    expect(ListEquality().equals(actualModels, ascendingSortedModels), isTrue);
  });

  testWidgets('descending()', (WidgetTester tester) async {
    var actualModels = await Amplify.DataStore.query(classType,
        sortBy: [queryField.descending()]);
    expect(ListEquality().equals(actualModels, descendingSortedModels), isTrue);
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

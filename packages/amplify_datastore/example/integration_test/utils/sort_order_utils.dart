// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
  bool skip = false,
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

  testWidgets(
    'ascending()',
    (WidgetTester tester) async {
      var actualModels = await Amplify.DataStore.query(classType,
          sortBy: [queryField.ascending()]);
      expect(actualModels, orderedEquals(ascendingSortedModels));
    },
    skip: skip,
  );

  testWidgets(
    'descending()',
    (WidgetTester tester) async {
      var actualModels = await Amplify.DataStore.query(classType,
          sortBy: [queryField.descending()]);
      expect(actualModels, orderedEquals(descendingSortedModels));
    },
    skip: skip,
  );
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.STRINGVALUE], accounting for nulls
int sortStringTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.stringValue == null && b.stringValue == null) {
    return 0;
  } else if (a.stringValue == null) {
    return -1;
  } else if (b.stringValue == null) {
    return 1;
  } else {
    return a.stringValue!.compareTo(b.stringValue!);
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.INTVALUE], accounting for nulls
int sortIntTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.intValue == null && b.intValue == null) {
    return 0;
  } else if (a.intValue == null) {
    return -1;
  } else if (b.intValue == null) {
    return 1;
  } else {
    return a.intValue!.compareTo(b.intValue!);
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.FLOATVALUE], accounting for nulls
int sortFloatTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.floatValue == null && b.floatValue == null) {
    return 0;
  } else if (a.floatValue == null) {
    return -1;
  } else if (b.floatValue == null) {
    return 1;
  } else {
    return a.floatValue!.compareTo(b.floatValue!);
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.BOOLEANVALUE], accounting for nulls
int sortBooleanTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.booleanValue == b.booleanValue) {
    return 0;
  } else if (a.booleanValue == null) {
    return -1;
  } else if (b.booleanValue == null) {
    return 1;
  } else if (a.booleanValue!) {
    return 1;
  } else {
    return 0;
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.AWSDATEVALUE], accounting for nulls
int sortAWSDateTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.awsDateValue == null && b.awsDateValue == null) {
    return 0;
  } else if (a.awsDateValue == null) {
    return -1;
  } else if (b.awsDateValue == null) {
    return 1;
  } else {
    return a.awsDateValue!
        .getDateTime()
        .compareTo(b.awsDateValue!.getDateTime());
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.AWSDATETIMEVALUE], accounting for nulls
int sortAWSDateTimeTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.awsDateTimeValue == null && b.awsDateTimeValue == null) {
    return 0;
  } else if (a.awsDateTimeValue == null) {
    return -1;
  } else if (b.awsDateTimeValue == null) {
    return 1;
  } else {
    return a.awsDateTimeValue!
        .getDateTimeInUtc()
        .compareTo(b.awsDateTimeValue!.getDateTimeInUtc());
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes], accounting for nulls
int sortAWSTimeTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.awsTimeValue == null && b.awsTimeValue == null) {
    return 0;
  } else if (a.awsTimeValue == null) {
    return -1;
  } else if (b.awsTimeValue == null) {
    return 1;
  } else {
    return a.awsTimeValue!
        .getDateTime()
        .compareTo(b.awsTimeValue!.getDateTime());
  }
}

/// sort [ModelWithAppsyncScalarTypes] by [ModelWithAppsyncScalarTypes.AWSTIMESTAMPVALUE], accounting for nulls
int sortAWSTimestampTypeModel(
    ModelWithAppsyncScalarTypes a, ModelWithAppsyncScalarTypes b) {
  if (a.awsTimestampValue == null && b.awsTimestampValue == null) {
    return 0;
  } else if (a.awsTimestampValue == null) {
    return -1;
  } else if (b.awsTimestampValue == null) {
    return 1;
  } else {
    return a.awsTimestampValue!
        .toSeconds()
        .compareTo(b.awsTimestampValue!.toSeconds());
  }
}

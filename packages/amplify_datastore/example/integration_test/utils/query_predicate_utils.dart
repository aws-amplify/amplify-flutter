// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'model_utils.dart';

Future<void> testQueryPredicate<T extends Model>({
  required QueryPredicate queryPredicate,
  required List<T> expectedModels,
}) async {
  var classType = getModelType<T>();
  var actualModels = await Amplify.DataStore.query(
    classType,
    where: queryPredicate,
  );
  expect(actualModels, unorderedEquals(expectedModels));
}

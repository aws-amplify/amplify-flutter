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

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
import 'setup_utils.dart';

enum DataStoreOperation {
  query,
  save,
  observe,
  delete,
}

/// test standard datastore model operations (save, query, observe, delete)
///
/// [skips] can be used to skip operations that are currently not working as intended
void testModelOperations<T extends Model>({
  required List<T> models,
  Map<DataStoreOperation, bool> skips = const {},
}) {
  var classType = getModelType<T>();
  late Future<List<SubscriptionEvent<T>>> eventsFuture;

  setUpAll(() async {
    await configureDataStore();
    await clearDataStore();
    eventsFuture =
        Amplify.DataStore.observe(classType).take(models.length).toList();
  });

  testWidgets('precondition', (WidgetTester tester) async {
    var queriedModels = await Amplify.DataStore.query(classType);
    expect(queriedModels, isEmpty);
  });

  testWidgets(
    'save',
    (WidgetTester tester) async {
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
      var queriedModels = await Amplify.DataStore.query(classType);
      expect(queriedModels, isNotEmpty);
    },
    skip: skips[DataStoreOperation.save],
  );

  testWidgets(
    'query',
    (WidgetTester tester) async {
      var queriedModels = await Amplify.DataStore.query(classType);
      expect(queriedModels, isNotEmpty);
      for (var model in models) {
        expect(queriedModels.contains(model), isTrue);
      }
    },
    skip: skips[DataStoreOperation.query],
  );

  testWidgets(
    'observe',
    (WidgetTester tester) async {
      var events = await eventsFuture;
      for (var event in events) {
        if (!models.contains(event.item)) {
          fail('Could not find model ${event.item} in models: $models');
        }
      }
    },
    skip: skips[DataStoreOperation.observe],
    timeout: Timeout(Duration(seconds: 10)),
  );

  testWidgets(
    'delete',
    (WidgetTester tester) async {
      for (var model in models) {
        await Amplify.DataStore.delete(model);
      }
      var queriedModels = await Amplify.DataStore.query(classType);
      expect(queriedModels, isEmpty);
    },
    skip: skips[DataStoreOperation.delete],
  );
}

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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'test_models/ModelProvider.dart';

void main() {
  const mockSyncInterval = 3600;
  const mockSyncMaxRecords = 60000;
  const mockSyncPagesize = 1000;

  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(
      modelProvider: ModelProvider.instance,
      syncInterval: mockSyncInterval,
      syncMaxRecords: mockSyncMaxRecords,
      syncPageSize: mockSyncPagesize);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('DataStore custom configuration should be passed via MethodChannel',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "configureDataStore") {
        final modelSchemas = methodCall.arguments['modelSchemas'];
        final syncInterval = methodCall.arguments['syncInterval'];
        final syncMaxRecords = methodCall.arguments['syncMaxRecords'];
        final syncPageSize = methodCall.arguments['syncPageSize'];

        expect(
            modelSchemas,
            equals(ModelProvider.instance.modelSchemas
                .map((schema) => schema.toMap())
                .toList()));
        expect(syncInterval, equals(syncInterval));
        expect(syncMaxRecords, equals(mockSyncMaxRecords));
        expect(syncPageSize, equals(mockSyncPagesize));
      }
    });

    await dataStore.configureDataStore();
  });
}

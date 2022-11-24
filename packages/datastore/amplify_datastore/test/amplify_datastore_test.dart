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
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';

void main() {
  const mockSyncInterval = 3600;
  const mockSyncMaxRecords = 60000;
  const mockSyncPagesize = 1000;

  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore = AmplifyDataStore(
      modelProvider: ModelProvider.instance,
      syncExpressions: [
        DataStoreSyncExpression(Blog.classType, () => Blog.NAME.eq('foo')),
        DataStoreSyncExpression(Post.classType, () => Post.TITLE.eq('bar'))
      ],
      syncInterval: mockSyncInterval,
      syncMaxRecords: mockSyncMaxRecords,
      syncPageSize: mockSyncPagesize);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('DataStore custom configuration should be passed via MethodChannel',
      () async {
    var expectedBlogExpression =
        await getJsonFromFile('sync_expressions/blog_name.json');
    var expectedPostExpression =
        await getJsonFromFile('sync_expressions/post_title.json');
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "configureDataStore") {
        final modelSchemas = methodCall.arguments['modelSchemas'];
        final syncExpressions = methodCall.arguments['syncExpressions'];
        final syncInterval = methodCall.arguments['syncInterval'];
        final syncMaxRecords = methodCall.arguments['syncMaxRecords'];
        final syncPageSize = methodCall.arguments['syncPageSize'];

        expect(
            modelSchemas,
            ModelProvider.instance.modelSchemas
                .map((schema) => schema.toJson())
                .toList());
        expect(syncExpressions.map((expression) {
          // Ignore generated ID
          (expression as Map).remove("id");
          return expression;
        }), [expectedBlogExpression, expectedPostExpression]);
        expect(syncInterval, mockSyncInterval);
        expect(syncMaxRecords, mockSyncMaxRecords);
        expect(syncPageSize, mockSyncPagesize);
      }
    });

    await dataStore.configureDataStore();
  });
}

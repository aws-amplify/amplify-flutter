// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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
                .map((schema) => schema.toMap())
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

/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/basic_model_operation/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final enableCloudSync = shouldEnableCloudSync();
  group(
      'Basic model operation${enableCloudSync ? ' with API sync 🌩 enabled' : ''} -',
      () {
    Blog testBlog = Blog(name: 'test blog');

    setUpAll(() async {
      await configureDataStore(
          enableCloudSync: enableCloudSync,
          modelProvider: ModelProvider.instance);
    });

    testWidgets(
        'should save a new model ${enableCloudSync ? 'and sync to cloud' : ''}',
        (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [testBlog],
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: (events) {
            events.forEach((event) {
              expect(event.element.deleted, isFalse);
            });
          },
        );
      } else {
        await Amplify.DataStore.save(testBlog);
      }

      var queriedBlogs = await Amplify.DataStore.query(Blog.classType);
      expect(queriedBlogs, contains(testBlog));
    });

    testWidgets(
      'should update existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
      (WidgetTester tester) async {
        var updatedTestBlog = testBlog.copyWith(name: "updated test blog");

        if (enableCloudSync) {
          await testCloudSyncedModelOperation(
            rootModels: [updatedTestBlog],
            expectedRootModelVersion: 2,
            rootModelOperator: Amplify.DataStore.save,
            rootModelEventsAssertor: (events) {
              events.forEach((event) {
                expect(event.element.deleted, isFalse);
              });
            },
          );
        } else {
          await Amplify.DataStore.save(updatedTestBlog);
        }

        var queriedBlogs = await Amplify.DataStore.query(
          Blog.classType,
          where: Blog.ID.eq(updatedTestBlog.id),
        );

        expect(queriedBlogs, contains(updatedTestBlog));
      },
    );

    testWidgets(
      'should delete existing model ${enableCloudSync ? 'and sync to cloud' : ''}',
      (WidgetTester tester) async {
        if (enableCloudSync) {
          await testCloudSyncedModelOperation(
            rootModels: [testBlog],
            expectedRootModelVersion: 3,
            rootModelOperator: Amplify.DataStore.delete,
            rootModelEventsAssertor: (events) {
              events.forEach((event) {
                expect(event.element.deleted, isTrue);
              });
            },
          );
        } else {
          await Amplify.DataStore.delete(testBlog);
        }

        var queriedBlogs = await Amplify.DataStore.query(Blog.classType);

        // verify blog was deleted
        expect(queriedBlogs, isNot(contains(testBlog)));
      },
    );
  });
}

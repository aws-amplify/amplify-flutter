// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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

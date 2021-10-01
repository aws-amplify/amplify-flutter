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
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('observe', () {
    setUp(() async {
      await configureDataStore();
      await clearDataStore();
    });

    testWidgets('should broadcast events for create, update, and delete',
        (WidgetTester tester) async {
      Blog blog = Blog(name: 'blog');
      Blog updatedBlog = blog.copyWith(name: 'updated blog');

      var eventTypeStream = Amplify.DataStore.observe(Blog.classType)
          .map((event) => event.eventType);
      expectLater(
        eventTypeStream,
        emitsInOrder(
          [
            EventType.create,
            EventType.update,
            EventType.delete,
          ],
        ),
      );
      await Amplify.DataStore.save(blog);
      await Amplify.DataStore.save(updatedBlog);
      await Amplify.DataStore.delete(updatedBlog);
    });

    testWidgets(
        'should broadcast events with the model that is created, update, or deleted',
        (WidgetTester tester) async {
      Blog blog = Blog(name: 'blog');
      Blog updatedBlog = blog.copyWith(name: 'updated blog');

      var eventItemStream =
          Amplify.DataStore.observe(Blog.classType).map((event) => event.item);
      expectLater(
        eventItemStream,
        emitsInOrder(
          [
            blog,
            updatedBlog,
            updatedBlog,
          ],
        ),
      );

      await Amplify.DataStore.save(blog);
      await Amplify.DataStore.save(updatedBlog);
      await Amplify.DataStore.delete(updatedBlog);
    });
  });
}

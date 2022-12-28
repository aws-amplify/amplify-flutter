// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('observe', () {
    setUp(() async {
      await configureDataStore();
      await clearDataStore();
      await waitForObserve();
    });

    testWidgets('should emit an event for each item saved',
        (WidgetTester tester) async {
      var itemStream = Amplify.DataStore.observe(Blog.classType)
          .map((event) => event.item.name);

      expectLater(
        itemStream,
        emitsInOrder(['blog 1', 'blog 2', 'blog 3']),
      );

      await Amplify.DataStore.save(Blog(name: 'blog 1'));
      await Amplify.DataStore.save(Blog(name: 'blog 2'));
      await Amplify.DataStore.save(Blog(name: 'blog 3'));
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

    testWidgets('observe with query predicates returns all matches',
        (WidgetTester tester) async {
      Blog blog = Blog(name: 'blog');
      Blog updatedBlog = blog.copyWith(name: 'updated blog');

      var eventItemStream = Amplify.DataStore.observe(Blog.classType,
              where: Blog.NAME.ne("not a blog name"))
          .map((event) => event.item);
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

    testWidgets('observe with query predicates filters out non matches',
        (WidgetTester tester) async {
      Blog blog = Blog(name: 'matching blog');
      Blog updatedBlog = blog.copyWith(name: 'updated blog');
      Blog otherBlog = Blog(name: 'matching blog 2');

      var eventItemStream = Amplify.DataStore.observe(Blog.classType,
              where: Blog.NAME.contains("matching"))
          .map((event) => event.item);
      expectLater(
        eventItemStream,
        emitsInOrder(
          [blog, otherBlog],
        ),
      );

      await Amplify.DataStore.save(blog);
      await Amplify.DataStore.save(updatedBlog);
      await Amplify.DataStore.delete(updatedBlog);
      await Amplify.DataStore.save(otherBlog);
    });
  });
}

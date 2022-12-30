// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('observeQuery', () {
    setUp(() async {
      await configureDataStore();
      await clearDataStore();
      await waitForObserve();
    });

    testWidgets(
        'should return an initial result set that is consistent with query()',
        (WidgetTester tester) async {
      List<Blog> blogs =
          List.generate(10, (index) => Blog(name: 'blog $index'));

      for (var blog in blogs) {
        await Amplify.DataStore.save(blog);
      }
      var queryBlogs = await Amplify.DataStore.query(Blog.classType);

      var observeQueryBlogs =
          (await Amplify.DataStore.observeQuery(Blog.classType).first).items;

      expect(observeQueryBlogs.length, 10);
      expect(observeQueryBlogs, orderedEquals(queryBlogs));
    });

    testWidgets('should emit new snapshots with updated items',
        (WidgetTester tester) async {
      List<Blog> blogs = List.generate(3, (index) => Blog(name: 'blog $index'));

      for (var blog in blogs) {
        await Amplify.DataStore.save(blog);
      }

      var observeQueryItemStream = Amplify.DataStore.observeQuery(
        Blog.classType,
      ).map((event) => event.items);

      // should emit an initial snapshot with the data in the store
      final firstSnapshot = await observeQueryItemStream.first;
      expect(firstSnapshot, orderedEquals(blogs));

      Blog newBlog1 = Blog(name: 'new blog 1');
      Blog newBlog2 = Blog(name: 'new blog 2');
      Blog newBlog1Copy = newBlog1.copyWith(name: 'new name');

      // should emit a snapshot for each save/update
      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([...blogs, newBlog1]),
          orderedEquals([...blogs, newBlog1, newBlog2]),
          orderedEquals([...blogs, newBlog1Copy, newBlog2]),
          orderedEquals([...blogs, newBlog2]),
        ]),
      );

      await Amplify.DataStore.save(newBlog1);
      await Amplify.DataStore.save(newBlog2);
      await Amplify.DataStore.save(newBlog1Copy);
      await Amplify.DataStore.delete(newBlog1Copy);
    });

    testWidgets('should respect query predicates', (WidgetTester tester) async {
      List<Blog> blogs = List.generate(3, (index) => Blog(name: 'blog $index'));

      for (var blog in blogs) {
        await Amplify.DataStore.save(blog);
      }

      var observeQueryItemStream = Amplify.DataStore.observeQuery(
        Blog.classType,
        where: Blog.NAME.contains('blog'),
      ).map((event) => event.items);

      // should emit an initial snapshot with the data in the store
      final firstSnapshot = await observeQueryItemStream.first;
      expect(firstSnapshot, orderedEquals(blogs));

      Blog newBlog1 = Blog(name: 'new blog 1');
      Blog newBlog2 = Blog(name: 'new blog 2');
      Blog newBlog3 = Blog(name: 'new 3');
      Blog newBlog1Copy = newBlog1.copyWith(name: 'new name');

      // should emit a snapshot for each save/update
      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([...blogs, newBlog1]),
          orderedEquals([...blogs, newBlog1, newBlog2]),
          orderedEquals([...blogs, newBlog2]),
        ]),
      );

      await Amplify.DataStore.save(newBlog1);
      await Amplify.DataStore.save(newBlog2);
      await Amplify.DataStore.save(newBlog3);
      await Amplify.DataStore.save(newBlog1Copy);
    });

    testWidgets('should respect sort orders', (WidgetTester tester) async {
      List<Blog> blogs = List.generate(3, (index) => Blog(name: 'blog $index'));

      for (var blog in blogs) {
        await Amplify.DataStore.save(blog);
      }

      var observeQueryItemStream = Amplify.DataStore.observeQuery(
        Blog.classType,
        sortBy: [Blog.NAME.ascending()],
      ).map((event) => event.items);

      // should emit an initial snapshot with the data in the store
      final firstSnapshot = await observeQueryItemStream.first;
      expect(firstSnapshot, orderedEquals(blogs));

      Blog newBlog1 = Blog(name: 'aaa blog');
      Blog newBlog2 = Blog(name: 'ccc blog');
      Blog newBlog2Copy = newBlog2.copyWith(name: 'azz blog');

      // should emit a snapshot for each save/update
      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([newBlog1, ...blogs]),
          orderedEquals([newBlog1, ...blogs, newBlog2]),
          orderedEquals([newBlog1, newBlog2Copy, ...blogs]),
        ]),
      );

      await Amplify.DataStore.save(newBlog1);
      await Amplify.DataStore.save(newBlog2);
      await Amplify.DataStore.save(newBlog2Copy);
    });
  });
}

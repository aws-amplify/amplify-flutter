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

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

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

    testWidgets(
      'should respect nested query predicates',
      (WidgetTester tester) async {
        // save initial data set of two blogs with 3 posts each
        final blog1 = Blog(name: 'blog 1');
        final blog2 = Blog(name: 'blog 2');
        final blog1Posts = List.generate(
          3,
          (index) => Post(
            title: 'post $index for blog1',
            rating: 0,
            blog: blog1,
          ),
        );
        final blog2Posts = List.generate(
          3,
          (index) => Post(
            title: 'post $index for blog2',
            rating: 0,
            blog: blog2,
          ),
        );
        await Amplify.DataStore.save(blog1);
        await Amplify.DataStore.save(blog2);
        for (var post in [...blog1Posts, ...blog2Posts]) {
          await Amplify.DataStore.save(post);
        }

        final observeQueryItemStream = Amplify.DataStore.observeQuery(
          Post.classType,
          where: Post.BLOG.eq(BlogModelIdentifier(id: blog1.id)),
        ).map((event) => event.items);

        // assert initial snapshot has posts for blog1 only
        final firstSnapshot = await observeQueryItemStream.first;
        expect(firstSnapshot, orderedEquals(blog1Posts));

        // create new posts to save
        final blog1NewPosts = List.generate(
          3,
          (index) => Post(
            title: 'New post $index for blog1',
            rating: 0,
            blog: blog1,
          ),
        );

        final blog2NewPosts = List.generate(
          3,
          (index) => Post(
            title: 'New post $index for blog2',
            rating: 0,
            blog: blog2,
          ),
        );

        // assert subsequent snapshots have posts for blog1 only
        expectLater(
          observeQueryItemStream,
          emitsInOrder([
            orderedEquals([...blog1Posts, blog1NewPosts[0]]),
            orderedEquals([...blog1Posts, blog1NewPosts[0], blog1NewPosts[1]]),
            orderedEquals([...blog1Posts, blog1NewPosts[0]]),
          ]),
        );

        // save new and updated posts
        await Amplify.DataStore.save(blog1NewPosts[0]);
        await Amplify.DataStore.save(blog2NewPosts[0]);
        await Amplify.DataStore.save(blog1NewPosts[1]);
        await Amplify.DataStore.save(blog2NewPosts[1]);
        await Amplify.DataStore.save(blog1NewPosts[1].copyWith(blog: blog2));
      },
      timeout: Timeout(Duration(seconds: 30)),
    );

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

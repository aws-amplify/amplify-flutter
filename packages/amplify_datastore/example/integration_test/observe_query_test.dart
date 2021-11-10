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
import 'package:amplify_flutter/amplify.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('observeQuery', () {
    setUp(() async {
      await configureDataStore();
      await clearDataStore();
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

      Blog newBlog1 = Blog(name: 'new blog 1');
      Blog newBlog2 = Blog(name: 'new blog 2');
      Blog newBlog1Copy = newBlog1.copyWith(name: 'new name');

      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([...blogs]),
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

      Blog newBlog1 = Blog(name: 'new blog 1');
      Blog newBlog2 = Blog(name: 'new blog 2');
      Blog newBlog3 = Blog(name: 'new 3');
      Blog newBlog1Copy = newBlog1.copyWith(name: 'new name');

      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([...blogs]),
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

      Blog newBlog1 = Blog(name: 'aaa blog');
      Blog newBlog2 = Blog(name: 'ccc blog');
      Blog newBlog2Copy = newBlog2.copyWith(name: 'azz blog');

      expectLater(
        observeQueryItemStream,
        emitsInOrder([
          orderedEquals([...blogs]),
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

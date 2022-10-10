// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('standard query operations', () {
    setUp(() async {
      await configureDataStore();
      // clear data before each test
      await clearDataStore();
    });
    testWidgets('should return all data by default',
        (WidgetTester tester) async {
      Blog testBlog1 = Blog(name: 'blog one');
      Blog testBlog2 = Blog(name: 'blog two');
      Blog testBlog3 = Blog(name: 'blog three');
      await Amplify.DataStore.save(testBlog1);
      await Amplify.DataStore.save(testBlog2);
      await Amplify.DataStore.save(testBlog3);
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 3);
      expect(blogs.contains(testBlog1), isTrue);
      expect(blogs.contains(testBlog2), isTrue);
      expect(blogs.contains(testBlog3), isTrue);
    });

    testWidgets('should return no data when the query has no results',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs, isEmpty);
    });

    testWidgets('should return the correct record when queried by id',
        (WidgetTester tester) async {
      Blog testBlog1 = Blog(name: 'blog one');
      Blog testBlog2 = Blog(name: 'blog two');
      Blog testBlog3 = Blog(name: 'blog three');
      await Amplify.DataStore.save(testBlog1);
      await Amplify.DataStore.save(testBlog2);
      await Amplify.DataStore.save(testBlog3);
      var blogs = await Amplify.DataStore.query(Blog.classType,
          where: Blog.ID.eq(testBlog1.id));
      expect(blogs.length, 1);
      var blog = blogs[0];
      expect(blog, testBlog1);
    });

    testWidgets(
      'should return the correct record when queried by a nested model id',
      (WidgetTester tester) async {
        final blog1 = Blog(name: 'blog one');
        final blog2 = Blog(name: 'blog two');
        final post1 = Post(title: 'post 1', rating: 0, blog: blog1);
        final post2 = Post(title: 'post 2', rating: 0, blog: blog2);

        await Amplify.DataStore.save(blog1);
        await Amplify.DataStore.save(blog2);
        await Amplify.DataStore.save(post1);
        await Amplify.DataStore.save(post2);

        final posts = await Amplify.DataStore.query(
          Post.classType,
          where: Post.BLOG.eq(BlogModelIdentifier(id: blog1.id)),
        );

        expect(posts.length, 1);
        expect(posts[0], post1);
      },
      // See: https://github.com/aws-amplify/amplify-flutter/issues/2183
      skip: Platform.isAndroid,
    );

    testWidgets('should return the ID of nested objects',
        (WidgetTester tester) async {
      Blog testBlog = Blog(name: 'test blog');
      await Amplify.DataStore.save(testBlog);
      Post testPost = Post(
        title: 'test post',
        blog: testBlog,
        created: TemporalDateTime.fromString("2021-11-09T18:53:12.183540Z"),
        rating: 10,
      );
      await Amplify.DataStore.save(testPost);
      var posts = await Amplify.DataStore.query(Post.classType);
      expect(posts.length, 1);
      var post = posts[0];
      expect(post.blog!.id, testBlog.id);
    });
  });
}

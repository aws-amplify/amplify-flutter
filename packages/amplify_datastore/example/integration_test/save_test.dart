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

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('save', () {
    setUp(() async {
      await configureDataStore();
      // clear data before each test
      await clearDataStore();
    });

    testWidgets('should save a new model', (WidgetTester tester) async {
      Blog testBlog = Blog(name: 'test blog');
      await Amplify.DataStore.save(testBlog);
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 1);
      expect(blogs.contains(testBlog), isTrue);
    });

    testWidgets(
      'should update an existing model',
      (WidgetTester tester) async {
        // create blog
        var testBlog = Blog(name: 'test blog');
        await Amplify.DataStore.save(testBlog);
        var blogs = await Amplify.DataStore.query(Blog.classType);

        // verify blog was created
        expect(blogs.length, 1);
        expect(blogs.contains(testBlog), isTrue);

        // update blog
        const updatedBlogName = 'updated name';
        var updatedBlog = testBlog.copyWith(name: updatedBlogName);
        await Amplify.DataStore.save(updatedBlog);
        var updatedBlogs = await Amplify.DataStore.query(Blog.classType);

        // verify blog was updated
        expect(updatedBlogs.length, 1);
        expect(updatedBlogs.contains(updatedBlog), isTrue);
        expect(updatedBlogs[0].name, updatedBlogName);
      },
    );

    testWidgets('predicate should prevent save to non matching model',
        (WidgetTester tester) async {
      // Note that predicate for save can only be applied to updates (not initial save)
      const originalBlogName = 'non matching blog';
      Blog testBlog = Blog(name: originalBlogName);
      await Amplify.DataStore.save(testBlog);

      var updatedBlog = testBlog.copyWith(name: 'changed name');

      expect(
          () => Amplify.DataStore.save(updatedBlog,
              where: Blog.NAME.contains("Predicate")),
          throwsA(predicate((e) =>
              e is DataStoreException &&
              e.message.contains(
                  "condition did not match existing model instance"))));
    });

    testWidgets('predicate should not prevent save for matching model',
        (WidgetTester tester) async {
      // Note that predicate for save can only be applied to updates (not initial save)
      const originalBlogName = 'original blog';
      Blog testBlog = Blog(name: originalBlogName);
      await Amplify.DataStore.save(testBlog);

      const matchingBlogName = 'matching blog name';
      var updatedBlog = testBlog.copyWith(name: matchingBlogName);
      await Amplify.DataStore.save(updatedBlog,
          where: Blog.NAME.contains("original"));

      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 1);
      expect(blogs[0].name, matchingBlogName);
    });
  });
}

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

import '../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('pagination', () {
    var models = List.generate(1000, (i) => Blog(name: 'blog $i'));
    var sortedModels = models..sort((a, b) => a.name.compareTo(b.name));
    setUpAll(() async {
      await configureDataStore();
      await clearDataStore();
      for (var model in models) {
        await Amplify.DataStore.save(model);
      }
    });
    testWidgets('should return the models for the given page and limit',
        (WidgetTester tester) async {
      // page 0
      var pageZeroBlogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 0, limit: 10),
        sortBy: [Blog.NAME.ascending()],
      );
      var expectedPageZeroBlogs = sortedModels.getRange(0, 10).toList();
      expect(pageZeroBlogs.length, 10);
      expect(pageZeroBlogs, orderedEquals(expectedPageZeroBlogs));

      // page 1
      var pageOneBlogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 1, limit: 10),
        sortBy: [Blog.NAME.ascending()],
      );
      var expectedPageOneBlogs = sortedModels.getRange(10, 20).toList();
      expect(pageOneBlogs.length, 10);
      expect(pageOneBlogs, orderedEquals(expectedPageOneBlogs));

      // final page
      var finalPageBlogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 99, limit: 10),
        sortBy: [Blog.NAME.ascending()],
      );
      var expectedFinalPageBlogs = sortedModels.getRange(990, 1000).toList();
      expect(pageOneBlogs.length, 10);
      expect(finalPageBlogs, orderedEquals(expectedFinalPageBlogs));
    });

    testWidgets('should return no models for an out of range page/limit combo',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 1000, limit: 10));
      expect(blogs, isEmpty);
    });

    testWidgets('should default to no pagination if none is provided',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, models.length);
      expect(blogs, unorderedEquals(models));
    });

    testWidgets('should default to a page size of 100',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 0),
        sortBy: [Blog.NAME.ascending()],
      );
      var expectedBlogs = sortedModels.getRange(0, 100).toList();
      expect(blogs.length, 100);
      expect(blogs, orderedEquals(expectedBlogs));
    });

    testWidgets('should work with a descending sort order',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 0, limit: 10),
        sortBy: [Blog.NAME.descending()],
      );
      var expectedBlogs = models.getRange(990, 1000).toList().reversed.toList();
      expect(blogs.length, 10);
      expect(blogs, orderedEquals(expectedBlogs));
    });

    testWidgets('should work with a query predicate',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 0, limit: 10),
        sortBy: [Blog.NAME.ascending()],
        where: Blog.NAME.beginsWith('blog 1'),
      );
      var expectedBlogs = sortedModels
          .where((blog) => blog.name.startsWith('blog 1'))
          .toList()
          .getRange(0, 10)
          .toList();
      expect(blogs.length, 10);
      expect(blogs, orderedEquals(expectedBlogs));
    });
  });
}

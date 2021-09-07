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
import 'package:collection/collection.dart';

import '../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('pagination', () {
    var models = List.generate(1000, (i) => Blog(name: 'blog $i'));
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
      var pageZeroBlogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 0, limit: 10));
      var expectedPageZeroBlogs = models.getRange(0, 10).toList();
      expect(pageZeroBlogs.length, 10);
      expect(
        ListEquality().equals(pageZeroBlogs, expectedPageZeroBlogs),
        isTrue,
      );

      // page 1
      var pageOneBlogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 1, limit: 10));
      var expectedPageOneBlogs = models.getRange(10, 20).toList();
      expect(pageOneBlogs.length, 10);
      expect(
        ListEquality().equals(pageOneBlogs, expectedPageOneBlogs),
        isTrue,
      );

      // final page
      var finalPageBlogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 99, limit: 10));
      var expectedFinalPageBlogs = models.getRange(990, 1000).toList();
      expect(pageOneBlogs.length, 10);
      expect(
        ListEquality().equals(finalPageBlogs, expectedFinalPageBlogs),
        isTrue,
      );
    });

    testWidgets('should return no models for an out of range page/limit combo',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 1000, limit: 10));
      expect(blogs, isEmpty);
    });

    testWidgets('should default to a page size of 100',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 0));
      var expectedBlogs = models.getRange(0, 100).toList();
      expect(blogs.length, 100);
      expect(ListEquality().equals(blogs, expectedBlogs), isTrue);
    });

    testWidgets('should work with a sort order', (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(
        Blog.classType,
        pagination: QueryPagination(page: 0, limit: 10),
        sortBy: [Blog.NAME.descending()],
      );
      var expectedBlogs = models.getRange(990, 1000).toList().reversed.toList();
      expect(blogs.length, 10);
      expect(ListEquality().equals(blogs, expectedBlogs), isTrue);
    });

    testWidgets('should work with a query predicate',
        (WidgetTester tester) async {
      var blogs = await Amplify.DataStore.query(Blog.classType,
          pagination: QueryPagination(page: 0, limit: 10),
          where: Blog.NAME.beginsWith('blog 1'));
      var expectedBlogs = models
          .where((blog) => blog.name.startsWith('blog 1'))
          .toList()
          .getRange(0, 10)
          .toList();
      expect(blogs.length, 10);
      expect(ListEquality().equals(blogs, expectedBlogs), isTrue);
    });
  });
}

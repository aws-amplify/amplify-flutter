// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('delete', () {
    setUp(() async {
      await configureDataStore();
      // clear data before each test
      await clearDataStore();
    });

    testWidgets('predicate should prevent delete to non matching model',
        (WidgetTester tester) async {
      const originalBlogName = 'non matching blog';
      Blog testBlog = Blog(name: originalBlogName);
      await Amplify.DataStore.save(testBlog);

      await Amplify.DataStore.delete(testBlog,
          where: Blog.NAME.contains("Predicate"));
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 1);
      expect(blogs[0].name, originalBlogName);
    });

    testWidgets('predicate should not prevent delete for matching model',
        (WidgetTester tester) async {
      const originalBlogName = 'matching blog';
      Blog testBlog = Blog(name: originalBlogName);
      await Amplify.DataStore.save(testBlog);

      await Amplify.DataStore.delete(testBlog,
          where: Blog.NAME.contains("matching"));
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 0);
    });
  });
}

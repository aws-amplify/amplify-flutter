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
      expect(
        Amplify.DataStore.delete(testBlog,
            where: Blog.NAME.contains("Predicate")),
        throwsA(isA<DataStoreException>()),
      );
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

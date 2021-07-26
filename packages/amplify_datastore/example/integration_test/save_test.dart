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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('save', () {
    setUp(() async {
      // clear data before each test
      await Amplify.DataStore.clear();
    });

    testWidgets('should save data locally', (WidgetTester tester) async {
      final blogName = 'test name';
      Blog blog = Blog(
        name: blogName,
      );
      await Amplify.DataStore.save(blog);
      var blogs = await Amplify.DataStore.query(Blog.classType);
      expect(blogs.length, 1);
      expect(blogs[0].name, blogName);
    });
  });
}

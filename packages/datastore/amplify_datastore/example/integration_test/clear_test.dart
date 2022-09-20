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

  group('clear', () {
    setUp(() async {
      await configureDataStore();
      await clearDataStore();
    });

    testWidgets('should clear the store', (WidgetTester tester) async {
      Blog blog = Blog(name: 'blog');
      await Amplify.DataStore.save(blog);
      var resultOne = await Amplify.DataStore.query(Blog.classType);
      expect(resultOne, isNotEmpty);
      await Amplify.DataStore.clear();
      var resultTwo = await Amplify.DataStore.query(Blog.classType);
      expect(resultTwo, isEmpty);
    });
  });
}

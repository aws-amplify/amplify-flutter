// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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

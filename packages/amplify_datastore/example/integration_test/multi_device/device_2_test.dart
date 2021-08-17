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
import 'package:amplify_flutter/amplify.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/setup_utils.dart';
import 'multi_device_utils.dart';
import 'mutli_device_contants.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('DataStore', () {
    setUpAll(() async {
      await configureDataStore(cloudSync: true);
      // clear local DB from previous test runs
      await Amplify.DataStore.clear();
      await waitForDeviceOneReady();
      await signalDeviceTwoReady();
    });

    testWidgets(
      'should save data on device one, and observe data on device two',
      (WidgetTester tester) async {
        // listen for a blog to be created from device one
        var newBlog = Amplify.DataStore.observe(Blog.classType)
            .firstWhere((element) => element.item.name == testOneBlogName);

        // signal to device one that test can start
        await signalTestStart(testName: testOneName);

        // wait for the blog to be created from device one
        await newBlog;

        // signal that the test has completed
        await signalTestEnd(testName: testOneName);
      },
      // test will fail if the new blog is not observed within 10 seconds
      timeout: Timeout(Duration(seconds: 10)),
    );
  });
}

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

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('save', () {
    setUp(() async {
      setTestId();
      await configureDataStore(cloudSync: true);
      // clear local DB from previous test runs
      await Amplify.DataStore.clear();
      await signalDeviceOneReady();
      await waitForDeviceTwoReady();
    });

    testWidgets('should save data', (WidgetTester tester) async {
      Blog testComment = Blog(name: 'test blog created from device 1');
      await waitForTestStart(testName: 'should save data');
      await Amplify.DataStore.save(testComment);
      await waitForTestEnd(testName: 'should save data');
      await Amplify.DataStore.delete(testComment);
    });
  });
}

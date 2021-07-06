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

import 'dart:convert';

import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_flutter/categories/amplify_categories.dart';
import 'package:amplify_core/types/index.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');

  TestWidgetsFlutterBinding.ensureInitialized();

  bool platformError = false;

  // Class under test
  AmplifyClass amplify;

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "addPlugin") {
        if (!platformError) {
          return true;
        } else {
          throw PlatformException(code: "AmplifyAlreadyConfiguredException");
        }
      } else {
        return true;
      }
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = new AmplifyClass.protected();

    // Clear out plugins before each test for a fresh state.
    StorageCategory.plugins.clear();
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
    storageChannel.setMockMethodCallHandler(null);
  });

  test(
      'Exception is not thrown if platform exception contains "AmplifyAlreadyConfiguredException" code',
      () async {
    platformError = true;
    try {
      await Amplify.addPlugin(AmplifyStorageS3());
    } catch (e) {
      fail("exception was thrown");
    }
  });

  test(
      'Plugin is added if platform exception contains "AmplifyAlreadyConfiguredException" code',
      () async {
    platformError = true;
    await Amplify.addPlugin(AmplifyStorageS3());
    expect(StorageCategory.plugins.length, 1);
  });

  test('AmplifyException is thrown if addPlugin called twice', () async {
    try {
      await Amplify.addPlugin(AmplifyStorageS3());
      await Amplify.addPlugin(AmplifyStorageS3());
      fail("exception not thrown");
    } on AmplifyException catch (e) {
      expect(e.message,
          'Amplify plugin AmplifyStorageS3 was not added successfully.');
    } catch (e) {
      expect(e, isA<AmplifyException>());
    }
  });
}

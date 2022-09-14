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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_storage_s3/method_channel_storage_s3.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Amplify = MethodChannelAmplify();
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');

  bool platformError = false;

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'addPlugin') {
        if (!platformError) {
          return true;
        } else {
          throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
        }
      } else {
        return true;
      }
    });

    // Clear out plugins before each test for a fresh state.
    Amplify.Storage.reset();
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
      await Amplify.addPlugin(AmplifyStorageS3MethodChannel());
    } on Exception {
      fail('exception was thrown');
    }
  });

  test(
      'Plugin is added if platform exception contains "AmplifyAlreadyConfiguredException" code',
      () async {
    platformError = true;
    await Amplify.addPlugin(AmplifyStorageS3MethodChannel());
    expect(Amplify.Storage.plugins.length, 1);
  });

  test('AmplifyException does not thrown if addPlugin called twice', () async {
    await Amplify.addPlugin(AmplifyStorageS3MethodChannel());
    expect(Amplify.addPlugin(AmplifyStorageS3MethodChannel()), completes);
  });
}

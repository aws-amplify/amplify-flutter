/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_core/amplify_core.dart';

void main() {
  const storageChannel = MethodChannel('com.amazonaws.amplify/storage_s3');
  const coreChannel = MethodChannel('com.amazonaws.amplify/core');

  final amplify = Amplify();
  final storage = AmplifyStorageS3();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'getUrl') {
        return {
          'url': 'downloadUrl',
        };
      } else {
        return true;
      }
    });
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    storageChannel.setMockMethodCallHandler(null);
    coreChannel.setMockMethodCallHandler(null);
  });

  test('getUrl request returns a GetUrlResult', () async {
    await amplify.addPlugin(storagePlugins: [storage]);
    await amplify.configure('{}');
    expect(await Amplify.Storage.getUrl(key: 'keyForFile'),
        isInstanceOf<GetUrlResult>());
  });
}

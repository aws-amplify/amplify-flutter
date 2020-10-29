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

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3/src/Exceptions/StorageExceptionMessages.dart'
    as messages;
import 'package:amplify_core/amplify_core.dart';

void main() {
  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');
  var isConfigured = false;

  Amplify amplify = new Amplify();
  AmplifyStorageS3 storage = AmplifyStorageS3();

  configureAmplify() async {
    await amplify.addPlugin(storagePlugins: [storage]);
    await amplify.configure('{}');
    isConfigured = true;
  }

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });

    if (!isConfigured) {
      configureAmplify();
    }
  });

  tearDown(() {
    storageChannel.setMockMethodCallHandler(null);
    coreChannel.setMockMethodCallHandler(null);
  });

  test('list request returns the correct ListResult in the happy case',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'items': [
          {
            'key': 'key1',
            'eTag': 'etag1',
            'lastModified': '2020-07-24 09:32:36 +0000',
            'size': 123,
          },
          {
            'key': 'key2',
            'eTag': 'etag2',
            'lastModified': null,
            'size': 456,
          },
        ],
      };
    });
    var listResult = await Amplify.Storage.list();
    expect(listResult, isInstanceOf<ListResult>());
    expect(listResult.items.length, 2);

    var item1 = listResult.items[0];
    expect(item1, isInstanceOf<StorageItem>());
    expect(item1.key, 'key1');
    expect(item1.eTag, 'etag1');
    expect(item1.lastModified, DateTime.parse('2020-07-24 09:32:36 +0000'));
    expect(item1.size, 123);

    var item2 = listResult.items[1];
    expect(item2, isInstanceOf<StorageItem>());
    expect(item2.key, 'key2');
    expect(item2.eTag, 'etag2');
    expect(item2.lastModified, null);
    expect(item2.size, 456);
  });

  test(
      'Throws StorageException when method channel result does not include the items list',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {};
    });
    try {
      await Amplify.Storage.list();
    } on StorageException catch (err) {
      expect(err.message, messages.MALFORMED_PLATFORM_CHANNEL_RESULT);
      return;
    }
    throw new Exception('Expected a StorageException');
  });

  test(
      'Throws StorageException when method channel result does not include the key attribute in any of the storage items',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'items': [
          {
            'key': 'key1',
            'eTag': 'etag1',
            'lastModified': '2020-07-24 09:32:36 +0000',
            'size': 123,
          },
          {
            // missing the required 'key' attribute
            'eTag': 'etag2',
            'lastModified': '2020-07-30 19:43:22 +0000',
            'size': 456,
          },
        ],
      };
    });
    try {
      await Amplify.Storage.list();
    } on StorageException catch (err) {
      expect(err.message, messages.MALFORMED_PLATFORM_CHANNEL_RESULT);
      return;
    }
    throw new Exception('Expected a StorageException');
  });

  test('A PlatformException results in a StorageException being thrown',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: 'AMPLIFY_EXCEPTION',
          message: messages.LIST_FAILED,
          details: {});
    });
    try {
      await Amplify.Storage.list();
    } on StorageException catch (err) {
      expect(err.message, messages.LIST_FAILED);
      return;
    }
    throw new Exception('Expected a StorageException');
  });
}

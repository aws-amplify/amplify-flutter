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

import 'package:amplify_storage_s3/src/Exceptions/StorageExceptionType.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_core/amplify_core.dart';
import './resources/platform_exception_details.dart';

void main() {
  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');
  var isConfigured = false;

  Amplify amplify = new Amplify();
  AmplifyStorageS3 storage = AmplifyStorageS3();

  configureAmplify() async {
    await amplify.addPlugin(storagePlugins: [storage]);
    await amplify.configure("{}");
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

  test('getUrl request returns the correct GetUrlResult in the happy case',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'url': 'downloadUrl',
      };
    });
    var getUrlResult = await Amplify.Storage.getUrl(key: 'keyForFile');
    expect(getUrlResult, isInstanceOf<GetUrlResult>());
    expect(getUrlResult.url, 'downloadUrl');
  });

  test(
      'Throws StorageException when method channel result does not include the download url',
      () async {
    const exceptionType =
        StorageExceptionType.MALFORMED_PLATFORM_CHANNEL_RESULT;
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {};
    });
    try {
      await Amplify.Storage.getUrl(key: 'keyForFile');
    } on StorageException catch (e) {
      expect(e.code, exceptionType.code);
      expect(e.message, exceptionType.message);
      expect(e.details, {
        'operation': 'GetUrl',
        'malformed field': 'url cannot be null',
      });
      return;
    }
    throw new Exception('Expected a StorageException');
  });

  test('A PlatformException results in a StorageException being thrown',
      () async {
    const exceptionType = StorageExceptionType.GET_URL_FAILED;
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: 'AMPLIFY_EXCEPTION',
          message: exceptionType.message,
          details: exceptionDetails);
    });
    try {
      await Amplify.Storage.getUrl(key: 'keyForFile');
    } on StorageException catch (e) {
      expect(e.code, exceptionType.code);
      expect(e.message, exceptionType.message);
      expect(e.details, exceptionDetails);
      return;
    }
    throw new Exception('Expected a StorageException');
  });
}

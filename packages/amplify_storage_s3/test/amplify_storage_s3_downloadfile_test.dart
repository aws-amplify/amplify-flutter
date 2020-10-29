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

import 'package:amplify_storage_s3/src/Exceptions/StorageExceptionMessages.dart'
    as messages;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_core/amplify_core.dart';
import 'dart:io';

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

  test(
      'downloadFile request returns the correct DownloadFileResult in the happy case',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'path': 'downloadFilePath',
      };
    });
    var downloadFileResult = await Amplify.Storage.downloadFile(
        key: 'keyForFile', local: File('path/to/file'));
    expect(downloadFileResult, isInstanceOf<DownloadFileResult>());
    expect(downloadFileResult.file.path, 'downloadFilePath');
  });

  test(
      'Throws StorageException when method channel result does not include a file path',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {};
    });
    try {
      await Amplify.Storage.downloadFile(
          key: 'keyForFile', local: File('path/to/file'));
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
          message: messages.DOWNLOAD_FILE_FAILED,
          details: {});
    });
    try {
      await Amplify.Storage.downloadFile(
          key: 'keyForFile', local: File('path/to/file'));
    } on StorageException catch (err) {
      expect(err.message, messages.DOWNLOAD_FILE_FAILED);
      return;
    }
    throw new Exception('Expected a StorageException');
  });
}

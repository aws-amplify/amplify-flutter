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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/method_channel_storage_s3.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');

  AmplifyStorageS3 storage = AmplifyStorageS3MethodChannel();

  tearDown(() {
    storageChannel.setMockMethodCallHandler(null);
  });

  test('Remove request returns the correct RemoveResult in the happy case',
      () async {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {
        'key': 'keyForFile',
      };
    });
    var removeResult =
        await storage.remove(request: RemoveRequest(key: 'keyForFile'));
    expect(removeResult, isInstanceOf<RemoveResult>());
    expect(removeResult.key, 'keyForFile');
  });

  test(
      'A PlatformException on a "remove" call results in a StorageException being throw',
      () async {
    Map<String, String> details = Map.from({
      'message': 'Could not remove file.',
      'recoverySuggestion': 'Check permissions.',
    });
    PlatformException exception =
        PlatformException(code: 'StorageException', details: details);
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return throw exception;
    });
    try {
      await storage.remove(request: RemoveRequest(key: 'keyForFile'));
    } on StorageException catch (e) {
      expect(e.message, details['message']);
      expect(e.recoverySuggestion, details['recoverySuggestion']);
      return;
    }
    throw new Exception('Expected a StorageException');
  });
}

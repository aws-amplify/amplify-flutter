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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'test_models/ModelProvider.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore =
      AmplifyDataStore(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('Clear executes successfully', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    Future<void> clearFuture = dataStore.clear();
    expect(clearFuture, completes);
  });

  test(
      'A PlatformException for a failed API call results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: 'AMPLIFY_EXCEPTION',
          message: 'AMPLIFY_DATASTORE_CLEAR_FAILED',
          details: {});
    });
    expect(
        () => dataStore.clear(),
        throwsA(isA<DataStoreError>().having((error) => error.cause,
            'error message', 'AMPLIFY_DATASTORE_CLEAR_FAILED')));
  });

  test(
      'An unrecognized PlatformException results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(
          code: 'AMPLIFY_EXCEPTION',
          message: 'An unrecognized message',
          details: {});
    });
    expect(
        () => dataStore.clear(),
        throwsA(isA<DataStoreError>().having(
          (error) => error.cause,
          'error message',
          'UNRECOGNIZED_DATASTORE_ERROR',
        )));
  });
}

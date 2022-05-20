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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'test_models/ModelProvider.dart';

// Utilized from: https://github.com/flutter/flutter/issues/63465 #CyrilHu
// For mocking Native -> Dart
extension MockMethodChannel on MethodChannel {
  Future<void> invokeMockMethod(String method, dynamic arguments) async {
    const codec = StandardMethodCodec();
    final data = codec.encodeMethodCall(MethodCall(method, arguments));

    return ServicesBinding.instance.defaultBinaryMessenger
        .handlePlatformMessage(
      name,
      data,
      (ByteData? data) {},
    );
  }
}

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyException? receivedException;

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    AmplifyDataStore dataStore = AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        errorHandler: (exception) => {receivedException = exception});
    return dataStore.configureDataStore();
  });

  test(
      'DataStoreException from MethodChannel is properly serialized and called',
      () async {
    await dataStoreChannel.invokeMockMethod("errorHandler", {
      'errorCode': 'DataStoreException',
      'errorMessage': 'ErrorMessage',
      'details': {
        'message': 'message',
        'recoverySuggestion': 'recoverySuggestion',
        'underlyingException': 'underlyingException'
      }
    });
    expect(
        receivedException,
        DataStoreException.fromMap({
          'message': 'message',
          'recoverySuggestion': 'recoverySuggestion',
          'underlyingException': 'underlyingException'
        }));
  });

  test(
      'Unknown DataStoreException from MethodChannel is properly serialized and called',
      () async {
    await dataStoreChannel
        .invokeMockMethod("errorHandler", {'badErrorFormat': 'badErrorFormat'});
    expect(
        receivedException,
        DataStoreException(AmplifyExceptionMessages.missingExceptionMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.missingRecoverySuggestion,
            underlyingException:
                {'badErrorFormat': 'badErrorFormat'}.toString()));
  });
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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

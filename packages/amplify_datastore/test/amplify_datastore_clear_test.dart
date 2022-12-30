// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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
      'A PlatformException for a failed API call results in the corresponding DataStoreException',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(code: 'DataStoreException', details: {
        'message': 'Clear failed for whatever known reason',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      });
    });
    expect(
        () => dataStore.clear(),
        throwsA(isA<DataStoreException>()
            .having((exception) => exception.message, 'message',
                'Clear failed for whatever known reason')
            .having((exception) => exception.recoverySuggestion,
                'recoverySuggestion', 'some insightful suggestion')
            .having((exception) => exception.underlyingException,
                'underlyingException', 'Act of God')));
  });

  test(
      'An unrecognized PlatformException results in a generic DataStoreException',
      () async {
    var platformException =
        PlatformException(code: 'BadExceptionCode', details: {
      'message': 'Clear failed for whatever known reason',
      'recoverySuggestion': 'some insightful suggestion',
      'underlyingException': 'Act of God'
    });
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw platformException;
    });
    expect(
        () => dataStore.clear(),
        throwsA(isA<DataStoreException>()
            .having((exception) => exception.message, 'message',
                AmplifyExceptionMessages.missingExceptionMessage)
            .having(
                (exception) => exception.recoverySuggestion,
                'recoverySuggestion',
                AmplifyExceptionMessages.missingRecoverySuggestion)
            .having((exception) => exception.underlyingException,
                'underlyingException', platformException.toString())));
  });
}

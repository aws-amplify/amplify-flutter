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
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore =
      AmplifyDataStore(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('Saving a model without predicate executes successfully', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "save") {
        expect(
          methodCall.arguments,
          await getJsonFromFile(
              'save_api/request/instance_without_predicate.json'),
        );
      }
    });
    Post post = Post(
        id: '9fc5fab4-37ff-4566-97e5-19c5d58a4c22',
        title: 'New Post being saved',
        rating: 10,
        created: TemporalDateTime.fromString('2020-11-12T03:15:48+03:18'));
    await dataStore.save(post);
  });

  test(
      'A PlatformException for malformed request results in the corresponding DataStoreError',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(code: 'DataStoreException', details: {
        'message': 'Save failed for whatever known reason',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      });
    });
    expect(
        () => dataStore.save(Post(
            title: 'Test Post',
            rating: 10,
            created: TemporalDateTime.fromString("2020-02-20T20:20:20-08:00"))),
        throwsA(isA<DataStoreException>()
            .having((exception) => exception.message, 'message',
                'Save failed for whatever known reason')
            .having((exception) => exception.recoverySuggestion,
                'recoverySuggestion', 'some insightful suggestion')
            .having((exception) => exception.underlyingException,
                'underlyingException', 'Act of God')));
  });
}

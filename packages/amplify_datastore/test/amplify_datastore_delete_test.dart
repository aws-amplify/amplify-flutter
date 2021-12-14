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
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'test_models/ModelProvider.dart';

void main() {
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');

  AmplifyDataStore dataStore =
      AmplifyDataStore(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('delete with a valid model executes without an exception ', () async {
    var json =
        await getJsonFromFile('delete_api/request/instance_no_predicate.json');
    var model = json['serializedModel'];
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    Post instance = Post(
        title: model['title'],
        rating: model['rating'],
        created: TemporalDateTime.fromString(model['created']),
        id: model['id']);
    Future<void> deleteFuture = dataStore.delete(instance);
    expect(deleteFuture, completes);
  });

  test(
      'A PlatformException for a failed API call results in the corresponding DataStoreException',
      () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw PlatformException(code: 'DataStoreException', details: {
        'message': 'Delete failed for whatever known reason',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      });
    });
    expect(
        () => dataStore.delete(Post(
            id: '4281dfba-96c8-4a38-9a8e-35c7e893ea47',
            title: 'test title',
            rating: 0,
            created:
                TemporalDateTime.fromString("2021-11-09T18:53:12.183540Z"))),
        throwsA(isA<DataStoreException>()
            .having((exception) => exception.message, 'message',
                'Delete failed for whatever known reason')
            .having((exception) => exception.recoverySuggestion,
                'recoverySuggestion', 'some insightful suggestion')
            .having((exception) => exception.underlyingException,
                'underlyingException', 'Act of God')));
  });
}

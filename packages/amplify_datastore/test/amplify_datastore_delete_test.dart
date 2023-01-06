// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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

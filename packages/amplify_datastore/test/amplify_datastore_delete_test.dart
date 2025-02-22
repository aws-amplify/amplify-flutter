// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const dataStoreChannel = MethodChannel('com.amazonaws.amplify/datastore');

  final dataStore = AmplifyDataStore(modelProvider: ModelProvider.instance);

  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      dataStoreChannel,
      null,
    );
  });

  test('delete with a valid model executes without an exception ', () async {
    final json =
        await getJsonFromFile('delete_api/request/instance_no_predicate.json')
            as Map<String, Object?>;
    final model = json['serializedModel'] as Map<String, Object?>;
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      dataStoreChannel,
      (MethodCall methodCall) async {
        return null;
      },
    );
    final instance = Post(
      title: model['title'] as String,
      rating: model['rating'] as int,
      created: TemporalDateTime.fromString(model['created'] as String),
      id: model['id'] as String?,
    );
    final deleteFuture = dataStore.delete(instance);
    expect(deleteFuture, completes);
  });

  test(
      'A PlatformException for a failed API call results in the corresponding DataStoreException',
      () async {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      dataStoreChannel,
      (MethodCall methodCall) async {
        throw PlatformException(
          code: 'DataStoreException',
          details: {
            'message': 'Delete failed for whatever known reason',
            'recoverySuggestion': 'some insightful suggestion',
            'underlyingException': 'Act of God',
          },
        );
      },
    );
    expect(
      () => dataStore.delete(
        Post(
          id: '4281dfba-96c8-4a38-9a8e-35c7e893ea47',
          title: 'test title',
          rating: 0,
          created: TemporalDateTime.fromString('2021-11-09T18:53:12.183540Z'),
        ),
      ),
      throwsA(
        isA<DataStoreException>()
            .having(
              (exception) => exception.message,
              'message',
              'Delete failed for whatever known reason',
            )
            .having(
              (exception) => exception.recoverySuggestion,
              'recoverySuggestion',
              'some insightful suggestion',
            )
            .having(
              (exception) => exception.underlyingException,
              'underlyingException',
              'Act of God',
            ),
      ),
    );
  });
}

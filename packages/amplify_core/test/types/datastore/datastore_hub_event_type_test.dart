// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  late StreamController<DataStoreHubEvent> controller;

  group('DataStore Hub Event Types', () {
    setUp(() async {
      Amplify.Hub.close();
      controller = StreamController.broadcast();
    });

    tearDown(() async {
      await controller.close();
    });

    test('DataStoreHubEventType.ready', () {
      final eventName = DataStoreHubEventType.ready.name;
      final event = DataStoreHubEvent(
        eventName,
        type: DataStoreHubEventType.ready,
      );
      expect(event.eventName, equals(eventName));
      expect(event.payload, isNull);
      expect(event.type, equals(DataStoreHubEventType.ready));

      Amplify.Hub.addChannel(
        HubChannel.DataStore,
        controller.stream,
      );

      final subscriber = expectAsync1((e) => expect(e, equals(event)));
      Amplify.Hub.listen(HubChannel.DataStore, subscriber);

      controller.add(event);
    });

    test('DataStoreHubEventType.outboxMutationProcessed', () {
      final eventName = DataStoreHubEventType.outboxMutationProcessed.name;
      final payload = OutboxMutationEvent(
        {
          'modelName': 'Post',
          'element': {
            'model': {
              'serializedData': {
                'id': 'id',
                'title': 'title',
                'content': 'content',
                'rating': 0,
                'created': 0,
                'updated': 0,
              },
            },
            'syncMetadata': {
              '_version': 0,
              '_deleted': false,
              '_lastChangedAt': 0,
            },
          },
        },
        MockModelProviderInterface(),
        eventName,
      );
      final event = DataStoreHubEvent(
        eventName,
        payload: payload,
        type: DataStoreHubEventType.outboxMutationProcessed,
      );
      expect(event.eventName, equals(eventName));
      expect(event.payload, payload);
      expect(event.type, equals(DataStoreHubEventType.outboxMutationProcessed));

      Amplify.Hub.addChannel(
        HubChannel.DataStore,
        controller.stream,
      );

      final subscriber = expectAsync1((e) => expect(e, equals(event)));
      Amplify.Hub.listen(HubChannel.DataStore, subscriber);

      controller.add(event);
    });
  });
}

class MockModelProviderInterface implements ModelProviderInterface {
  @override
  List<ModelSchema> modelSchemas = [];

  @override
  String version = '1';

  @override
  List<ModelSchema> customTypeSchemas = [];

  @override
  ModelType<Model> getModelTypeByModelName(String modelName) {
    return const MockModelType();
  }
}

class MockModelType extends ModelType<Model> {
  const MockModelType() : super();

  @override
  Model fromJson(Map<String, dynamic> jsonData) {
    return const MockModel();
  }
}

class MockModel extends Model {
  const MockModel() : super();
}

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

import 'dart:async';
import 'dart:convert';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore_stream_controller.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'test_models/ModelProvider.dart';

void main() {
  const MethodChannel datastoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');
  const MethodChannel coreChannel = MethodChannel('com.amazonaws.amplify/core');
  const String channelName = "com.amazonaws.amplify/datastore_hub_events";

  DataStoreStreamController controller = DataStoreStreamController();
  controller.registerModelsForHub(ModelProvider.instance);
  StreamController dataStoreStreamController =
      controller.datastoreStreamController;
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    datastoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    coreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(channelName, null);
  });

  handler(event) {
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .handlePlatformMessage(
          channelName,
          event,
          (ByteData? reply) {},
        );
  }

  test('Can receive Ready Event', () async {
    var json = await getJsonFromFile('hub/readyEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub = dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    expect(events.last, isInstanceOf<HubEvent>());
    expect(events.last.eventName, equals("ready"));
  });

  test('Can receive SubscriptionsEstablished Event', () async {
    var json = await getJsonFromFile('hub/subscriptionsEstablishedEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub = dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    expect(events.last, isInstanceOf<HubEvent>());
    expect(events.last.eventName, equals("subscriptionsEstablished"));
  });

  test('Can receive SyncQueriesReady Event', () async {
    var json = await getJsonFromFile('hub/syncQueriesReadyEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub = dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    expect(events.last, isInstanceOf<HubEvent>());
    expect(events.last.eventName, equals("syncQueriesReady"));
  });

  test('Can receive NetworkStatus Event', () async {
    var json = await getJsonFromFile('hub/networkStatusEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    NetworkStatusEvent payload = events.last.payload as NetworkStatusEvent;
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.active, equals(true));
  });

  test('Can receive ModelSynced Event', () async {
    var json = await getJsonFromFile('hub/modelSyncedEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    ModelSyncedEvent payload = events.last.payload as ModelSyncedEvent;
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.added, 1);
    expect(payload.deleted, 0);
    expect(payload.isDeltaSync, true);
    expect(payload.isFullSync, false);
    expect(payload.updated, 0);
    expect(payload.modelName, "Post");
  });

  test('Can receive OutboxMutation (Enqueued) Event', () async {
    var json = await getJsonFromFile('hub/outboxMutationEnqueuedEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    OutboxMutationEvent payload = events.last.payload as OutboxMutationEvent;
    TemporalDateTime parsedDate = TemporalDateTime.fromString(
        json["element"]["model"]["serializedData"]["created"]);
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.modelName, "Post");
    expect(payload.element, isInstanceOf<HubEventElement>());
    expect(payload.element.model, isInstanceOf<Model>());
    expect(payload.element.model.getId(),
        equals("43036c6b-8044-4309-bddc-262b6c686026"));
    expect((payload.element.model as Post).title, equals("Title 1"));
    expect((payload.element.model as Post).created, equals(parsedDate));
  });

  test('Can receive OutboxMutation (Processed) Event', () async {
    var json = await getJsonFromFile('hub/outboxMutationProcessedEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    OutboxMutationEvent payload = events.last.payload as OutboxMutationEvent;
    HubEventElementWithMetadata element =
        payload.element as HubEventElementWithMetadata;
    TemporalDateTime parsedDate = TemporalDateTime.fromString(
        json["element"]["model"]["serializedData"]["created"]);
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.modelName, "Post");
    expect(element, isInstanceOf<HubEventElement>());
    expect(element, isInstanceOf<HubEventElementWithMetadata>());
    expect(element.model, isInstanceOf<Model>());
    expect(
        element.model.getId(), equals("43036c6b-8044-4309-bddc-262b6c686026"));
    expect((element.model as Post).title, equals("Title 1"));
    expect((element.model as Post).created, equals(parsedDate));
    expect(element.deleted, equals(false));
    expect(element.version, equals(1));
    expect(element.lastChangedAt, equals(1624492860));
  });

  test('Can receive OutboxStatus Event', () async {
    var json = await getJsonFromFile('hub/outboxStatusEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    OutboxStatusEvent payload = events.last.payload as OutboxStatusEvent;
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.isEmpty, equals(true));
  });

  test('Can receive SyncQueriesStarted Event', () async {
    var json = await getJsonFromFile('hub/syncQueriesStartedEvent.json');
    json["models"] = jsonEncode(json["models"]);
    void emitEvent(ByteData event) {
      handler(event);
    }

    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
        return null;
      },
    );

    List<DataStoreHubEvent> events = [];
    StreamSubscription sub =
        await dataStoreStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();

    SyncQueriesStartedEvent payload =
        events.last.payload as SyncQueriesStartedEvent;
    expect(events.last, isInstanceOf<HubEvent>());
    expect(payload.models.length, equals(1));
    expect(payload.models.first, equals("Post"));
  });
}

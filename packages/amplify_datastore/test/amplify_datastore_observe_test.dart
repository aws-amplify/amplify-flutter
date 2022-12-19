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

  // event channels are backed by method channels. However
  // event channels cannot be mocked like method channels.
  const MethodChannel eventChannel =
      MethodChannel('com.amazonaws.amplify/datastore_observe_events');

  AmplifyDataStore dataStore =
      AmplifyDataStore(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {
    dataStoreChannel.setMockMethodCallHandler(null);
  });

  test('observe a valid model type and receive an item ', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect("setUpObserve", methodCall.method);
    });
    var json =
        await getJsonFromFile('observe_api/post_type_success_event.json');
    eventChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      ServicesBinding.instance.defaultBinaryMessenger.handlePlatformMessage(
        "com.amazonaws.amplify/datastore_observe_events",
        const StandardMethodCodec().encodeSuccessEnvelope(json),
        (ByteData? data) {},
      );
    });
    dataStore.observe(Post.classType).listen((event) {
      expect(
          event.item,
          Post(
              id: "43036c6b-8044-4309-bddc-262b6c686026",
              title: "Title 2",
              rating: 0,
              created:
                  TemporalDateTime.fromString("2020-02-20T20:20:20-08:00")));
      expect(event.eventType, EventType.create);
    });
  });

  test('observe a model type, but event is for different model type', () async {
    dataStoreChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect("setUpObserve", methodCall.method);
    });
    var json =
        await getJsonFromFile('observe_api/blog_type_success_event.json');
    eventChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      ServicesBinding.instance.defaultBinaryMessenger.handlePlatformMessage(
        "com.amazonaws.amplify/datastore_observe_events",
        const StandardMethodCodec().encodeSuccessEnvelope(json),
        (ByteData? data) {},
      );
    });
    dataStore.observe(Post.classType).listen((event) {
      fail("No message should ever be received");
    });
  });
}

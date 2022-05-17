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

import 'package:amplify_auth_cognito/amplify_auth_cognito_stream_controller.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_test/amplify_test.dart';

var log = [];

void main() {
  const MethodChannel authChannel =
      MethodChannel('com.amazonaws.amplify/auth_cognito');
  const String channelName = 'com.amazonaws.amplify/auth_cognito_events';
  const StandardMethodCodec standardCodec = StandardMethodCodec();
  final StreamController authStreamController =
      AuthStreamController().authStreamController;
  TestWidgetsFlutterBinding.ensureInitialized();

  void emitValues(ByteData? event) {
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .handlePlatformMessage(
          channelName,
          event,
          (ByteData? reply) {},
        );
  }

  setUpAll(() async {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(
      channelName,
      (ByteData? message) async {
        return standardCodec.encodeSuccessEnvelope(null);
      },
    );
  });

  tearDownAll(() {
    ambiguate(ServicesBinding.instance)!
        .defaultBinaryMessenger
        .setMockMessageHandler(channelName, null);
    authStreamController.close();
  });

  test('Can receive Signed In Event', () async {
    final json = await getJsonFromFile('hub/signedInEvent.json');

    List<AuthHubEvent> events = [];
    StreamSubscription sub = authStreamController.stream.listen((event) {
      events.add(event);
    });

    emitValues(standardCodec.encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);
    expect(events.last, isInstanceOf<AuthHubEvent>());
    expect(events.last.eventName, equals("SIGNED_IN"));
    sub.cancel();
  });

  test('Can receive Signed Out Event', () async {
    final json = await getJsonFromFile('hub/signedOutEvent.json');

    List<AuthHubEvent> events = [];
    StreamSubscription sub = authStreamController.stream.listen((event) {
      events.add(event);
    });

    emitValues(standardCodec.encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);
    expect(events.last, isInstanceOf<AuthHubEvent>());
    expect(events.last.eventName, equals("SIGNED_OUT"));
    sub.cancel();
  });

  test('Can receive Session Expired Event', () async {
    final json = await getJsonFromFile('hub/sessionExpiredEvent.json');

    List<AuthHubEvent> events = [];
    StreamSubscription sub = authStreamController.stream.listen((event) {
      events.add(event);
    });

    emitValues(standardCodec.encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);
    expect(events.last, isInstanceOf<AuthHubEvent>());
    expect(events.last.eventName, equals("SESSION_EXPIRED"));
    sub.cancel();
  });

  test('Can handle unknown event', overridePrint(() async {
    final json = await getJsonFromFile('hub/unknownEvent.json');

    List<AuthHubEvent> events = [];
    StreamSubscription sub = authStreamController.stream.listen((event) {
      events.add(event);
    });

    emitValues(standardCodec.encodeSuccessEnvelope(json));
    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    expect(events, isEmpty);
  }));
}

void Function() overridePrint(void testFn()) => () {
      var spec = new ZoneSpecification(print: (_, __, ___, String msg) {
        log.add(msg);
      });
      return Zone.current.fork(specification: spec).run<void>(testFn);
    };

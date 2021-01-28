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
import 'package:amplify_auth_cognito/src/CognitoHubEvents/AuthHubEvent.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/test_utils/get_json_from_file.dart';

var log = [];

void main() {
  const MethodChannel authChannel = MethodChannel('com.amazonaws.amplify/auth_cognito');
  const String channelName = 'com.amazonaws.amplify/auth_cognito_events';
  AuthStreamController controller = AuthStreamController();
  StreamController authStreamController = controller.authStreamController;
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler(channelName, null);
  });

  handler(event) {
    ServicesBinding.instance.defaultBinaryMessenger.handlePlatformMessage(
      channelName,
      event,
      (ByteData reply) {},
    );
  }

  test('Can receive Signed In Event', () async {
    var json =  await getJsonFromFile('hub/signedInEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    await ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channelName,
      (ByteData message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
      },
    );

    List<AuthHubEvent> events = [];
    StreamSubscription sub = authStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    expect(events.last, isInstanceOf<AuthHubEvent>());   
    expect(events.last.eventName, equals("SIGNED_IN"));
  });

  test('Can receive Signed Out Event', () async {
    var json =  await getJsonFromFile('hub/signedOutEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    await ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channelName,
      (ByteData message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
      },
    );
    List<AuthHubEvent> events = [];
    StreamSubscription sub  = authStreamController.stream.listen((event) {
      events.add(event);
    });

    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    expect(events.last, isInstanceOf<AuthHubEvent>());   
    expect(events.last.eventName, equals("SIGNED_OUT"));
  });

  test('Can receive Session Expired Event', () async {
    var json =  await getJsonFromFile('hub/sessionExpiredEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    await ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channelName,
      (ByteData message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
      },
    );
    List<AuthHubEvent> events = [];
    StreamSubscription sub  = authStreamController.stream.listen((event) {
      events.add(event);
    });
    
    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    expect(events.last, isInstanceOf<AuthHubEvent>());
    expect(events.last.eventName, equals("SESSION_EXPIRED"));
  });

  test('Can handle unknown event',  overridePrint(() async {
    var json =  await getJsonFromFile('hub/unknownEvent.json');
    void emitEvent(ByteData event) {
      handler(event);
    }

    await ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler(
      channelName,
      (ByteData message) async {
        emitEvent(const StandardMethodCodec().encodeSuccessEnvelope(json));
      },
    );

    StreamSubscription sub = authStreamController.stream.listen((event) {});
    
    await Future<void>.delayed(Duration.zero);
    sub.cancel();
    expect(log.last, 'An Unrecognized Auth Hub event has been detected on the event channel.');
  }));
}

void Function() overridePrint(void testFn()) => () {
  var spec = new ZoneSpecification(
    print: (_, __, ___, String msg) {
      log.add(msg);
    }
  );
  return Zone.current.fork(specification: spec).run<void>(testFn);
};

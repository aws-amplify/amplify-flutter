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
import 'package:amplify_flutter/amplify.dart';
import 'utils/get_json_from_file.dart';

void main() {
  const MethodChannel authChannel = MethodChannel('com.amazonaws.amplify/auth_cognito');
  const String channelName = 'com.amazonaws.amplify/auth_cognito_events';

  AmplifyAuthCognito auth = AmplifyAuthCognito();

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

  test('Amplify.Hub.listen with auth channel returns a StreamSubscription', () async {
    await Amplify.addPlugin(auth);
    var sub = Amplify.Hub.listen([HubChannel.Auth], (msg) {});
    expect(sub, isInstanceOf<StreamSubscription>());
    await sub.cancel();
  });

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
    StreamSubscription sub  = authStreamController.stream.listen((event) {
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
}

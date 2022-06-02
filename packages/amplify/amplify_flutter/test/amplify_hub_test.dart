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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mocks/mock_stream_controller.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Amplify = MethodChannelAmplify();
  const MethodChannel channel = MethodChannel('amplify/amplify_core');
  MockStreamController mockPluginController = MockStreamController();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('Amplify.Hub.listen returns a StreamSubscription', () async {
    var sub = Amplify.Hub.listen(HubChannel.Auth, (msg) {});
    expect(sub, isInstanceOf<StreamSubscription>());
    sub.cancel();
  });

  test(
      'When channel is added and Hub is listening, underlying channel should have listener',
      () async {
    Amplify.Hub.addChannel<AuthUser, AuthHubEvent>(
      HubChannel.Auth,
      mockPluginController.thisController.stream.cast(),
    );
    StreamController underlying = mockPluginController.underlyingStream;
    Amplify.Hub.listen(HubChannel.Auth, (msg) {});
    expect(underlying.hasListener, true);
  });

  test(
      'Underlying stream event is rebroadcast on the controller returned from listen',
      () async {
    Amplify.Hub.addChannel<AuthUser, AuthHubEvent>(
      HubChannel.Auth,
      mockPluginController.thisController.stream.cast(),
    );
    final StreamController<HubEvent> underlying =
        mockPluginController.underlyingStream;
    const HubEvent reBroadcastEvent = MockHubEvent('hear me!');
    Amplify.Hub.listen(HubChannel.Auth, expectAsync1((msg) {
      expect(msg, reBroadcastEvent);
    }));
    underlying.add(reBroadcastEvent);
  });

  // TODO: Figure out async cancellation tests

  // test('Underlying stream event is cancelled when Hub subscription is cancelled and listener count is 0', () async {
  //   Amplify.Hub.addChannel('fake', mockPluginController.thisController);
  //   StreamController underlying = mockPluginController.underlyingStream;
  //   StreamSubscription sub = Amplify.Hub.listen(channels: ['fake'], listener: (msg) {});
  //   Future cancel = sub.cancel();
  //   cancel.then((value) => {
  //     expect(underlying.hasListener, false)
  //   });
  // });

  // test('Underlying stream event is not cancelled when only one Hub listener is cancelled', () async {
  //   Amplify.Hub.addChannel('fake', mockPluginController.thisController);
  //   StreamController underlying = mockPluginController.underlyingStream;
  //   StreamSubscription sub1 = Amplify.Hub.listen(channels: ['fake'], listener: (msg) {});
  //   StreamSubscription sub2 = Amplify.Hub.listen(channels: ['fake'], listener: (msg) {});
  //   await sub1.cancel();
  //   expect(underlying.hasListener, true);
  // });
}

// ignore_for_file: close_sinks

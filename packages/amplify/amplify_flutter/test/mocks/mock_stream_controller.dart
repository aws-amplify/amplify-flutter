// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';

final fakeEventChannel = StreamController<MockHubEvent>.broadcast(
  onListen: () => safePrint('listening'),
  onCancel: () => safePrint('canceling'),
);

class MockHubEvent extends HubEvent {
  const MockHubEvent(String eventName) : super(eventName);
}

class MockStreamController {
  StreamController<MockHubEvent> get thisController {
    return controller;
  }

  StreamController<MockHubEvent> get underlyingStream {
    return fakeEventChannel;
  }
}

final StreamController<MockHubEvent> controller = StreamController.broadcast(
  onListen: () {
    fakeEventChannel.stream.listen(controller.add);
  },
  onCancel: () {
    if (!controller.hasListener) {
      fakeEventChannel.close();
    }
  },
);

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

StreamController fakeEventChannel = StreamController<dynamic>.broadcast(
    onListen: () => print('listening'), onCancel: () => print('canceling'));

class FakeStreamController {
  StreamController get thisController {
    return controller;
  }

  StreamController get underlyingStream {
    return fakeEventChannel;
  }
}

StreamController controller = StreamController<dynamic>.broadcast(
  onListen: () {
    fakeEventChannel.stream.listen((event) {
      controller.add(event);
    });
  },
  onCancel: () {
    if (!controller.hasListener) {
      fakeEventChannel.close();
    }
  },
);

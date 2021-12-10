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

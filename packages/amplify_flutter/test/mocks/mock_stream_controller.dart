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

import 'package:amplify_core/amplify_core.dart';

final fakeEventChannel = StreamController<HubEvent>.broadcast(
  onListen: () => safePrint('listening'),
  onCancel: () => safePrint('canceling'),
);

class MockStreamController {
  StreamController<HubEvent> get thisController {
    return controller;
  }

  StreamController<HubEvent> get underlyingStream {
    return fakeEventChannel;
  }
}

final StreamController<HubEvent> controller = StreamController.broadcast(
  onListen: () {
    fakeEventChannel.stream.listen(controller.add);
  },
  onCancel: () {
    if (!controller.hasListener) {
      fakeEventChannel.close();
    }
  },
);

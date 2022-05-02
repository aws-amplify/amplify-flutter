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
import 'package:aws_common/aws_common.dart';

import '../amplify_flutter.dart';

typedef Listener = void Function(HubEvent event);

class AmplifyHub {
  final Map<HubChannel, Stream<HubEvent>> availableStreams = {};

  /// Expose listen method which instantiates new StreamController listening to one or more availableStreams
  StreamSubscription<HubEvent> listen(
    List<HubChannel> channels,
    Listener listener,
  ) {
    final List<StreamSubscription> platformSubscriptions = [];

    void cancelPluginStreams() {
      for (var ps in platformSubscriptions) {
        ps.cancel();
      }
    }

    // ignore: close_sinks
    late final StreamController<HubEvent> controller;
    controller = StreamController<HubEvent>.broadcast(
      onListen: () {
        for (var c in channels) {
          var stream = availableStreams[c];
          if (stream != null) {
            StreamSubscription subscription = stream.listen(controller.add);
            platformSubscriptions.add(subscription);
          } else {
            safePrint(
                'You are attempting to listen to a plugin that has not been added.');
          }
        }
      },
      onCancel: cancelPluginStreams,
    );

    return controller.stream.listen(listener);
  }

  /// Adds Plugin level streams in preparation for 'listen'
  void addChannel(HubChannel name, StreamController<HubEvent> controller) {
    availableStreams[name] = controller.stream;
  }
}

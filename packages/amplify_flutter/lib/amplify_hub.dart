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

import 'package:amplify_core/types/index.dart';
import 'amplify.dart';

typedef void Listener(dynamic event);

class AmplifyHub {
  final Map<HubChannel, Stream> availableStreams = {};

  /// Expose listen method which instantiates new StreamController listening to one or more availableStreams
  StreamSubscription listen(
      List<HubChannel> channels, Listener listener) {
    List<StreamSubscription> platformSubscriptions = [];
    StreamController controller;

    cancelPluginStreams() {
      platformSubscriptions.forEach((ps) {
        ps.cancel();
      });
    }

    controller = StreamController.broadcast(
        onListen: () {
          channels.forEach((c) {
            if (availableStreams[c] != null) {
              StreamSubscription subscription =
                  availableStreams[c].listen((msg) {
                /// Emit events via Hub
                controller.add(msg);
              });
              platformSubscriptions.add(subscription);
            } else {
              print(
                  'You are attempting to listen to a plugin that has not been added.');
            }
          });
        },
        onCancel: cancelPluginStreams);

    return controller.stream.listen(listener);
  }

  /// Adds Plugin level streams in preparation for 'listen'
  void addChannel(HubChannel name, StreamController controller) async {
    availableStreams[name] = controller.stream;
  }
}

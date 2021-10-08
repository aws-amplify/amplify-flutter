/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

/// A utility for merging multiple streams into a single
/// broadcast stream, intended for use in observeQuery
///
/// Note: this may not meet use cases outside of observeQuery
/// and is not intended to be exposed as part of the public API
Stream<T> mergeStreams<T>(List<Stream<T>> streams) {
  late StreamController<T> _controller;
  List<StreamSubscription<T>> subscriptions = [];

  void _onListen() {
    for (var stream in streams) {
      var sub = stream.listen(_controller.add, onError: _controller.addError);
      sub.onDone(() {
        subscriptions.remove(sub);
        if (subscriptions.isEmpty) _controller.close();
      });
      subscriptions.add(sub);
    }
  }

  void _onCancel() {
    for (var sub in subscriptions) {
      sub.cancel();
    }
  }

  _controller = StreamController.broadcast(
    onListen: _onListen,
    onCancel: _onCancel,
    sync: true,
  );

  return _controller.stream;
}

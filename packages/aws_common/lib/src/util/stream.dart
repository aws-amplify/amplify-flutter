// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

/// Helper for forwarding events of one [Stream] to another.
extension StreamForward<T> on Stream<T> {
  /// Forwards all events and errors to [controller], handling cases where
  /// [controller] is independently closed before `this` finishes.
  ///
  /// If [closeWhenDone] is `true`, [controller] closes when `this` does. If
  /// [cancelOnError] is `true`, any errors emitted by `this` will trigger a
  /// cancellation of the subscription and act as though `this` finished.
  ///
  /// Returns a [Future] which completes when one of the Streams finishes.
  ///
  /// This differs from [Stream.pipe] and [StreamConsumer.addStream] in that
  /// [controller] can operate independent of this method's operations. Other
  /// events can be added to [controller] while `this` is being listened to, and
  /// if [controller] closes before `this`, no further events are added to
  /// [controller].
  Future<void> forward(
    StreamController<T> controller, {
    bool cancelOnError = false,
    bool closeWhenDone = true,
  }) {
    final completer = Completer<void>.sync();
    listen(
      (event) {
        if (!controller.isClosed) {
          controller.add(event);
        }
      },
      onError: (Object e, StackTrace st) {
        if (!controller.isClosed) {
          controller.addError(e, st);
        }
      },
      onDone: () {
        if (closeWhenDone) {
          controller.close();
        }
        completer.complete();
      },
      cancelOnError: cancelOnError,
    );
    return Future.any([controller.done, completer.future]);
  }
}

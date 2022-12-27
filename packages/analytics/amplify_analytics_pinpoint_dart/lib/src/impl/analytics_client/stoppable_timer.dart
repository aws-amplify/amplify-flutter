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

/// {@template amplify_analytics_pinpoint_dart.stoppable_timer}
/// A Timer that can be stopped and started again.
/// {@endtemplate}
class StoppableTimer {
  /// {@macro amplify_analytics_pinpoint_dart.stoppable_timer}
  ///
  /// The [callback] is invoked repeatedly with [duration] intervals until
  /// stopped with the [stop] function.
  StoppableTimer({
    required Duration duration,
    required Future<void> Function() callback,
    required void Function(Object) onError,
  })  : _duration = duration,
        _callback = callback,
        _timer = Timer.periodic(duration, (Timer t) {
          callback().catchError((Object e) {
            onError(e);
          });
        });
  Timer _timer;
  final Duration _duration;
  final void Function() _callback;

  /// Start the timer
  void start() {
    if (_timer.isActive) return;
    _timer = Timer.periodic(_duration, (Timer t) => _callback());
  }

  /// Stop the timer
  void stop() {
    _timer.cancel();
  }
}

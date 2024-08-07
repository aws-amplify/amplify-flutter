// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint_dart.stoppable_timer}
/// A Timer that can be stopped and started again.
/// {@endtemplate}
class StoppableTimer {
  /// {@macro amplify_analytics_pinpoint_dart.stoppable_timer}
  ///
  /// The [callback] is invoked repeatedly with [duration] intervals until
  /// stopped with the [stop] function.
  StoppableTimer({
    required this.duration,
    required Future<void> Function() callback,
    required void Function(Object) onError,
  })  : _callback = callback,
        _timer = Timer.periodic(duration, (Timer t) {
          callback().catchError((Object e) {
            onError(e);
          });
        });
  Timer _timer;

  /// [Duration] between invocations of the provided callback function.
  @visibleForTesting
  final Duration duration;
  final void Function() _callback;

  /// Start the timer.
  void start() {
    if (_timer.isActive) return;
    _timer = Timer.periodic(duration, (Timer t) => _callback());
  }

  /// Stop the timer.
  void stop() {
    _timer.cancel();
  }
}

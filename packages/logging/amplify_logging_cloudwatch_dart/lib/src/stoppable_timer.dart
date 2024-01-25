// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// {@template amplify_logging_cloudwatch_dart_dart.stoppable_timer}
/// A Timer that can be stopped and started again.
///
/// The `callback` function is invoked repeatedly with [duration] intervals
/// until stopped with the [stop] function.
/// {@endtemplate}
class StoppableTimer {
  /// {@macro amplify_logging_cloudwatch_dart.stoppable_timer}
  StoppableTimer({
    required this.duration,
    required Future<void> Function() callback,
    required void Function(Object) onError,
  })  : _callback = callback,
        _onError = onError,
        _timer = Timer.periodic(duration, (Timer t) {
          callback().catchError((Object e) {
            onError(e);
          });
        });
  Timer _timer;

  /// [Duration] between invocations of the provided callback function.
  final Duration duration;
  final Future<void> Function() _callback;
  final void Function(Object) _onError;

  /// Start the timer.
  void start() {
    if (_timer.isActive) return;
    _timer = Timer.periodic(duration, (Timer t) {
      _callback().catchError(_onError);
    });
  }

  /// Stop the timer.
  void stop() {
    _timer.cancel();
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Throttle related stream extensions
extension Throttle<T> on Stream<T> {
  /// Emits the first event from the source, and then
  /// emits one event every time the [throttleCount] is reached
  /// or the [duration] since the last event has been reached
  ///
  /// If [until] is supplied, the throttling stops once the condition is met
  ///
  /// Note: This is intended for use in observeQuery and is not intended
  /// to be exposed as part of the public API
  Stream<T> throttleByCountAndTime({
    int? throttleCount,
    Duration? duration,
    bool Function(T value)? throttleIf,
  }) {
    assert(
      throttleCount != null || duration != null,
      'throttleCount and duration cannot both be null',
    );
    if (throttleCount != null) {
      assert(
        throttleCount >= 1,
        'throttleCount cannot be less than 1',
      );
    }

    // number of items that have emitted from the source stream since
    // the last event was emitted
    int _count = 0;

    // cached data & sink during throttling
    // if the timer expires, the cached sink will be
    // used to emit the cached data
    T? _data;
    Sink? _sink;

    // timer for throttling by time
    Timer? _timer;

    bool _hasEmittedFirstEvent = false;

    bool timerHasExpired() => _timer != null && !_timer!.isActive;

    bool throttleCountReached() =>
        throttleCount != null && _count == throttleCount - 1;

    void resetTimer(void Function() callback) {
      if (duration == null) return;
      _timer?.cancel();
      _timer = Timer(duration, () {
        callback();
      });
    }

    void emitData(T data, Sink sink) {
      _hasEmittedFirstEvent = true;

      // clear cached data & sink
      _data = null;
      _sink = null;

      // reset the count and timer
      _count = 0;
      resetTimer(() {
        if (_data != null && _sink != null) {
          emitData(_data!, _sink!);
        }
      });

      // emit data
      sink.add(data);
    }

    void throttleData(T data, Sink sink) {
      // cache data & sink
      _data = data;
      _sink = sink;

      // increment counter
      _count++;
    }

    bool shouldEmitData(T data) {
      bool throttle = throttleIf == null || throttleIf(data);
      if (_hasEmittedFirstEvent && throttle) {
        return timerHasExpired() || throttleCountReached();
      }
      return true;
    }

    return this.transform(
      StreamTransformer.fromHandlers(handleData: (data, sink) {
        if (shouldEmitData(data)) {
          emitData(data, sink);
        } else {
          throttleData(data, sink);
        }
      }),
    );
  }
}

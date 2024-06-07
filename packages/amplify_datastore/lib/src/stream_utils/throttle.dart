// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:meta/meta.dart';

/// Throttle related stream extensions
@internal
extension Throttle<T> on Stream<T> {
  /// Emits the first event from the source, and then
  /// emits one event every time the [throttleCount] is reached
  /// or the [duration] since the last event has been reached
  ///
  /// If [throttleIf] is supplied, events will be throttled while the condition
  /// is true.
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
    var count = 0;

    // cached data & sink during throttling
    // if the timer expires, the cached sink will be
    // used to emit the cached data
    T? dataCache;
    Sink<T>? sinkCache;

    // timer for throttling by time
    Timer? timer;

    var hasEmittedFirstEvent = false;

    bool timerHasExpired() => timer != null && !timer!.isActive;

    bool throttleCountReached() =>
        throttleCount != null && count == throttleCount - 1;

    void resetTimer(void Function() callback) {
      if (duration == null) return;
      timer?.cancel();
      timer = Timer(duration, () {
        callback();
      });
    }

    void emitData(T data, Sink<T> sink) {
      hasEmittedFirstEvent = true;

      // clear cached data & sink
      dataCache = null;
      sinkCache = null;

      // reset the count and timer
      count = 0;
      resetTimer(() {
        if (dataCache != null && sinkCache != null) {
          emitData(dataCache as T, sinkCache!);
        }
      });

      // emit data
      sink.add(data);
    }

    void throttleData(T data, Sink<T> sink) {
      // cache data & sink
      dataCache = data;
      sinkCache = sink;

      // increment counter
      count++;
    }

    bool shouldEmitData(T data) {
      final throttle = throttleIf == null || throttleIf(data);
      if (hasEmittedFirstEvent && throttle) {
        return timerHasExpired() || throttleCountReached();
      }
      return true;
    }

    return transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          if (shouldEmitData(data)) {
            emitData(data, sink);
          } else {
            throttleData(data, sink);
          }
        },
      ),
    );
  }
}

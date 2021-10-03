import 'dart:async';

/// Throttle related stream extensions
extension Throttle<T> on Stream<T> {
  /// Emits the first event from the source, and then
  /// emits one event every time the [count] is reached
  /// or the [duration] since the last event has been reached
  ///
  /// If [until] is supplied, the throttling stops once the condition is met
  Stream<T> throttleByCountAndTime({
    required int count,
    required Duration duration,
    bool Function(T value)? until,
  }) {
    // number of items that have emitted from the source stream since
    // the last event was emitted
    // starts at count to allow the first event to emit immediately
    int _count = count - 1;

    // indicates if the condition to stop throttling has been reached
    bool _untilConditionHasBeenMet = false;

    // cached data & sink during throttling
    // if the timer expires, the cached sink will be
    // used to emit the cached data
    T? _data;
    Sink? _sink;

    // timer for throttling by time
    Timer? _timer;

    bool timerHasExpired() => _timer != null && !_timer!.isActive;

    void resetTimer(void Function() callback) {
      _timer?.cancel();
      _timer = Timer(duration, () {
        callback();
      });
    }

    void emitData(T data, Sink sink) {
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
      if (!_untilConditionHasBeenMet && until != null) {
        _untilConditionHasBeenMet = until(data);
      }
      return _untilConditionHasBeenMet ||
          timerHasExpired() ||
          _count == count - 1;
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

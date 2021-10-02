import 'dart:async';

/// Throttle related stream extensions
extension Throttle<T> on Stream<T> {
  /// Emits one event for every [count] events from the source stream,
  /// starting with the [count] event
  ///
  /// If until is supplied, the throttling stops once the condition is met
  Stream<T> throttleCount(int count, {bool Function(T value)? until}) {
    int _count = 0;
    bool _untilIsReached = false;

    return this.transform(
      StreamTransformer.fromHandlers(handleData: (data, sink) {
        if (!_untilIsReached && until != null) {
          _untilIsReached = until(data);
        }
        if (_untilIsReached || _count == count - 1) {
          _count = 0;
          sink.add(data);
        } else {
          _count++;
        }
      }),
    );
  }
}

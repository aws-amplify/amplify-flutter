// TODO: remove and replace with external library
// This is a pared-down version of StreamGroup from https://github.com/dart-lang/async/
import 'dart:async';

import 'package:collection/collection.dart';

class StreamGroup<T> implements Sink<Stream<T>> {
  Stream<T> get stream => _controller.stream;
  late StreamController<T> _controller;

  bool get isClosed => _closed;

  var _closed = false;

  var _state = _StreamGroupState.dormant;

  final _subscriptions = <Stream<T>, StreamSubscription<T>?>{};

  static Stream<T> merge<T>(Iterable<Stream<T>> streams) {
    var group = StreamGroup<T>();
    streams.forEach(group.add);
    group.close();
    return group.stream;
  }

  StreamGroup() {
    _controller = StreamController<T>(
        onListen: _onListen,
        onPause: _onPause,
        onResume: _onResume,
        onCancel: _onCancel,
        sync: true);
  }

  @override
  Future? add(Stream<T> stream) {
    if (_closed) {
      throw StateError("Can't add a Stream to a closed StreamGroup.");
    }

    if (_state == _StreamGroupState.dormant) {
      _subscriptions.putIfAbsent(stream, () => null);
    } else if (_state == _StreamGroupState.canceled) {
      return stream.listen(null).cancel();
    } else {
      _subscriptions.putIfAbsent(stream, () => _listenToStream(stream));
    }

    return null;
  }

  Future? remove(Stream<T> stream) {
    var subscription = _subscriptions.remove(stream);
    var future = subscription?.cancel();

    if (_subscriptions.isEmpty) {
      if (_closed) {
        scheduleMicrotask(_controller.close);
      }
    }

    return future;
  }

  void _onListen() {
    _state = _StreamGroupState.listening;

    for (var entry in [..._subscriptions.entries]) {
      if (entry.value != null) continue;

      var stream = entry.key;
      try {
        _subscriptions[stream] = _listenToStream(stream);
      } catch (error) {
        _onCancel()?.catchError((_) {});
        rethrow;
      }
    }
  }

  void _onPause() {
    _state = _StreamGroupState.paused;
    for (var subscription in _subscriptions.values) {
      subscription!.pause();
    }
  }

  void _onResume() {
    _state = _StreamGroupState.listening;
    for (var subscription in _subscriptions.values) {
      subscription!.resume();
    }
  }

  Future? _onCancel() {
    _state = _StreamGroupState.canceled;

    var futures = _subscriptions.entries
        .map((entry) {
          var subscription = entry.value;
          try {
            if (subscription != null) return subscription.cancel();
            return entry.key.listen(null).cancel();
          } catch (_) {
            return null;
          }
        })
        .whereNotNull()
        .toList();

    _subscriptions.clear();

    return futures.isEmpty ? null : Future.wait(futures);
  }

  StreamSubscription<T> _listenToStream(Stream<T> stream) {
    var subscription = stream.listen(_controller.add,
        onError: _controller.addError, onDone: () => remove(stream));
    if (_state == _StreamGroupState.paused) subscription.pause();
    return subscription;
  }

  @override
  Future close() {
    if (_closed) return _controller.done;

    _closed = true;
    if (_subscriptions.isEmpty) _controller.close();

    return _controller.done;
  }
}

class _StreamGroupState {
  static const dormant = _StreamGroupState('dormant');
  static const listening = _StreamGroupState('listening');
  static const paused = _StreamGroupState('paused');
  static const canceled = _StreamGroupState('canceled');
  final String name;
  const _StreamGroupState(this.name);
  @override
  String toString() => name;
}

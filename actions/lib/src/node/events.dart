// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

import 'package:meta/meta.dart';

@JS('events.EventEmitter')
extension type EventEmitter._(JSObject it) implements JSObject {
  external EventEmitter();

  external void addListener(String eventName, JSFunction? listener);
  external void removeListener(String eventName, JSFunction? listener);

  @JS('once')
  external void _once(String eventName, JSFunction listener);

  Future<T> once<T extends JSAny?>(String eventName) {
    final completer = Completer<T>();
    _once(
      eventName, 
      // Callbacks may be called with 0-3 args. This will generate
      // stubs for each of the argument counts, mimicking a variadic
      // JS function. 
      //
      // We are really only concerned with the first, though.
      ([JSAny? arg0, JSAny? arg1, JSAny? arg2]) {
        completer.complete(arg0 as T);
      }.toJS,
    );
    return completer.future;
  }

  /// Returns an array listing the events for which the emitter has registered listeners.
  /// 
  /// The values in the array are [JSString] or [JSSymbol].
  @JS('eventNames')
  external JSArray _eventNames();

  /// Returns an array listing the events for which the emitter has registered listeners.
  List<String> get eventNames => _eventNames().toDart.cast<JSString>().map((js) => js.toDart).toList();

  /// Synchronously calls each of the listeners registered for the event named [eventName], 
  /// in the order they were registered, passing the supplied arguments to each.
  /// 
  /// Returns `true` if the event had listeners, `false` otherwise.
  @visibleForTesting
  external bool emit(String eventName, [JSAny? arg0, JSAny? arg1, JSAny? arg2]);

  /// Returns the number of listeners listening for the event named [eventName].
  @JS('listenerCount')
  external int _listenerCount(String eventName);

  /// Returns the number of listeners attached.
  int get listenerCount {
    var total = 0;
    for (final eventName in eventNames) {
      total += _listenerCount(eventName);
    }
    return total;
  }

  /// By default EventEmitters will print a warning if more than 10 listeners are added for 
  /// a particular event.
  external void setMaxListeners(int n);

  /// Removes all listeners, or those of the specified [eventName].
  external void removeAllListeners([String eventName]);
}

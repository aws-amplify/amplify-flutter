import 'dart:async';
import 'dart:js_interop';

import 'package:flutter/material.dart';

// JavaScript interop functions exposed to window object
@JS('startWorker')
external set _jsStartWorker(JSFunction fn);

@JS('stopWorker')
external set _jsStopWorker(JSFunction fn);

@JS('sendMessage')
external set _jsSendMessage(JSFunction fn);

@JS('getLogs')
external set _jsGetLogs(JSFunction fn);

@JS('getMessages')
external set _jsGetMessages(JSFunction fn);

@JS('setMessage')
external set _jsSetMessage(JSFunction fn);

/// Sets up JS interop bindings that delegate to [callbacks].
///
/// The [key] is used to access the widget state and schedule frames.
void setupJsInterop(GlobalKey key) {
  _jsStartWorker = (() {
    final completer = Completer<void>();
    final dynamic state = key.currentState;
    if (state != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        try {
          await (state.startWorkerFromJs() as Future<void>);
          completer.complete();
        } catch (e) {
          completer.completeError(e);
        }
      });
      WidgetsBinding.instance.scheduleFrame();
    } else {
      completer.complete();
    }
    return completer.future.toJS;
  }).toJS;

  _jsStopWorker = (() {
    final dynamic state = key.currentState;
    state?.stopWorkerFromJs();
  }).toJS;

  _jsSendMessage = ((JSString? message) {
    final dynamic state = key.currentState;
    if (state != null) {
      if (message != null) {
        state.setMessageText(message.toDart);
      }
      state.sendMessageFromJs();
    }
  }).toJS;

  _jsGetLogs = (() {
    final dynamic state = key.currentState;
    return (state?.getLogsText() as String? ?? '').toJS;
  }).toJS;

  _jsGetMessages = (() {
    final dynamic state = key.currentState;
    return (state?.getMessagesText() as String? ?? '').toJS;
  }).toJS;

  _jsSetMessage = ((JSString message) {
    final dynamic state = key.currentState;
    state?.setMessageText(message.toDart);
  }).toJS;
}

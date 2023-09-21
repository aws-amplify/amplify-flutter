// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

import 'package:actions/src/node/process.dart';

@JS()
external Core get core;

@JS()
@anonymous
extension type Core._(JSObject it) {
  @JS('getInput')
  external String _getInput(String name);

  String getInput(String name, {String defaultValue = ''}) {
    final inputValue = _getInput(name);
    return inputValue.isEmpty ? defaultValue : inputValue;
  }

  String getRequiredInput(String name) {
    final inputValue = _getInput(name);
    return inputValue.isEmpty ? (throw StateError('Input "$name" was required but no value was passed')) : inputValue;
  }

  T getTypedInput<T>(
    String name, {
    required T Function(String value) parse,
    T? defaultValue,
    T Function()? orElse,
  }) {
    final value = getInput(name);
    if (value.isEmpty) {
      if (defaultValue != null) {
        return defaultValue;
      }
      return orElse?.call() ??
          (throw ArgumentError(
            'Got value "$value" for input "$name" which is not a valid $T.',
          ));
    }
    return parse(value);
  }

  external void setOutput(String name, String value);

  external void startGroup(String name);
  external void endGroup();

  Future<R> withGroup<R>(
    String name, 
    Future<R> Function() action,
  ) async {
    startGroup(name);
    try {
      return await action();
    } finally {
      endGroup();
    }
  }

  external bool isDebug();

  external void debug(String name);
  external void info(String name);
  external void warning(String name);
  external void error(String name);

  external void addPath(String element);

  external void exportVariable(String name, String value);

  external void saveState(String name, String value);
  external String getState(String name);

  @JS('setFailed')
  external void _setFailed(String error);

  Never setFailed(String error) {
    _setFailed(error);
    process.exit(1);
  }

  // JSPromise<String>
  external JSPromise getIDToken(String audience);
}

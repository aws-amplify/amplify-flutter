// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

import 'package:actions/src/node/process.dart';

@JS()
external Core get core;

@JS()
extension type Core(JSObject it) {
  external String getInput(String name);

  external void setOutput(String name, String value);

  external void startGroup(String name);
  external void endGroup(String name);

  Future<R> withGroup<R>(String name, Future<R> Function() action) async {
    startGroup(name);
    try {
      return await action();
    } finally {
      endGroup(name);
    }
  }

  external void debug(String name);
  external void info(String name);
  external void warning(String name);
  external void error(String name);

  external void addPath(String element);

  external void exportVariable(String name, String value);

  @JS('setFailed')
  external void _setFailed(String error);

  Never setFailed(String error) {
    _setFailed(error);
    process.exit(1);
  }

  // JSPromise<String>
  external JSPromise getIDToken(String audience);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS()
external OperatingSystem get os;

@JS()
extension type OperatingSystem(JSObject it) {
  external String tmpdir();
  external JSArray cpus();
  external JSNumber freemem();

  /// Number of logical cores
  int get numCores => cpus().toDart.length;

  /// Available memory, in megabytes
  int get availableRam => freemem().toDartInt ~/ (1 << 20);
}

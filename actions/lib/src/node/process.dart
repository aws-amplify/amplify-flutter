// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

import 'package:actions/src/os.dart';

/// Provides information about, and control over, the current Node.js process.
/// Wraps https://nodejs.org/api/process.html
@JS()
external Process get process;

@JS()
extension type Process(JSObject it) {
  /// A string identifying the operating system platform for which the Node.js binary was compiled.
  /// 
  /// See: https://nodejs.org/api/process.html#processplatform
  @JS('platform')
  external String get _platform;

  OS get platform => switch (_platform) {
    'win32' => OS.windows,
    'darwin' => OS.macOS,
    'linux' => OS.linux,
    final unknown => throw StateError('Unknown OS: $unknown'),
  };

  /// The operating system CPU architecture for which the Node.js binary was compiled.
  ///
  /// See: https://nodejs.org/api/process.html#processarch
  @JS('arch')
  external String get _arch;

  Arch get arch => switch (_arch) {
    'arm64' => Arch.arm64,
    'x64' => Arch.x64,
    final unknown => throw StateError('Unknown architecture: $unknown'),
  };

  external Never exit(int exitCode);
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:actions/src/os.dart';

/// Provides information about, and control over, the current Node.js process.
/// Wraps https://nodejs.org/api/process.html
@JS()
external Process get process;

@JS()
extension type Process(JSObject it) {
  /// The current Node version.
  external String get version;

  /// A string identifying the operating system platform for which the Node.js binary was compiled.
  /// 
  /// See: https://nodejs.org/api/process.html#processplatform
  @JS('platform')
  external String get _platform;

  OS get platform => switch (_platform) {
    'win32' => throw UnsupportedError('Windows is not currently supported'),
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
  
  @JS('env')
  // Map<String, String?>
  external JSObject get _env;

  Map<String, String> get env {
    final variables = <String, String>{};
    for (final variable in _JSObject.getOwnPropertyNames(_env).toDart) {
      final name = (variable as JSString).toDart;
      final value = (_env.getProperty(variable) as JSString?)?.toDart;
      if (value == null) {
        continue;
      }
      variables[name] = value;
    }
    return variables;
  }

  /// Read the environment variable [variable].
  String? getEnv(String variable) =>
      _env.getProperty<JSString?>(variable.toJS)?.toDart;

  external Never exit(int exitCode);
}

@JS('Object')
extension type _JSObject._(JSObject it) {
  external static JSArray getOwnPropertyNames(JSObject obj);
}

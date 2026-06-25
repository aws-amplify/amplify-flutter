// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'globals.dart.dart' if (dart.library.ui) 'globals.flutter.dart';

/// Whether running in debug mode.
const bool zDebugMode = !zProfileMode && !zReleaseMode;

/// Whether asserts are enabled.
///
/// This differs from [zDebugMode] in that it's not enabled in `dart2js` unless
/// explicitly done so with the `--enable-asserts` flag but otherwise requires
/// that no extra flags be passed to build commands (which may be helpful in
/// pure Dart applications).
final bool zAssertsEnabled = () {
  var assertsEnabled = false;
  // ignore: prefer_asserts_with_message
  assert(() {
    assertsEnabled = true;
    return true;
  }());
  return assertsEnabled;
}();

/// Whether running in profile mode.
const bool zProfileMode = bool.fromEnvironment('dart.vm.profile');

/// Whether running in release mode.
const bool zReleaseMode = bool.fromEnvironment('dart.vm.product');

/// Whether running on the Web.
///
/// This checks for the availability of the `dart:js_interop` library,
/// which is present for both the `dart2js` (pure JS) and `dart2wasm`
/// (Wasm + JS glue) compilation targets, and absent on VM/native.
///
/// The previous implementation (`identical(0, 0.0)`) is broken under
/// `dart2wasm` because WASM has distinct integer and double types,
/// causing `identical(0, 0.0)` to return `false` even on web.
const bool zIsWeb = bool.fromEnvironment('dart.library.js_interop');

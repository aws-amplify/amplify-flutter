// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Whether running in debug mode.
const bool zDebugMode = !zProfileMode && !zReleaseMode;

/// Whether running in profile mode.
const bool zProfileMode = bool.fromEnvironment('dart.vm.profile');

/// Whether running in release mode.
const bool zReleaseMode = bool.fromEnvironment('dart.vm.product');

/// Whether running on the Web.
const bool zIsWeb = bool.fromEnvironment('dart.library.js_interop');

/// Whether running on Web Assembly.
const bool zIsWasm = bool.fromEnvironment('dart.tool.dart2wasm');

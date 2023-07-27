// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

/// POSIX functions for interacting with the file system.
/// Wraps https://nodejs.org/api/fs.html
@JS()
external FileSystem get fs;

@JS()
inline class FileSystem {
  FileSystem(this.fileSystem);

  final JSObject fileSystem;

  /// Whether the [path] exists, false otherwise.
  external bool existsSync(String path);

  /// Read the contents of the [path].
  external String readFileSync(String path, [String encoding]);

  @JS('rmdirSync')
  external void _rmdirSync(String path, [_RmdirOptions? options]);

  /// Recursively deletes the directory at [path].
  void rmdirSync(String path) => _rmdirSync(path, _RmdirOptions(recursive: true));
}

@JS()
@anonymous
@staticInterop
class _RmdirOptions {
  external factory _RmdirOptions({
    bool? recursive,
  });
}

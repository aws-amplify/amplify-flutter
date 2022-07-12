// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'dart:io';

typedef ProcessSink = void Function(String);

/// Helpers on [Process].
extension ProcessUtil on Process {
  static void _printToStdout(String message) => stdout.writeln(message);
  static void _printToStderr(String message) => stderr.writeln(message);

  /// Captures `stdout` to the provided sink, the global [stdout] by default.
  void captureStdout([ProcessSink sink = _printToStdout]) {
    this
        .stdout
        .transform(const Utf8Decoder())
        .transform(const LineSplitter())
        .listen(sink);
  }

  /// Captures `stderr` to the provided sink, the global [stderr] by default.
  void captureStderr([ProcessSink sink = _printToStderr]) {
    this
        .stderr
        .transform(const Utf8Decoder())
        .transform(const LineSplitter())
        .listen(sink);
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_util';

@JS()
external Exec get exec;

@JS()
extension type Exec(JSObject it) {
  @JS('exec')
  external JSPromise _exec(
    String commandLine, [
    JSArray? args,
    _ExecOptions? options,
  ]);

  /// Exec a command.
  ///
  /// Output will be streamed to the live console. Returns promise with the result of
  /// the process execution.
  Future<ExecResult> exec(
    String commandLine,
    List<String> args, {
    bool echoOutput = true,
    String? workingDirectory,
    bool failOnNonZeroExit = true,
  }) async {
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    final options = _ExecOptions(
      listeners: _ExecListeners(
        stdout: ((JSUint8Array buffer) =>
            stdout.write(utf8.decode(buffer.toDart))).toJS,
        stderr: ((JSUint8Array buffer) =>
            stderr.write(utf8.decode(buffer.toDart))).toJS,
      ),
      silent: (!echoOutput).toJS,
      cwd: workingDirectory?.toJS,
      ignoreReturnCode: (!failOnNonZeroExit).toJS,
    );
    try {
      final exitCode = await promiseToFuture<int>(
        _exec(
          commandLine, 
          args.map((arg) => arg.toJS).toList().toJS,
          options,
        ),
      );
      return ExecResult(
        exitCode: exitCode,
        stdout: stdout.toString(),
        stderr: stderr.toString(),
      );
    } on Object {
      throw Exception(
        '"$commandLine ${args.join(' ')}" failed:\n$stdout\n$stderr',
      );
    }
  }
}

@JS()
@anonymous
@staticInterop
class _ExecOptions {
  external factory _ExecOptions({
    _ExecListeners? listeners,
    JSString? cwd,
    JSBoolean? silent,
    JSBoolean? ignoreReturnCode,
  });
}

@JS()
@anonymous
@staticInterop
class _ExecListeners {
  external factory _ExecListeners({
    JSFunction? stdout,
    JSFunction? stderr,
  });
}

final class ExecResult {
  const ExecResult({
    required this.exitCode,
    required this.stdout,
    required this.stderr,
  });

  final int exitCode;
  final String stdout;
  final String stderr;
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:actions/src/util.dart';

/// Wraps https://nodejs.org/api/child_process.html
@JS()
external ChildProcess get childProcess;

@JS()
@anonymous
extension type ChildProcess(JSObject it) {
  @JS('spawn')
  external NodeChildProcess _spawn(
    String command,
    JSArray args,
    _ChildProcessOptions options,
  );

  @JS('exec')
  external NodeChildProcess _exec(
    String command,
    _ChildProcessOptions options, [
    JSFunction callback,
  ] // (error: Error, stdout: string, stderr: string) => void
      );

  @JS('execSync')
  external JSUint8Array? _execSync(
    String command,
    _ChildProcessOptions options,
  );

  Future<ProcessResult> exec(
    String command,
    List<String> args, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    JSAny? stdin,
  }) {
    final completer = Completer<ProcessResult>();
    late NodeChildProcess child;
    child = _exec(
      <String>[command, ...args].join(' '),
      _ChildProcessOptions(
        cwd: workingDirectory,
        env: <String, String?>{
          ...?environment,
          if (includeParentEnvironment) ...process.env,
        }.jsify() as JSObject,
        encoding: 'utf8',
        shell: runInShell ? '/bin/sh' : null,
      ),
      (JSError? error, String stdout, String stderr) {
        if (error != null) {
          return completer.completeError(
            ProcessException(command, args, error.message),
          );
        }
        completer.complete(
          ProcessResult(
            child.pid ?? -1,
            child.exitCode!,
            stdout,
            stderr,
          ),
        );
      }.toJS,
    );
    return completer.future;
  }

  ProcessResult execSync(
    String command,
    List<String> args, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    bool echoOutput = false,
  }) {
    try {
      final stdout = _execSync(
        <String>[command, ...args].join(' '),
        _ChildProcessOptions(
          cwd: workingDirectory,
          env: <String, String?>{
            ...?environment,
            if (includeParentEnvironment) ...process.env,
          }.jsify() as JSObject,
          shell: runInShell ? '/bin/sh' : null,
          encoding: 'buffer',
          stdio: <JSAny?>[
            null,
            if (echoOutput) 'inherit'.toJS else null,
            if (echoOutput) 'inherit'.toJS else null,
          ].toJS,
        ),
      );
      return ProcessResult(
        -1,
        0,
        stdout?.toDart ?? Uint8List(0),
        Uint8List(0),
      );
    } on Object catch (e) {
      final message = switch (e) {
        final JSError e => e.message,
        _ => e.toString(),
      };
      throw ProcessException(command, args, message);
    }
  }

  NodeChildProcess spawn(
    String command,
    List<String> args, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    ProcessStartMode mode = ProcessStartMode.normal,
    JSAny? stdin,
  }) {
    final jsMode = switch (mode) {
      ProcessStartMode.normal => 'pipe',
      ProcessStartMode.detached => 'ignore',
      ProcessStartMode.detachedWithStdio => 'pipe',
      ProcessStartMode.inheritStdio => 'inherit',
      _ => unreachable,
    }
        .toJS;
    return _spawn(
      command,
      args.map((arg) => arg.toJS).toList().toJS,
      _ChildProcessOptions(
        cwd: workingDirectory,
        env: {
          ...?environment,
          if (includeParentEnvironment) ...process.env,
        }.jsify() as JSObject,
        detached: mode == ProcessStartMode.detached ||
            mode == ProcessStartMode.detachedWithStdio,
        stdio: <JSAny>[
          // stdin
          stdin ?? jsMode,
          // stdout
          jsMode,
          // stderr
          jsMode,
        ].toJS,
        shell: runInShell ? '/bin/sh' : null,
      ),
    );
  }
}

@JS()
@anonymous
extension type _ChildProcessOptions._(JSObject it) {
  external factory _ChildProcessOptions({
    String? cwd,
    JSObject? env,
    JSAny? stdio,
    bool? detached,
    String? shell,
    String? encoding,
  });
}

@JS()
@anonymous
extension type NodeChildProcess._(JSObject it) implements EventEmitter {
  Future<void> get onSpawn => once('spawn');
  Future<JSObject> get onError => once('error');
  Future<JSNumber> get onExit => once('exit');
  Future<void> get onClose => once('close');
  external bool kill([String signal]);

  /// This is only set once the process has exited.
  external int? get exitCode;
  external int? get pid;
  external NodeWriteableStream? get stdin;
  external NodeReadableStream? get stdout;
  external NodeReadableStream? get stderr;
}

@JS()
@anonymous
extension type NodeReadableStream._(JSObject it) implements EventEmitter {
  Stream<List<int>> get stream {
    final controller = StreamController<List<int>>(sync: true);
    void onData(JSUint8Array chunk) {
      if (controller.isClosed) return;
      controller.add(chunk.toDart);
    }

    void onError(JSObject error) {
      if (controller.isClosed) return;
      controller
        ..addError(error)
        ..close();
    }

    void onDone([_]) {
      if (controller.isClosed) return;
      controller.close();
    }

    controller
      ..onListen = () {
        addListener('data', onData.toJS);
        unawaited(once('close').then(onDone));
        unawaited(once<JSObject>('error').then(onError));
      }
      ..onCancel = () => removeListener('data', onData.toJS);
    return controller.stream;
  }
}

@JS()
extension type EventEmitter._(JSObject it) implements JSObject {
  external void addListener(String eventName, JSFunction? listener);

  external void removeListener(String eventName, JSFunction? listener);

  @JS('once')
  external void _once(String eventName, JSFunction listener);

  Future<T> once<T extends JSAny?>(String eventName) {
    final completer = Completer<T>();
    _once(
      eventName,
      // Callbacks may be called with 0-3 args. This will generate
      // stubs for each of the argument counts, mimicking a variadic
      // JS function.
      //
      // We are really only concerned with the first, though.
      ([JSAny? arg0, JSAny? arg1, JSAny? arg2]) {
        completer.complete(arg0 as T);
      }.toJS,
    );
    return completer.future;
  }
}

@JS()
@anonymous
extension type NodeWriteableStream._(JSObject it) {
  external void write(JSUint8Array chunk,
      [String? encoding, JSFunction flushCallback]);
}

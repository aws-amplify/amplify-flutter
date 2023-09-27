// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';

/// Wraps https://nodejs.org/api/child_process.html
@JS()
external ChildProcess get childProcess;

@JS()
@anonymous
extension type ChildProcess(JSObject it) implements JSObject {
  @JS('spawn')
  external NodeChildProcess _spawn(
    String command, 
    JSArray args, 
    _ChildProcessOptions options,
  );

  @JS('exec')
  external NodeChildProcess _exec(
    String command,
    _ChildProcessOptions options,
    [JSFunction callback,] // (error: Error, stdout: string, stderr: string) => void
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
      final stdout =  _execSync(
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
        JSError _ => e.message,
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
    }.toJS;
    final childProc = _spawn(
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
    // We set various listeners which are difficult to clean up. By default,
    // Node prints a warning when more than 10 listeners are added but this
    // is not helpful.
    return childProc
      ..setMaxListeners(0)
      ..stdout?.setMaxListeners(0)
      ..stderr?.setMaxListeners(0);
  }
}

@JS()
@anonymous
extension type _ChildProcessOptions._(JSObject it) implements JSObject {
  external factory _ChildProcessOptions({
    String? cwd,
    JSObject? env,
    JSAny? stdio,
    bool? detached,
    String? shell,
    String? encoding,
  });
}

// Prevent multiple of these events from being created for an individual process.
final _spawnEvents = Expando<Future<void>>();
final _errorEvents = Expando<Future<JSObject>>();
final _exitEvents = Expando<Future<JSNumber>>();
final _closeEvents = Expando<Future<void>>();

@JS()
@anonymous
extension type NodeChildProcess._(JSObject it) implements EventEmitter {
  Future<void> get onSpawn => _spawnEvents[this] ??= once('spawn');
  Future<JSObject> get onError => _errorEvents[this] ??= once('error');
  Future<JSNumber> get onExit => _exitEvents[this] ??= once('exit');
  Future<void> get onClose => _closeEvents[this] ??= once('close');
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
    final controller = StreamController<List<int>>.broadcast(sync: true);
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

    void onDone([JSAny? _]) {
      if (controller.isClosed) return;
      controller.close();
    }

    final dataListener = onData.toJS;
    final errorListener = onError.toJS;
    final doneListener = onDone.toJS;
    controller
      ..onListen = () {
        addListener('data', dataListener);
        addListener('error', errorListener);
        addListener('close', doneListener);
      }
      ..onCancel = () {
        removeListener('data', dataListener);
        removeListener('error', errorListener);
        removeListener('close', doneListener);
      };
    return controller.stream;
  }
}

@JS()
@anonymous
extension type NodeWriteableStream._(JSObject it) implements JSObject {
  external void write(JSUint8Array chunk, [String? encoding, JSFunction flushCallback]);
}

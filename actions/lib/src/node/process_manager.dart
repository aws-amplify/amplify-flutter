// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io'
    show
        ProcessSignal,
        ProcessStartMode,
        Process,
        ProcessResult,
        IOSink,
        ProcessException;
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:actions/actions.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:process/process.dart';

export 'dart:io'
    show
        ProcessSignal,
        ProcessStartMode,
        Process,
        ProcessResult,
        IOSink,
        ProcessException;

final NodeProcessManager nodeProcessManager = () {
  final pm = NodeProcessManager();
  context.onExit(pm.close);
  return pm;
}();

final class NodeProcessManager implements Closeable, ProcessManager {
  final _activeProcesses = <NodeProcess>{};

  @override
  bool killPid(int pid, [ProcessSignal signal = ProcessSignal.sigterm]) {
    throw UnimplementedError();
  }

  @override
  Future<ProcessResult> run(
    List<Object> command, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    Encoding? stdoutEncoding,
    Encoding? stderrEncoding,
    NodeChildProcess? pipe,
    bool echoOutput = false,
  }) async {
    stdoutEncoding ??= const Utf8Codec(allowMalformed: true);
    stderrEncoding ??= const Utf8Codec(allowMalformed: true);
    final process = await start(
      command,
      workingDirectory: workingDirectory,
      environment: environment,
      includeParentEnvironment: includeParentEnvironment,
      runInShell: runInShell,
      mode: ProcessStartMode.normal,
      pipe: pipe,
    );
    final pid = process.pid;
    final stdout = StringBuffer();
    final stderr = StringBuffer();
    final stdoutSub = process.stdout
        .transform(stdoutEncoding.decoder)
        .transform(const LineSplitter())
        .listen((line) {
      if (echoOutput) core.info(line);
      stdout.writeln(line);
    });
    final stderrSub = process.stderr
        .transform(stderrEncoding.decoder)
        .transform(const LineSplitter())
        .listen((line) {
      if (echoOutput) core.info(line);
      stderr.writeln(line);
    });
    try {
      final exitCode = await process.exitCode;
      return ProcessResult(
        pid,
        exitCode,
        stdout.toString(),
        stderr.toString(),
      );
    } finally {
      stdoutSub.cancel().ignore();
      stderrSub.cancel().ignore();
    }
  }

  @override
  ProcessResult runSync(
    List<Object> command, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    Encoding? stdoutEncoding,
    Encoding? stderrEncoding,
    bool echoOutput = false,
  }) {
    stdoutEncoding ??= const Utf8Codec(allowMalformed: true);
    stderrEncoding ??= const Utf8Codec(allowMalformed: true);
    final [executable, ...args] = command.cast<String>();
    final result = childProcess.execSync(
      executable,
      args,
      workingDirectory: workingDirectory,
      environment: environment,
      includeParentEnvironment: includeParentEnvironment,
      runInShell: runInShell,
      echoOutput: echoOutput,
    );
    return ProcessResult(
      result.pid,
      result.exitCode,
      stdoutEncoding.decode(result.stdout as Uint8List),
      stderrEncoding.decode(result.stderr as Uint8List),
    );
  }

  @override
  Future<NodeProcess> start(
    List<Object> command, {
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    ProcessStartMode mode = ProcessStartMode.normal,
    NodeChildProcess? pipe,
  }) async {
    final [executable, ...args] = command.cast<String>();
    final jsProcess = childProcess.spawn(
      executable,
      args,
      workingDirectory: workingDirectory,
      environment: environment,
      includeParentEnvironment: includeParentEnvironment,
      runInShell: runInShell,
      mode: mode,
      stdin: pipe?.stdout,
    );
    final nodeProcess = NodeProcess(executable, args, jsProcess);
    await nodeProcess._init();
    _activeProcesses.add(nodeProcess);
    return nodeProcess;
  }

  @override
  bool canRun(dynamic executable, {String? workingDirectory}) {
    throw UnimplementedError();
  }

  @override
  Future<void> close() async {
    for (final process in _activeProcesses) {
      process.close().ignore();
    }
  }
}

final class NodeProcess implements Process, Closeable {
  NodeProcess(
    this.executable,
    this.arguments,
    this.jsProcess,
  );

  final String executable;
  final List<String> arguments;

  @visibleForTesting
  final NodeChildProcess jsProcess;

  final StreamController<List<int>> _stdin =
      StreamController.broadcast(sync: true);
  StreamSubscription<List<int>>? _stdinSub;
  IOSink? _stdinSink;

  final StreamController<List<int>> _stdout = StreamController(sync: true);
  final StreamController<List<int>> _stderr = StreamController(sync: true);

  /// Registers callbacks and waits for the child process to spawn.
  Future<void> _init() async {
    if (jsProcess.stdin case final stdin?) {
      _stdinSink = IOSink(_stdin.sink);
      _stdinSub = _stdin.stream.listen((chunk) {
        stdin.write(Uint8List.fromList(chunk).toJS);
      });
    }
    if (jsProcess.stdout case final stdout?) {
      unawaited(stdout.stream.forward(_stdout));
    } else {
      unawaited(_stdout.close());
    }
    if (jsProcess.stderr case final stderr?) {
      unawaited(stderr.stream.forward(_stderr));
    } else {
      unawaited(_stderr.close());
    }
    await Future.any([
      jsProcess.onSpawn,
      jsProcess.onError.then(
        (error) => throw ProcessException(
          executable,
          arguments,
          'Error spawning subprocess: $error',
        ),
      ),
    ]);
  }

  @override
  Future<int> get exitCode async {
    if (jsProcess.exitCode case final exitCode?) {
      return exitCode;
    }
    await Future.any([
      jsProcess.onClose,
      jsProcess.onError,
      jsProcess.onExit,
    ]);
    return jsProcess.exitCode!;
  }

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    return jsProcess.kill(signal.name);
  }

  @override
  int get pid => jsProcess.pid ?? -1;

  @override
  Stream<List<int>> get stderr => _stderr.stream;

  @override
  IOSink get stdin =>
      _stdinSink ?? (throw StateError('stdin not available on this process'));

  @override
  Stream<List<int>> get stdout => _stdout.stream;

  @override
  Future<void> close() async {
    kill();
    await _stdinSub?.cancel();
    _stdinSub = null;
    await _stdinSink?.close();
    _stdinSink = null;
    await Future.wait([
      if (!_stdin.isClosed) _stdin.close(),
      if (!_stdout.isClosed) _stdout.close(),
      if (!_stderr.isClosed) _stderr.close(),
    ]);
    jsProcess
      ..removeAllListeners()
      ..stdout?.removeAllListeners()
      ..stderr?.removeAllListeners();
  }
}

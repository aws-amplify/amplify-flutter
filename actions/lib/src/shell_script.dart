// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:actions/src/node/actions/core.dart';
import 'package:actions/src/node/fs.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:path/path.dart' as p;

/// Wrapper for a shell [script].
extension type ShellScript(String script) {
  /// Executes the script with `/bin/bash` and returns a [RunningScript]
  /// that can be used to kill the process on timeout.
  RunningScript start() {
    final running = RunningScript._();
    running._future = _run(running);
    return running;
  }

  /// Executes the script with `/bin/bash` and throws if there's an error.
  Future<void> run() => start().future;

  Future<void> _run(RunningScript running) async {
    final fullScript = '''
#!/bin/bash
set -eo pipefail
$script
''';
    core.info(
      'Running script:\n$fullScript\n=======================================',
    );
    await fs.withTempDir('shell_script', (tempDir) async {
      final scriptPath = p.join(tempDir, 'script.sh');
      fs.writeFileSync(scriptPath, fullScript);
      final process = await processManager.start(
        ['/bin/bash', scriptPath],
        mode: ProcessStartMode.normal,
      );
      running._process = process;
      final stdout = StringBuffer();
      final stderr = StringBuffer();
      final stdoutSub = process.stdout
          .transform(const Utf8Codec(allowMalformed: true).decoder)
          .transform(const LineSplitter())
          .listen((line) {
            core.info(line);
            stdout.writeln(line);
          });
      final stderrSub = process.stderr
          .transform(const Utf8Codec(allowMalformed: true).decoder)
          .transform(const LineSplitter())
          .listen((line) {
            core.info(line);
            stderr.writeln(line);
          });
      try {
        final exitCode = await process.exitCode;
        if (exitCode != 0) {
          throw ProcessException(
            '/bin/bash',
            [script],
            '$stdout\n$stderr',
            exitCode,
          );
        }
      } finally {
        stdoutSub.cancel().ignore();
        stderrSub.cancel().ignore();
      }
    });
  }
}

/// A running shell script that can be killed.
class RunningScript {
  RunningScript._();

  Process? _process;
  late final Future<void> _future;

  /// The future that completes when the script finishes.
  Future<void> get future => _future;

  /// Kills the running process and all its child processes with SIGKILL.
  ///
  /// Sending SIGKILL only to the bash wrapper leaves its child processes
  /// (e.g. `flutter test`, `java`, `adb`) as orphans that keep running and
  /// prevent the action from completing.  We therefore first kill the entire
  /// process group via `pkill`, then kill the wrapper itself.
  ///
  /// After killing we also silence [_future] so that the `ProcessException`
  /// it will complete with does not become an unhandled promise rejection
  /// that would crash the Node.js process.
  void kill() {
    final process = _process;
    if (process == null) return;

    // Kill all child processes of the bash wrapper before killing the wrapper
    // itself.  Ignore errors – the children may have already exited.
    ShellScript('pkill -KILL -P ${process.pid} 2>/dev/null || true').run().ignore();

    process.kill(ProcessSignal.sigkill);

    // Suppress the ProcessException that _future will complete with so that
    // it does not become an unhandled rejection.
    _future.ignore();
  }
}

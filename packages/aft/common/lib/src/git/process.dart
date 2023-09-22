// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io' show ProcessResult, ProcessException;

import 'package:aft_common/aft_common.dart';
import 'package:process/process.dart';

extension RunGit on ProcessManager {
  /// Run `git` with the provided [arguments].
  ///
  /// If [stdout] or [stderr] are passed, the output of the `git` command will be echoed.
  ///
  /// Use [processWorkingDir] to set the working directory for the created Git
  /// process. If omitted or `null`, the default (`Directory.current`) is used.
  Future<ProcessResult> runGit(
    List<String> arguments, {
    bool throwOnError = true,
    ProcessSink? stdout,
    ProcessSink? stderr,
    String? processWorkingDir,
  }) async {
    final result = await run(
      <String>['git', ...arguments],
      workingDirectory: processWorkingDir,
      runInShell: true,
    );

    stdout?.call(result.stdout.toString());
    stderr?.call(result.stderr.toString());

    if (throwOnError) {
      _throwIfProcessFailed(result, 'git', arguments);
    }

    return result;
  }

  void _throwIfProcessFailed(
    ProcessResult pr,
    String process,
    List<String> args,
  ) {
    if (pr.exitCode != 0) {
      final values = {
        if (pr.stdout != null) 'Standard out': pr.stdout.toString().trim(),
        if (pr.stderr != null) 'Standard error': pr.stderr.toString().trim(),
      }..removeWhere((k, v) => v.isEmpty);

      String message;
      if (values.isEmpty) {
        message = 'Unknown error';
      } else if (values.length == 1) {
        message = values.values.single;
      } else {
        message = values.entries.map((e) => '${e.key}\n${e.value}').join('\n');
      }

      throw ProcessException(process, args, message, pr.exitCode);
    }
  }
}

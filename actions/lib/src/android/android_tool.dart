// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';

final class AndroidTool {
  AndroidTool(
    this.exe, {
    this.defaultArgs = const [],
    this.defaultStdinCmd,
    this.failOnNonZeroExit = true,
  });

  final String exe;
  final List<String> defaultArgs;
  final String? defaultStdinCmd;
  final bool failOnNonZeroExit;

  Future<ProcessResult> call(
    List<String> args, {
    String? stdinCmd,
    bool? failOnNonZeroExit,
  }) async {
    failOnNonZeroExit ??= this.failOnNonZeroExit;
    args = [...args, ...defaultArgs];

    final pipe = switch ((stdinCmd ?? defaultStdinCmd)?.split(' ')) {
      [final exe, ...final args] => childProcess.spawn(exe, args),
      _ => null,
    };
    final result = await processManager.run(
      <String>[exe, ...args],
      pipe: pipe,
      echoOutput: true,
    );
    final ProcessResult(:exitCode, :stdout, :stderr) = result;
    if (exitCode != 0 && failOnNonZeroExit) {
      throw ProcessException(
        exe,
        args,
        '$stdout\n$stderr',
        exitCode,
      );
    }
    return result;
  }
}

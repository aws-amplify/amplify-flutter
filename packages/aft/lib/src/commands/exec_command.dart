// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/fail_fast_option.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';

/// Command to execute a given script in all packages.
class ExecCommand extends AmplifyCommand with GlobOptions, FailFastOption {
  @override
  String get description => 'Executes a command in all packages';

  @override
  String get name => 'exec';

  @override
  Future<void> run() async {
    await super.run();
    final rawCommand = argResults!.rest;
    if (rawCommand.isEmpty) {
      usageException('Invalid command. Run `aft exec -- <command>`');
    }
    await linkPackages();

    // Process command to handle some quirks of bash and how Dart initially
    // captures these scripts.
    final command = rawCommand
        .map((arg) => arg.trim())
        .where((arg) => arg.isNotEmpty)
        .map((arg) {
      // Inject environment variables for inline scripts.
      //
      // We use bracket notation (e.g. <VARIABLE>) to prevent bash expansion
      // and prevent having to deal with proper quotation and escaping.
      environment.forEach((key, value) {
        arg = arg.replaceAll('<$key>', value);
      });
      return arg;
    }).toList();

    for (final package in commandPackages.values) {
      logger.info(
        'Running "${command.join(' ')}" in "${package.path}"...',
      );
      final result = await execCommand(
        ['sh', '-c', command.join(' ')],
        workingDirectory: package.path,
      );
      if (result.exitCode != 0) {
        if (failFast) {
          exitError(
            'Failed to execute command for package "${package.name}"',
            result.exitCode,
          );
        } else {
          exitCode = result.exitCode;
        }
      }
    }
  }
}

extension ExecCommandFn on AmplifyCommand {
  /// Executes a [command] from the given [workingDirectory] using
  /// [ProcessStartMode.inheritStdio] and returns the result.
  Future<ProcessResult> execCommand(
    List<String> command, {
    required String workingDirectory,
  }) async {
    final proc = await Process.start(
      command.first,
      command.length > 1 ? command.sublist(1) : const [],
      mode: ProcessStartMode.inheritStdio,
      includeParentEnvironment: true,
      environment: environment,
      workingDirectory: workingDirectory,
      runInShell: true,
    );
    unawaited(
      StreamGroup.merge([
        ProcessSignal.sigint.watch(),
        if (!Platform.isWindows) ProcessSignal.sigterm.watch(),
      ]).first.then(proc.kill),
    );
    return ProcessResult(proc.pid, await proc.exitCode, null, null);
  }
}

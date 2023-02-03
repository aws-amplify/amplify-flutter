// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:args/command_runner.dart';

/// Command runner for Dart `pub` commands.
class PubCommandRunner extends CommandRunner<int> {
  PubCommandRunner(Command<int> pubCommand) : super('', 'Runs pub commands') {
    addCommand(pubCommand);
  }

  @override
  Future<int> run(Iterable<String> args) async {
    return await runCommand(argParser.parse(args)) ?? 0;
  }
}

extension DartPubAction on PubCommandRunner {
  /// Runs `pub` for a Dart-only package.
  ///
  /// We use an embedded `pub` runner to speed things up.
  Future<void> runDartPub(
    List<String> arguments,
    PackageInfo package,
  ) async {
    int code;
    String? errorMessage;
    final command = [
      'pub',
      '--directory',
      package.path,
      ...arguments,
    ];
    try {
      code = await run(command);
    } on Object catch (e) {
      code = 1;
      errorMessage = e.toString();
    }
    if (code != 0) {
      throw ProcessException(
        'dart',
        arguments,
        errorMessage ??
            'An error occurred running `pub ${command.join(' ')}` '
                'for `${package.name}`',
        code,
      );
    }
  }
}

/// Runs `pub` for a Flutter package.
///
/// We embed the `flutter pub` logic from `flutter_tools` to improve the speed
/// over spawning a new process.
Future<void> runFlutterPub(
  List<String> arguments,
  PackageInfo package,
) async {
  final proc = await Process.start(
    'flutter',
    ['pub', ...arguments],
    runInShell: true,
    mode: ProcessStartMode.inheritStdio,
    workingDirectory: package.path,
  );
  final exitCode = await proc.exitCode;
  if (exitCode != 0) {
    throw ProcessException('flutter', ['pub', ...arguments], '', exitCode);
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:args/command_runner.dart';

Future<void> main(List<String> args) async {
  final runner = CommandRunner<void>('aft', 'Amplify Flutter repo tools')
    ..argParser.addFlag(
      'verbose',
      abbr: 'v',
      help: 'Prints verbose logs',
      defaultsTo: false,
    )
    ..argParser.addOption(
      'directory',
      help: 'Directory to run commands from. Defaults to current directory.',
      hide: true,
    )
    ..addCommand(GenerateCommand())
    ..addCommand(ListPackagesCommand())
    ..addCommand(DepsCommand())
    ..addCommand(LinkCommand())
    ..addCommand(CleanCommand())
    ..addCommand(PubCommand())
    ..addCommand(BootstrapCommand())
    ..addCommand(VersionBumpCommand());
  try {
    await runner.run(args);
  } on UsageException catch (e) {
    stderr
      ..writeln(e.message)
      ..writeln(e.usage);
    exitCode = 1;
  } on Object catch (e, st) {
    stderr
      ..writeln(e.toString())
      ..writeln(st);
    exitCode = 1;
  } finally {
    // Free up resources before exiting..
    for (final command in runner.commands.values.whereType<AmplifyCommand>()) {
      command.close();
    }
    exit(exitCode);
  }
}

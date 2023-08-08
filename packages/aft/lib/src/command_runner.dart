// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/commands/save_repo_state_command.dart';
import 'package:args/command_runner.dart';

/// Runs the `aft` command using the given [args].
Future<void> run(List<String> args) async {
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
    ..argParser.addOption(
      'config',
      help: 'The path to the aft configuration file, relative to the root '
          'directory. If provided, the given configuration is merged into '
          'the root configuration file.',
    )
    ..addCommand(GenerateCommand())
    ..addCommand(ListPackagesCommand())
    ..addCommand(ConstraintsCommand())
    ..addCommand(LinkCommand())
    ..addCommand(CleanCommand())
    ..addCommand(PublishCommand())
    ..addCommand(BootstrapCommand())
    ..addCommand(VersionBumpCommand())
    ..addCommand(ExecCommand())
    ..addCommand(CreateCommand())
    ..addCommand(SaveRepoStateCommand())
    ..addCommand(RunCommand())
    ..addCommand(DocsCommand());

  try {
    final argResults = runner.argParser.parse(args);
    await runner.runCommand(argResults);
  } finally {
    // Free up resources before exiting..
    for (final command in runner.commands.values.whereType<AmplifyCommand>()) {
      command.close();
    }
  }
}

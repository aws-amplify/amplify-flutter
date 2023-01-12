// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/commands/passthrough_command.dart';
import 'package:args/command_runner.dart';

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
    ..addCommand(GenerateCommand())
    ..addCommand(ListPackagesCommand())
    ..addCommand(DepsCommand())
    ..addCommand(LinkCommand())
    ..addCommand(CleanCommand())
    ..addCommand(PublishCommand())
    ..addCommand(BootstrapCommand())
    ..addCommand(VersionBumpCommand())
    ..addCommand(ExecCommand());
  try {
    final argResults = runner.argParser.parse(args);
    // If we cannot resolve a command, try a passthrough to `dart`/`flutter`.
    if (argResults.command == null) {
      final passthroughCommand = PassthroughCommand(argResults.arguments);
      return await passthroughCommand.run();
    }
    await runner.runCommand(argResults);
  } finally {
    // Free up resources before exiting..
    for (final command in runner.commands.values.whereType<AmplifyCommand>()) {
      command.close();
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';

/// Command to passthrough `dart`/`flutter` commands to the appropriate
/// runner dependending on the package.
class PassthroughCommand extends AmplifyCommand {
  PassthroughCommand(this.arguments);

  final List<String> arguments;

  @override
  String get description => '';

  @override
  String get name => arguments.first;

  @override
  Future<void> run() async {
    await super.run();
    final currentPackage = PackageInfo.fromDirectory(Directory.current);
    if (currentPackage == null) {
      exitError('Command must be run from a package directory');
    }
    final command = arguments.first;
    if (command == 'pub') {
      return pubAction(
        arguments: arguments.sublist(1),
        package: currentPackage,
      );
    }
    final entrypoint = currentPackage.flavor.entrypoint;
    logger.info(
      'Running "$entrypoint ${arguments.join(' ')}" in package: '
      '${currentPackage.path}',
    );
    final proc = await Process.start(
      entrypoint,
      arguments,
      workingDirectory: currentPackage.path,
      mode: ProcessStartMode.inheritStdio,
    );
    exitCode = await proc.exitCode;
  }
}

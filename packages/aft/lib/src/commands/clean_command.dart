// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as p;

/// Command to clean all temporary files in the repo.
class CleanCommand extends AmplifyCommand {
  @override
  String get description =>
      'Cleans temporary files in the Amplify Flutter repo';

  @override
  String get name => 'clean';

  Future<void> _cleanBuildFolder(PackageInfo package) async {
    final buildDir = Directory(p.join(package.path, 'build'));
    if (!await buildDir.exists()) {
      return;
    }
    switch (package.flavor) {
      case PackageFlavor.flutter:
        final cleanCmd = await Process.start(
          'flutter',
          ['clean'],
          workingDirectory: package.path,
        );
        final errors = StringBuffer();
        cleanCmd.captureStderr(sink: errors.writeln);
        if (await cleanCmd.exitCode != 0) {
          logger
            ..error('Could not clean ${package.path}: ')
            ..error(errors.toString());
        }
        break;
      case PackageFlavor.dart:
        await buildDir.delete(recursive: true);
        break;
    }
  }

  @override
  Future<void> run() async {
    await super.run();
    await Future.wait([
      for (final package in allPackages.values) _cleanBuildFolder(package),
    ]);

    stdout.writeln('Project successfully cleaned');
  }
}

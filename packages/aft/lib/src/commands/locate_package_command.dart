// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:path/path.dart' as p;

/// Prints the repo-relative path of a package identified by name or publish
/// tag, e.g. `aft locate-package amplify_core-v2.10.1` -> `packages/amplify_core`.
class LocatePackageCommand extends AmplifyCommand {
  @override
  String get description =>
      'Prints the repo-relative path of a package by name or publish tag.';

  @override
  String get name => 'locate-package';

  @override
  Future<void> run() async {
    // Reserve stdout for the package path so it can be captured directly,
    // e.g. `PKG=$(aft locate-package amplify_core-v2.10.1)`. `--verbose`
    // re-enables the default logging.
    if (!verbose) {
      AWSLogger().logLevel = LogLevel.warn;
    }
    await super.run();

    final rest = argResults!.rest;
    if (rest.length != 1 || rest.single.isEmpty) {
      usageException('Expected exactly one argument: <name-or-tag>');
    }
    final nameOrTag = rest.single;

    final package = aftConfig.locatePackage(nameOrTag);
    if (package == null) {
      exitError("Error: package '$nameOrTag' not found in workspace");
    }

    stdout.writeln(p.relative(package.path, from: rootDir.path));
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/fail_fast_option.dart';

extension PubAction on AmplifyCommand {
  /// Runs "dart/flutter pub [arguments]" in the given [package].
  ///
  /// Throws an [Exception] if the command fails.
  Future<void> pubAction({
    required List<String> arguments,
    required PackageInfo package,
  }) async {
    if (package.skipChecks) {
      return;
    }
    try {
      await runPub(
        package.flavor,
        arguments,
        package,
        verbose: verbose,
      );
    } on Exception catch (e) {
      final command = this;
      if (command is FailFastOption && command.failFast) {
        rethrow;
      } else {
        logger.error(e.toString());
      }
    }
  }
}

/// Runs `pub` for a package.
Future<void> runPub(
  PackageFlavor flavor,
  List<String> arguments,
  PackageInfo package, {
  bool verbose = false,
}) async {
  final proc = await Process.start(
    flavor.entrypoint,
    ['pub', ...arguments],
    runInShell: true,
    mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
    workingDirectory: package.path,
  );
  final exitCode = await proc.exitCode;
  if (exitCode != 0) {
    throw ProcessException(
      flavor.entrypoint,
      ['pub', ...arguments],
      '',
      exitCode,
    );
  }
}

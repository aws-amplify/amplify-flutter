// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/src/command_runner.dart' as command_runner;
import 'package:args/command_runner.dart';

Future<void> main(List<String> args) async {
  try {
    await command_runner.run(args);
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
    exit(exitCode);
  }
}

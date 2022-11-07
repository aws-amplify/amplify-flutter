// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aft/aft.dart';
import 'package:args/command_runner.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:cli_util/cli_util.dart';
import 'package:flutter_tools/src/base/template.dart';
import 'package:flutter_tools/src/cache.dart';
import 'package:flutter_tools/src/commands/packages.dart';
import 'package:flutter_tools/src/context_runner.dart' as flutter;
import 'package:flutter_tools/src/isolated/mustache_template.dart';
import 'package:flutter_tools/src/runner/flutter_command_runner.dart';
import 'package:path/path.dart' as path;

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

/// Runs `pub` for a Dart-only package.
///
/// We use an embedded `pub` runner to speed things up.
Future<void> runDartPub(
  PubAction action,
  String name,
  String directory, {
  required bool verbose,
  required PubCommandRunner pubRunner,
}) async {
  int code;
  String? errorMessage;
  try {
    code = await pubRunner.run([
      'pub',
      action.name,
      '--directory',
      directory,
    ]);
  } on Object catch (e) {
    code = 1;
    errorMessage = e.toString();
  }
  if (code != 0) {
    throw Exception(
      errorMessage ??
          'An error occurred running `pub ${action.name}` for `$name`',
    );
  }
}

/// Runs `pub` for a Flutter package.
///
/// We embed the `flutter pub` logic from `flutter_tools` to improve the speed
/// over spawning a new process.
Future<void> runFlutterPub(
  PubAction action,
  PackageInfo package, {
  Logger? logger,
}) async {
  final flutterRoot = getEnv('FLUTTER_ROOT');
  Cache.flutterRoot = flutterRoot ??
      // Assumes using Dart SDK from Flutter
      path.normalize(
        path.absolute(path.dirname(path.dirname(path.dirname(getSdkPath())))),
      );
  logger?.trace('Resolved flutter root: ${Cache.flutterRoot}');
  await flutter.runInContext(
    () async {
      final runner = FlutterCommandRunner()
        ..addCommand(
          PackagesGetCommand(action.name, action == PubAction.upgrade),
        );
      await runner.run([action.name, package.path]);
    },
    overrides: {
      // Do not try to run `flutter pub` using normal pub since `PUB_CACHE`
      // will be wrong and can only be set via an environment variable and
      // thus an external process.
      //
      // Pub: () => _FlutterPub(
      //       package: package,
      //       verbose: verbose,
      //       pubRunner: pubRunner,
      //     ),
      // Needed by `flutter_tools` but not automatically provided
      TemplateRenderer: () => const MustacheTemplateRenderer(),
    },
  );
}

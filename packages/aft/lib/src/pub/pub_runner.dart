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
import 'package:flutter_tools/src/base/io.dart';
import 'package:flutter_tools/src/base/template.dart';
import 'package:flutter_tools/src/cache.dart';
import 'package:flutter_tools/src/commands/packages.dart';
import 'package:flutter_tools/src/context_runner.dart' as flutter;
import 'package:flutter_tools/src/dart/pub.dart';
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

/// Stub for [Pub] runner, used internally in `flutter_tools` to execute `pub`
/// commands.
///
/// The default runner spawns a new process, but we speed things up by embedding
/// the `pub` tool in [runDartPub].
class _FlutterPub implements Pub {
  _FlutterPub({
    required this.package,
    required this.verbose,
    required this.pubRunner,
  });

  final PackageInfo package;
  final bool verbose;
  final PubCommandRunner pubRunner;

  @override
  Future<void> batch(
    List<String> arguments, {
    required PubContext context,
    String? directory,
    MessageFilter? filter,
    String failureMessage = 'pub failed',
    required bool retry,
    bool? showTraceForErrors,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> get({
    required PubContext context,
    String? directory,
    bool skipIfAbsent = false,
    bool upgrade = false,
    bool offline = false,
    bool generateSyntheticPackage = false,
    String? flutterRootOverride,
    bool checkUpToDate = false,
    bool shouldSkipThirdPartyGenerator = true,
    bool printProgress = true,
  }) {
    return runDartPub(
      upgrade ? PubAction.upgrade : PubAction.get,
      package.name,
      package.path,
      verbose: verbose,
      pubRunner: pubRunner,
    );
  }

  @override
  Future<void> interactively(
    List<String> arguments, {
    String? directory,
    required Stdio stdio,
    bool touchesPackageConfig = false,
    bool generateSyntheticPackage = false,
  }) {
    throw UnimplementedError();
  }
}

/// Runs `pub` for a Flutter package.
///
/// We embed the `flutter pub` logic from `flutter_tools` to improve the speed
/// over spawning a new process.
Future<void> runFlutterPub(
  PubAction action,
  PackageInfo package, {
  required bool verbose,
  required PubCommandRunner pubRunner,
  Logger? logger,
}) async {
  // Assumes using Dart SDK from Flutter
  Cache.flutterRoot = path.normalize(
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
      Pub: () => _FlutterPub(
            package: package,
            verbose: verbose,
            pubRunner: pubRunner,
          ),
      // Needed by `flutter_tools` but not automatically provided
      TemplateRenderer: () => const MustacheTemplateRenderer(),
    },
  );
}

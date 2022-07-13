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

import 'dart:async';
import 'dart:collection';

import 'package:aft/aft.dart';
import 'package:async/async.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:pub/src/http.dart' as pub_http;

enum PubAction {
  get(
    'Resolves packages using the pubspec.lock file',
    'Successfully got packages',
  ),
  upgrade(
    'Upgrades packages and the pubspec.lock file to their latest versions',
    'Successfully upgraded packages',
  );

  const PubAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}

/// Aliases for some `pub` commands which act on the whole repo.
class PubCommand extends AmplifyCommand {
  PubCommand() {
    addSubcommand(PubSubcommand(PubAction.get));
    addSubcommand(PubSubcommand(PubAction.upgrade));
  }

  @override
  String get description =>
      'Aliases for some `pub` commands which act on the whole repo';

  @override
  String get name => 'pub';
}

class PubSubcommand extends AmplifyCommand {
  PubSubcommand(this.action);

  final PubAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  @override
  Future<void> run() async {
    await pubAction(
      action: action,
      allPackages: await allPackages,
      verbose: verbose,
      logger: logger,
      createPubRunner: createPubRunner,
      httpClient: httpClient,
    );
  }
}

Future<void> pubAction({
  required PubAction action,
  required Map<String, PackageInfo> allPackages,
  required bool verbose,
  required PubCommandRunner Function() createPubRunner,
  required http.Client httpClient,
  Logger? logger,
}) async {
  // Set the internal HTTP client to one that can be reused multiple times.
  pub_http.innerHttpClient = httpClient;

  allPackages = SplayTreeMap.of(allPackages, (a, b) {
    final pkgA = allPackages[a]!;
    final pkgB = allPackages[b]!;
    // Sort examples first so that `pub get` is run in them first. Seems to be
    // a bug when embedding the flutter tooling that running `pub get` in the
    // main package first doesn't work.
    if (path.basename(pkgB.path) == 'example') {
      return 1;
    }
    if (path.basename(pkgA.path) == 'example') {
      return -1;
    }
    return pkgA.compareTo(pkgB);
  });

  final progress =
      logger?.progress('Running `pub ${action.name}` in all packages');
  final results = <String, Result<void>>{};
  for (final package in allPackages.values) {
    final packageProgress = logger?.progress(package.name);
    switch (package.flavor) {
      case PackageFlavor.flutter:
        results[package.name] = await Result.capture(
          runFlutterPub(
            action,
            package,
            verbose: verbose,
            pubRunner: createPubRunner(),
            logger: logger,
          ),
        );
        break;
      case PackageFlavor.dart:
        results[package.name] = await Result.capture(
          runDartPub(
            action,
            package.name,
            package.path,
            verbose: verbose,
            pubRunner: createPubRunner(),
          ),
        );
        break;
    }
    packageProgress?.finish();
  }
  progress?.finish(message: action.successMessage, showTiming: true);

  final failed = results.entries.where((entry) => entry.value.isError);
  if (failed.isNotEmpty) {
    logger?.stderr('The following packages failed: ');
    for (final failedPackage in failed) {
      final error = failedPackage.value.asError!;
      logger
        ?..stderr(failedPackage.key)
        ..stderr(error.error.toString())
        ..stderr(error.stackTrace.toString());
    }
    // TODO(dnys1): Should this be behind a flag?
    /// Can add back when https://github.com/flutter/flutter/issues/107647 is
    /// resolved.
    // exitCode = 1;
  }
}

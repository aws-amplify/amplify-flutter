// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart' as http;
import 'package:pub/src/http.dart' as pub_http;

enum PubAction {
  get(
    'Resolves packages using the pubspec.lock file',
    'Successfully got packages',
  ),
  upgrade(
    'Upgrades packages and the pubspec.lock file to their latest versions',
    'Successfully upgraded packages',
  ),
  publish(
    'Publishes package to pub.dev',
    'Successfully published package',
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
    addSubcommand(PublishCommand());
  }

  @override
  String get description =>
      'Aliases for some `pub` commands which act on the whole repo';

  @override
  String get name => 'pub';
}

class PubSubcommand extends AmplifyCommand {
  PubSubcommand(this.action) {
    argParser.addFlag(
      'build',
      help: 'Runs build_runner for packages which need it',
      negatable: false,
      defaultsTo: false,
    );
  }

  final PubAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  late final bool build = argResults!['build'] as bool;

  @override
  Future<void> run() async {
    await super.run();
    await pubAction(
      action: action,
      allPackages: allPackages.values,
      verbose: verbose,
      logger: logger,
      createPubRunner: createPubRunner,
      httpClient: httpClient,
    );
    if (build) {
      for (final package in allPackages.values) {
        await runBuildRunner(package, logger: logger, verbose: verbose);
      }
    }
  }
}

Future<void> pubAction({
  required PubAction action,
  required Iterable<PackageInfo> allPackages,
  required bool verbose,
  required PubCommandRunner Function() createPubRunner,
  required http.Client httpClient,
  AWSLogger? logger,
}) async {
  // Set the internal HTTP client to one that can be reused multiple times.
  pub_http.innerHttpClient = httpClient;
  logger ??= AWSLogger('pubAction');

  logger.info('Running `pub ${action.name}` in all packages...');
  final results = <String, Result<void>>{};
  for (final package in allPackages) {
    if (package.skipChecks) {
      continue;
    }
    logger.info('${package.name}...');
    switch (package.flavor) {
      case PackageFlavor.flutter:
        results[package.name] = await Result.capture(
          runFlutterPub(
            action,
            package,
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
  }

  final failed = results.entries.where((entry) => entry.value.isError);
  if (failed.isNotEmpty) {
    logger.error('The following packages failed: ');
    for (final failedPackage in failed) {
      final error = failedPackage.value.asError!;
      logger
        ..error(failedPackage.key)
        ..error(error.error.toString())
        ..error(error.stackTrace.toString());
    }
    exitCode = 1;
  }
}

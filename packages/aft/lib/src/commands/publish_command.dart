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

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:graphs/graphs.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

/// Command to publish all Dart/Flutter packages in the repo.
class PublishCommand extends AmplifyCommand {
  PublishCommand() {
    argParser
      ..addFlag(
        'force',
        abbr: 'f',
        help: 'Ignores errors in pre-publishing commands and publishes '
            'without prompt',
        negatable: false,
      )
      ..addFlag(
        'dry-run',
        help: 'Passes `--dry-run` flag to `dart` or `flutter` publish command',
        negatable: false,
      );
  }

  late final bool force = argResults!['force'] as bool;
  late final bool dryRun = argResults!['dry-run'] as bool;

  @override
  String get description =>
      'Publishes all packages in the Amplify Flutter repo which '
      'need publishing.';

  @override
  String get name => 'publish';

  /// Checks if [package] can be published based on whether the local version
  /// is newer than the one published to `pub.dev`.
  Future<PackageInfo?> _checkPublishable(PackageInfo package) async {
    Never fail(String error) {
      logger
        ..error('Could not retrieve package info for ${package.name}: ')
        ..error(error)
        ..error('Retry with `--force` to ignore this error');
      exit(1);
    }

    try {
      final versionInfo = await package.resolveVersionInfo(httpClient);
      final latestVersion = versionInfo?.latestVersion;
      if (latestVersion == null) {
        if (force) {
          return package;
        } else {
          fail('Could not determine latest version');
        }
      }

      return latestVersion < package.pubspecInfo.pubspec.version!
          ? package
          : null;
    } on Exception catch (e) {
      if (force) {
        return null;
      } else {
        fail(e.toString());
      }
    }
  }

  /// Runs pre-publish operations for [package], most importantly any necessary
  /// `build_runner` tasks.
  Future<void> _prePublish(PackageInfo package) async {
    logger.info('Running pre-publish checks for ${package.name}...');
    await runBuildRunner(package, logger: logger, verbose: verbose);
  }

  static final _validationStartRegex = RegExp(
    r'Package validation found the following',
  );
  static final _validationConstraintRegex = RegExp(
    r'\* Your dependency on ".+" should allow more than one version.',
  );
  static final _validationErrorRegex = RegExp(r'^\s*\*');

  /// Publishes the package using `pub`.
  Future<void> _publish(PackageInfo package) async {
    logger.info('Publishing ${package.name}${dryRun ? ' (dry run)' : ''}...');
    final publishCmd = await Process.start(
      package.flavor.entrypoint,
      [
        'pub',
        'publish',
        if (dryRun) '--dry-run',
      ],
      workingDirectory: package.path,
    );
    final output = StringBuffer();
    publishCmd
      ..captureStdout(sink: output.writeln)
      ..captureStderr(sink: output.writeln);
    if (verbose) {
      publishCmd
        ..captureStdout()
        ..captureStderr();
    }
    publishCmd.stdin.writeln('y');

    final exitCode = await publishCmd.exitCode;
    if (exitCode != 0) {
      // Find any error lines which are not dependency constraint-related.
      final failures = output
          .toString()
          .split('\n')
          .skipWhile((line) => !_validationStartRegex.hasMatch(line))
          .where(_validationErrorRegex.hasMatch)
          .where((line) => !_validationConstraintRegex.hasMatch(line));
      if (failures.isNotEmpty) {
        logger
          ..error(
            'Failed to publish package ${package.name} '
            'due to the following errors: ',
          )
          ..error(failures.join('\n'));
        exit(exitCode);
      }
    }
  }

  @override
  Future<void> run() async {
    // Gather packages which can be published.
    var publishablePackages = (await Future.wait([
      for (final package in allPackages.values) _checkPublishable(package),
    ]))
        .whereType<PackageInfo>()
        .toList();

    // Non-example packages which are being held back
    final unpublishablePackages = allPackages.values.where(
      (pkg) =>
          pkg.pubspecInfo.pubspec.publishTo == null &&
          !publishablePackages.contains(pkg),
    );

    if (publishablePackages.isEmpty) {
      logger.info('No packages need publishing!');
      return;
    }

    try {
      publishablePackages = sortPackagesTopologically<PackageInfo>(
        publishablePackages,
        (pkg) => pkg.pubspecInfo.pubspec,
      );
    } on CycleException<dynamic> {
      if (!force) {
        exitError('Cannot sort packages with inter-dependencies.');
      }
    }

    stdout
      ..writeln('Preparing to publish${dryRun ? ' (dry run)' : ''}: ')
      ..writeln(
        publishablePackages
            .map((pkg) => '${pkg.pubspecInfo.pubspec.version} ${pkg.name}')
            .join('\n'),
      )
      ..writeln()
      ..writeln('The following packages will not be published: ')
      ..writeln(
        unpublishablePackages
            .map((pkg) => '${pkg.pubspecInfo.pubspec.version} ${pkg.name}')
            .join('\n'),
      );

    if (!force) {
      final shouldProceed = prompt('Proceed with publish (y/N)? ') == 'y';
      if (!shouldProceed) {
        return;
      }
    }

    // Run pre-publish checks before publishing any packages.
    for (final package in publishablePackages) {
      await _prePublish(package);
    }

    // Publish each package sequentially.
    for (final package in publishablePackages) {
      await _publish(package);
    }

    stdout.writeln(
      dryRun
          ? 'All packages passed pre-publish checks'
          : 'All packages were successfully published',
    );
  }
}

/// Runs `build_runner` for [package].
Future<void> runBuildRunner(
  PackageInfo package, {
  required AWSLogger logger,
  required bool verbose,
}) async {
  if (!package.needsBuildRunner) {
    return;
  }
  logger.info('Running build_runner for ${package.name}...');
  final buildRunnerCmd = await Process.start(
    package.flavor.entrypoint,
    [
      if (package.flavor == PackageFlavor.flutter) 'pub',
      'run',
      'build_runner',
      'build',
      if (verbose) '--verbose',
      '--delete-conflicting-outputs',
    ],
    workingDirectory: package.path,
  );
  final output = StringBuffer();
  buildRunnerCmd
    ..captureStdout(sink: output.writeln)
    ..captureStderr(sink: output.writeln);
  if (verbose) {
    buildRunnerCmd
      ..captureStdout()
      ..captureStderr();
  }
  if (await buildRunnerCmd.exitCode != 0) {
    logger.error('Failed to run `build_runner` for ${package.name}: ');
    if (!verbose) {
      logger.error(output.toString());
    }
    exit(1);
  }
}

/// Sorts packages in topological order so they may be published in the order
/// they're sorted.
///
/// Packages with inter-dependencies cannot be topologically sorted and will
/// throw a [CycleException].
List<T> sortPackagesTopologically<T>(
  Iterable<T> packages,
  Pubspec Function(T) getPubspec,
) {
  final pubspecs = packages.map(getPubspec);
  final packageNames = pubspecs.map((el) => el.name).toList();
  final graph = <String, Iterable<String>>{
    for (var package in pubspecs)
      package.name: package.dependencies.keys.where(packageNames.contains),
  };
  final ordered = topologicalSort(graph.keys, (key) => graph[key]!);
  return packages.toList()
    ..sort((a, b) {
      // `ordered` is in reverse ordering to our desired publish precedence.
      return ordered
          .indexOf(getPubspec(b).name)
          .compareTo(ordered.indexOf(getPubspec(a).name));
    });
}

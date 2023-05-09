// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:graphs/graphs.dart';
import 'package:path/path.dart' as p;

/// Command to publish all Dart/Flutter packages in the repo.
class PublishCommand extends AmplifyCommand with GlobOptions {
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
    final publishTo = package.pubspecInfo.pubspec.publishTo;
    if (publishTo == 'none') {
      return null;
    }

    Never fail(String error) {
      logger
        ..error('Could not retrieve package info for ${package.name}: ')
        ..error(error)
        ..error('Retry with `--force` to ignore this error');
      exit(1);
    }

    try {
      final versionInfo = await resolveVersionInfo(package.name);
      final publishedVersion = maxBy(
        [
          if (versionInfo?.latestPrerelease != null)
            versionInfo?.latestPrerelease!,
          if (versionInfo?.latestVersion != null) versionInfo?.latestVersion!,
        ],
        (v) => v,
      );
      if (publishedVersion == null) {
        logger.info('No published info for package ${package.name}');
        return package;
      }

      final currentVersion = package.pubspecInfo.pubspec.version!;
      return currentVersion > publishedVersion ? package : null;
    } on Exception catch (e) {
      logger.error('Error retrieving info for package ${package.name}', e);
      if (force) {
        return package;
      } else {
        fail(e.toString());
      }
    }
  }

  /// Runs pre-publish operations for [package], most importantly any necessary
  /// `build_runner` tasks.
  Future<void> _prePublish(PackageInfo package) async {
    logger.info('Running pre-publish checks for ${package.name}...');
    if (!dryRun) {
      // Remove any overrides so that `pub` commands resolve against
      // `pubspec.yaml`, allowing us to verify we've set our constraints
      // correctly.
      final pubspecOverrideFile = File(
        p.join(package.path, 'pubspec_overrides.yaml'),
      );
      if (pubspecOverrideFile.existsSync()) {
        pubspecOverrideFile.deleteSync();
      }
    }
    final res = await Process.run(
      package.flavor.entrypoint,
      ['pub', 'upgrade'],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
      workingDirectory: package.path,
    );
    if (res.exitCode != 0) {
      stdout.write(res.stdout);
      stderr.write(res.stderr);
      exit(res.exitCode);
    }
    await runBuildRunner(package, logger: logger, verbose: verbose);
  }

  static final _validationStartRegex = RegExp(
    r'Package validation found the following',
  );
  static final _validationConstraintRegex = RegExp(
    r'\* Your dependency on ".+" should allow more than one version\.',
  );
  static final _validationCheckedInFilesRegex = RegExp(
    r'\* \d+ checked-in files? (is|are) ignored by a `\.gitignore`\.',
  );
  // TODO(dnys1): Remove when we hit 1.0. For now this is appropriate since
  // we have 0.x versions depending on 1.x-pre versions.
  static final _validationPreReleaseRegex = RegExp(
    r'\* Packages dependent on a pre-release of another package should themselves be published as a pre-release version\.',
  );
  static final _validationPreReleaseSdkRegex = RegExp(
    r'\* Packages with an SDK constraint on a pre-release of the Dart SDK should themselves be published as a pre-release version\.',
  );
  static final _validationNonDevOverridesRegex = RegExp(
    r'\* Non-dev dependencies are overridden in pubspec_overrides\.yaml\.',
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
      runInShell: true,
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
      final failures = LineSplitter.split(output.toString())
          .skipWhile((line) => !_validationStartRegex.hasMatch(line))
          .where(_validationErrorRegex.hasMatch)
          .where((line) => !_validationConstraintRegex.hasMatch(line))
          .where((line) => !_validationPreReleaseRegex.hasMatch(line))
          .where((line) => !_validationCheckedInFilesRegex.hasMatch(line))
          .where((line) => !_validationNonDevOverridesRegex.hasMatch(line))
          .where((line) => !_validationPreReleaseSdkRegex.hasMatch(line));
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
    await super.run();
    // Gather packages which can be published.
    final publishablePackages = repo
        .publishablePackages(commandPackages)
        .where((pkg) => pkg.pubspecInfo.pubspec.publishTo != 'none');

    // Gather packages which need to be published.
    final packagesNeedingPublish = (await Future.wait([
      for (final package in publishablePackages) _checkPublishable(package),
    ]))
        .whereType<PackageInfo>()
        .toList();

    // Publishable packages which are being held back.
    final unpublishablePackages = publishablePackages.where(
      (pkg) => !packagesNeedingPublish.contains(pkg),
    );

    if (packagesNeedingPublish.isEmpty) {
      logger.info('No packages need publishing!');
      return;
    }

    try {
      sortPackagesTopologically<PackageInfo>(
        packagesNeedingPublish,
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
        packagesNeedingPublish
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

    // Run pre-publish checks then publish package.
    //
    // Do not split up this step. Since packages are iterated in topological
    // ordering, it is okay for later packages to fail. While this means that
    // some packages will not be published, it also means that the command
    // can be re-run to pick up where it left off.
    for (final package in packagesNeedingPublish) {
      await _prePublish(package);
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
  bool force = false,
}) async {
  if (!package.needsBuildRunner && !force) {
    return;
  }
  final dartTool = Directory(p.join(package.path, '.dart_tool'));
  if (!dartTool.existsSync()) {
    await runPub(package.flavor, ['get'], package);
  }
  logger.debug('Running build_runner for ${package.name}...');
  final buildRunnerCmd = await Process.start(
    package.flavor.entrypoint,
    [
      if (package.flavor == PackageFlavor.flutter) 'pub',
      'run',
      'build_runner',
      'build',
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

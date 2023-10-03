// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:collection/collection.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_semver/pub_semver.dart';

enum ConstraintsAction {
  check(
    'Checks whether all constraints in the repo match the global config',
    'All constraints matched!',
  ),
  update(
    'Updates constraints in aft.yaml to match the latest in pub',
    'Constraints successfully updated!',
  ),
  apply(
    'Applies constraints throughout the repo to match those '
        'in the global config',
    'Constraints successfully applied!',
  );

  const ConstraintsAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}

/// Command to manage dependencies across all Dart/Flutter packages in the repo.
class ConstraintsCommand extends AmplifyCommand {
  ConstraintsCommand() {
    addSubcommand(_ConstraintsCheckCommand());
    addSubcommand(_ConstraintsApplyCommand());
    addSubcommand(_ConstraintsUpdateCommand());
    addSubcommand(_ConstraintsPubVerifyCommand());
  }

  @override
  String get description =>
      'Manage constraints across all packages in the Amplify Flutter repo';

  @override
  String get name => 'constraints';
}

class _ConstraintsSubcommand extends AmplifyCommand with GlobOptions {
  _ConstraintsSubcommand(this.action);

  final ConstraintsAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  Future<void> _run() async {
    final constraintsCheckers = [
      GlobalConstraintChecker(
        action,
        aftConfig.dependencies.asMap(),
        aftConfig.environment,
      ),
      PublishConstraintsChecker(
        action,
        repo.getPackageGraph(includeDevDependencies: true),
      ),
    ];
    for (final package in commandPackages.values) {
      for (final constraintsChecker in constraintsCheckers) {
        constraintsChecker.checkConstraints(package);
      }

      if (package.pubspecInfo.pubspecYamlEditor.edits.isNotEmpty) {
        File.fromUri(package.pubspecInfo.uri).writeAsStringSync(
          package.pubspecInfo.pubspecYamlEditor.toString(),
        );
      }
    }
    final mismatchedDependencies = constraintsCheckers.expand(
      (checker) => checker.mismatchedDependencies,
    );
    if (mismatchedDependencies.isNotEmpty) {
      for (final mismatched in mismatchedDependencies) {
        final (:package, :dependencyName, :message) = mismatched;
        logger.error(
          '${package.path}\n'
          'Mismatched `$dependencyName`:\n'
          '$message\n',
        );
      }
      exit(1);
    }
    logger.info(action.successMessage);
  }
}

class _ConstraintsApplyCommand extends _ConstraintsSubcommand {
  _ConstraintsApplyCommand() : super(ConstraintsAction.apply);

  @override
  Future<void> run() async {
    await super.run();
    await _run();
  }
}

class _ConstraintsCheckCommand extends _ConstraintsSubcommand {
  _ConstraintsCheckCommand() : super(ConstraintsAction.check);

  @override
  Future<void> run() async {
    await super.run();
    await _run();
  }
}

class _ConstraintsUpdateCommand extends _ConstraintsSubcommand {
  _ConstraintsUpdateCommand() : super(ConstraintsAction.update);

  @override
  Future<void> run() async {
    await super.run();
    final globalDependencyConfig = aftConfig.dependencies;

    final rootPubspec = Directory.fromUri(aftConfig.rootDirectory).pubspec!;
    final aftEditor = rootPubspec.pubspecYamlEditor;
    final failedUpdates = <String>[];
    for (final entry in globalDependencyConfig.entries) {
      final package = entry.key;
      final versionConstraint = entry.value;

      void updateConstraint(VersionConstraint newVersionConstraint) {
        aftEditor.update(
          ['dependencies', package],
          newVersionConstraint.toString(),
        );
      }

      // Get the currently published version of the package.
      try {
        final versionInfo = await resolveVersionInfo(package);
        final latestVersion = versionInfo?.latestVersion;
        if (latestVersion == null) {
          failedUpdates.add('No versions found for package: $package');
          continue;
        }

        // Update the constraint to include `latestVersion` as its new upper
        // bound.
        if (versionConstraint is Version) {
          // For pinned versions, update them to the latest version (do not
          // create a range).
          if (latestVersion != versionConstraint) {
            updateConstraint(
              maxBy(
                [versionConstraint, latestVersion],
                (v) => v,
              )!,
            );
          }
        } else {
          // For ranged versions:
          // - If the range specifies a lower bound only, e.g. `^1.0.0`, do
          //   nothing but warn if a new breaking change is available.
          // - If the range specifies a sliding window for a single minor
          //   version, e.g. `>=1.1.0 <1.2.0`, and the latest version is greater
          //   than the upper bound, slide the window.
          // - If the range specifies a window larger than a single minor
          //   version, keep the lower bound and move the upper bound unless
          //   it's a major version bump.
          versionConstraint as VersionRange;
          final lowerBound = versionConstraint.min;
          final includeLowerBound = versionConstraint.includeMin;
          final upperBound = versionConstraint.max;
          final includeUpperBound = versionConstraint.includeMax;
          if (lowerBound == null || upperBound == null) {
            throw ArgumentError.value(
              lowerBound,
              'lowerBound',
              'Constaints without a lower or upper bound are not supported',
            );
          }
          // ^1.0.0
          if (versionConstraint ==
              VersionConstraint.compatibleWith(lowerBound)) {
            if (latestVersion > upperBound) {
              logger.warn(
                'Breaking change detected for $package: $latestVersion '
                '(current constraint: $versionConstraint)',
              );
            }
            continue;
          }
          // ">=1.1.0 <1.2.0"
          if (lowerBound.major == upperBound.major &&
              lowerBound.minor == upperBound.minor - 1 &&
              includeLowerBound &&
              !includeUpperBound) {
            if (latestVersion < upperBound) {
              continue;
            }
            updateConstraint(
              VersionRange(
                min: Version(latestVersion.major, latestVersion.minor, 0),
                includeMin: true,
                max: Version(latestVersion.major, latestVersion.minor + 1, 0),
                includeMax: false,
              ),
            );
            continue;
          }
          if (latestVersion >= lowerBound.nextBreaking) {
            logger.warn(
              'Breaking change detected for $package: $latestVersion '
              '(current constraint: $versionConstraint)',
            );
            continue;
          }
          // ">=1.1.0 <1.4.3"
          updateConstraint(
            VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: maxBy([latestVersion, upperBound], (v) => v),
              includeMax: includeUpperBound,
            ),
          );
        }
      } on Exception catch (e) {
        failedUpdates.add('$package: $e');
        continue;
      }
    }

    final hasUpdates = aftEditor.edits.isNotEmpty;
    if (hasUpdates) {
      File.fromUri(rootPubspec.uri).writeAsStringSync(
        aftEditor.toString(),
        flush: true,
      );
      aftConfigLoader.reload();
    } else {
      logger.info('No dependencies updated');
    }

    if (failedUpdates.isNotEmpty) {
      for (final failedUpdate in failedUpdates) {
        logger.error('Could not update $failedUpdate');
      }
      exit(1);
    }

    // Apply constraints throughout repo.
    if (hasUpdates) {
      await _run();
    }
  }
}

class _ConstraintsPubVerifyCommand extends AmplifyCommand {
  _ConstraintsPubVerifyCommand() {
    argParser.addOption(
      'count',
      help: 'The number of pub packages to verify against',
      defaultsTo: '100',
    );
  }
  @override
  String get name => 'pub-verify';

  @override
  String get description =>
      'Verifies Amplify constraints against the top pub.dev packages';

  final _pubClient = PubClient();

  late final count = int.parse(argResults!['count'] as String);

  @override
  Future<void> run() async {
    await super.run();

    // Packages with version constraints so old, we consider them abandoned
    // and don't bother running the constraint check for them.
    const unofficiallyAbandonedPackages = [
      'chewie',
      'wakelock',
    ];

    // List top pub.dev packages
    logger.info('Collecting top $count pub.dev packages...');
    final topPubPackages = <String, String>{};
    var page = 1;
    while (topPubPackages.length < count) {
      final results = await _pubClient.search('', page: page++);
      for (final packageName in results.packages.map((pkg) => pkg.package)) {
        if (unofficiallyAbandonedPackages.contains(packageName)) {
          continue;
        }

        // Get latest version
        final packageInfo = await _pubClient.packageInfo(packageName);
        topPubPackages[packageName] = packageInfo.latest.version;
      }
    }

    // Create app with all Amplify Flutter dependencies
    logger.info('Creating temporary app...');
    final appDir =
        Directory.systemTemp.createTempSync('amplify_constraints_verify_');
    final createRes = await Process.start(
      'flutter',
      ['create', '--project-name=constraints_verify', '.'],
      workingDirectory: appDir.path,
      mode: ProcessStartMode.inheritStdio,
    );
    if (await createRes.exitCode != 0) {
      throw Exception('flutter create failed');
    }
    const amplifyPackages = [
      'amplify_flutter',
      'amplify_analytics_pinpoint',
      'amplify_api',
      'amplify_auth_cognito',
      'amplify_datastore:^1.1.0-supports.only.mobile.0',
      'amplify_storage_s3',
    ];
    final addRes = await Process.run(
      'flutter',
      ['pub', 'add', ...amplifyPackages],
      workingDirectory: appDir.path,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (addRes.exitCode != 0) {
      throw Exception(
        'Could not add Amplify packages: ${addRes.stderr}',
      );
    }

    // Try adding each package
    final failedPackages = <String>[];
    for (final MapEntry(key: packageName, value: latestVersion)
        in topPubPackages.entries) {
      logger.info('Verifying "$packageName:$latestVersion"...');
      final addRes = await Process.run(
        'flutter',
        ['pub', 'add', '$packageName:$latestVersion'],
        workingDirectory: appDir.path,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (addRes.exitCode != 0) {
        failedPackages.add('$packageName:$latestVersion');
        logger.error(
          'Failed to add "$packageName"',
          '${addRes.stdout}\n${addRes.stderr}',
        );
      }
      final removeRes = await Process.run(
        'flutter',
        ['pub', 'remove', packageName],
        workingDirectory: appDir.path,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (removeRes.exitCode != 0) {
        throw Exception('Error removing package: ${removeRes.stderr}');
      }
    }

    if (failedPackages.isNotEmpty) {
      logger
        ..error('Failed to add the following packages:')
        ..error(failedPackages.map((pkg) => '- $pkg').join('\n'));
      exit(1);
    }

    logger.info('All packages succeeded.');
  }

  @override
  void close() {
    _pubClient.close();
    super.close();
  }
}

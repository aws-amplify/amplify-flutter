// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:aft/aft.dart';
import 'package:aft/src/options/fail_fast_option.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:path/path.dart' as path;

/// Command to bootstrap/link Dart/Flutter packages in the repo.
class BootstrapCommand extends AmplifyCommand with GlobOptions, FailFastOption {
  BootstrapCommand() {
    argParser
      ..addFlag(
        'upgrade',
        abbr: 'u',
        help: 'Runs `pub upgrade` instead of `pub get`',
        negatable: true,
        defaultsTo: true,
      )
      ..addFlag(
        'build',
        help: 'Runs build_runner for packages which need it',
        negatable: true,
        defaultsTo: true,
      );
  }

  @override
  String get description =>
      'Links all packages in the Amplify Flutter repo '
      'to prepare for local development';

  @override
  String get name => 'bootstrap';

  @override
  List<String> get aliases => ['bs'];

  late final bool upgrade = argResults!['upgrade'] as bool;
  late final bool build = argResults!['build'] as bool;

  /// Creates an empty `amplifyconfiguration.dart` file.
  Future<void> _createEmptyConfig(PackageInfo package) async {
    // Only create for example apps.
    if (!package.isExample) {
      return;
    }
    await _createEmptyGen1Config(package);
    await _createEmptyGen2Config(package);
  }

  Future<void> _createEmptyGen1Config(PackageInfo package) async {
    final file = File(
      path.join(package.path, 'lib', 'amplifyconfiguration.dart'),
    );
    if (await file.exists() ||
        !await Directory(path.join(package.path, 'lib')).exists()) {
      return;
    }
    await file.create();
    // formatting is important to avoid lint errors
    await file.writeAsString('''
const amplifyconfig = \'\'\'{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}\'\'\';

const amplifyConfig = \'\'\'{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''');
  }

  Future<void> _createEmptyGen2Config(PackageInfo package) async {
    final file = File(path.join(package.path, 'lib', 'amplify_outputs.dart'));

    if (await file.exists() ||
        !await Directory(path.join(package.path, 'lib')).exists()) {
      return;
    }
    await file.create();
    // formatting is important to avoid lint errors
    await file.writeAsString('''
const amplifyConfig = \'\'\'{
  "version": "1"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''');
  }

  @override
  Future<void> run() async {
    final totalStopwatch = Stopwatch()..start();
    await super.run();

    var phaseStopwatch = Stopwatch()..start();
    await linkPackages();
    logger.info('linkPackages completed in ${phaseStopwatch.elapsed}');

    final bootstrapPackages = commandPackages.values
        .where(
          (pkg) => pkg.name != 'aft',
        )
        .where(
          (pkg) {
            final compatibleWithActiveSdk = pkg.compatibleWithActiveSdk;
            if (!compatibleWithActiveSdk) {
              logger.info(
                'Skipping package ${pkg.name} since it sets an incompatible Dart SDK constraint: '
                '${pkg.dartSdkConstraint}',
              );
            }
            return compatibleWithActiveSdk;
          },
        )
        .expand((pkg) => [pkg, pkg.example, pkg.docs])
        .nonNulls
        .toList();

    // Run pub get/upgrade in parallel with bounded concurrency.
    final maxConcurrency = math.min(Platform.numberOfProcessors, 25);
    final pubArguments = [if (upgrade) 'upgrade' else 'get'];
    logger.info(
      'Running pub ${upgrade ? 'upgrade' : 'get'} for '
      '${bootstrapPackages.length} packages '
      '(concurrency: $maxConcurrency)...',
    );
    phaseStopwatch = Stopwatch()..start();
    final pubErrors = <String>[];
    final allFutures = <Future<void>>[];
    final waiters = <Completer<void>>[];
    var running = 0;

    for (final package in bootstrapPackages) {
      if (running >= maxConcurrency) {
        final waiter = Completer<void>();
        waiters.add(waiter);
        await waiter.future;
      }
      running++;
      allFutures.add(
        () async {
          try {
            await pubAction(arguments: pubArguments, package: package);
          } on Exception catch (e) {
            pubErrors.add('${package.name}: $e');
          } finally {
            running--;
            if (waiters.isNotEmpty) {
              waiters.removeAt(0).complete();
            }
          }
        }(),
      );
    }
    await Future.wait(allFutures);
    logger.info(
      'pub ${upgrade ? 'upgrade' : 'get'} completed in '
      '${phaseStopwatch.elapsed}',
    );
    if (pubErrors.isNotEmpty && failFast) {
      throw Exception(
        'pub ${upgrade ? 'upgrade' : 'get'} failed for:\n'
        '${pubErrors.join('\n')}',
      );
    }

    phaseStopwatch = Stopwatch()..start();
    await Future.wait([
      for (final package in bootstrapPackages) _createEmptyConfig(package),
    ]);
    logger.info('createEmptyConfig completed in ${phaseStopwatch.elapsed}');

    if (build) {
      phaseStopwatch = Stopwatch()..start();
      final buildPackages = <PackageInfo>{};
      final packageGraph = repo.getPackageGraph(includeDevDependencies: true);
      for (final package in bootstrapPackages) {
        dfs(packageGraph, root: package, (package) {
          final needsBuild =
              package.needsBuildRunner &&
              (package.pubspecInfo.pubspec.flutter?.containsKey('assets') ??
                  false) &&
              package.flavor == PackageFlavor.dart;
          if (needsBuild) {
            buildPackages.add(package);
          }
        });
      }
      // Sort topologically so dependencies are built before dependents.
      final sortedBuildPackages = buildPackages.toList();
      sortPackagesTopologically(
        sortedBuildPackages,
        (pkg) => pkg.pubspecInfo.pubspec,
      );
      logger.info(
        'Running build_runner for ${sortedBuildPackages.length} packages: '
        '${sortedBuildPackages.map((p) => p.name).join(', ')}',
      );
      for (final package in sortedBuildPackages) {
        await runBuildRunner(package, logger: logger, verbose: verbose);
      }
      logger.info('build_runner completed in ${phaseStopwatch.elapsed}');
    }

    logger.info(
      'Repo successfully bootstrapped in ${totalStopwatch.elapsed}!',
    );
  }
}

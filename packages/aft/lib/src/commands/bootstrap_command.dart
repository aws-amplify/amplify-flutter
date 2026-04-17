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

    final bootstrapPackagesWithDups = commandPackages.values
        .where(
          // Skip bootstrap for `aft` since it has already had `dart pub upgrade`
          // run with the native command, and running it again with the embedded
          // command could cause issues later on, esp. when the native `pub`
          // command is significantly newer/older than the embedded one.
          (pkg) => pkg.name != 'aft',
        )
        .where(
          // Skip bootstrapping packages which set incompatible Dart SDK
          // constraints, e.g. packages which are leveraging preview features.
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
        .nonNulls;
    // Deduplicate by name: the expand above can produce the same package
    // from both a parent and its own entry in commandPackages.
    final seenNames = <String>{};
    final bootstrapPackages = <PackageInfo>[
      for (final pkg in bootstrapPackagesWithDups)
        if (seenNames.add(pkg.name)) pkg,
    ];

    // Identify build_runner packages and sort topologically.
    final buildRunnerPackages = <PackageInfo>[];
    if (build) {
      final buildPackageSet = <PackageInfo>{};
      final packageGraph = repo.getPackageGraph(includeDevDependencies: true);
      for (final package in bootstrapPackages) {
        dfs(packageGraph, root: package, (package) {
          final needsBuild =
              package.needsBuildRunner &&
              (package.pubspecInfo.pubspec.flutter?.containsKey('assets') ??
                  false) &&
              package.flavor == PackageFlavor.dart;
          if (needsBuild) {
            buildPackageSet.add(package);
          }
        });
      }
      buildRunnerPackages.addAll(buildPackageSet);
      sortPackagesTopologically(
        buildRunnerPackages,
        (pkg) => pkg.pubspecInfo.pubspec,
      );
    }

    // Build a set of build_runner package names and their inter-dependencies.
    final buildRunnerNames = buildRunnerPackages.map((p) => p.name).toSet();
    final buildRunnerDeps = <String, List<String>>{
      for (final pkg in buildRunnerPackages)
        pkg.name: [
          ...pkg.pubspecInfo.pubspec.dependencies.keys,
          ...pkg.pubspecInfo.pubspec.devDependencies.keys,
        ].where(buildRunnerNames.contains).toList(),
    };

    // Per-package signals: pub upgrade done, build_runner done.
    final pubDone = <String, Completer<void>>{
      for (final pkg in bootstrapPackages) pkg.name: Completer<void>(),
    };
    final buildDone = <String, Completer<void>>{
      for (final pkg in buildRunnerPackages) pkg.name: Completer<void>(),
    };

    // Run pub get/upgrade in parallel with bounded concurrency.
    // After each package's pub get completes, fire config creation and
    // potentially build_runner.
    final maxConcurrency = math.min(Platform.numberOfProcessors, 25);
    final pubArguments = [if (upgrade) 'upgrade' else 'get'];
    logger.info(
      'Running pub ${upgrade ? 'upgrade' : 'get'} for '
      '${bootstrapPackages.length} packages '
      '(concurrency: $maxConcurrency)...',
    );
    if (buildRunnerPackages.isNotEmpty) {
      logger.info(
        'Will pipeline build_runner for '
        '${buildRunnerPackages.length} packages: '
        '${buildRunnerPackages.map((p) => p.name).join(', ')}',
      );
    }

    phaseStopwatch = Stopwatch()..start();
    final pubErrors = <String>[];
    final allFutures = <Future<void>>[];
    final waiters = <Completer<void>>[];
    var running = 0;

    // Launch build_runner pipeline tasks — they await their own signals.
    for (final package in buildRunnerPackages) {
      allFutures.add(() async {
        // Wait for this package's own pub upgrade to finish.
        await pubDone[package.name]!.future;
        // Wait for build_runner of all build_runner dependencies.
        for (final dep in buildRunnerDeps[package.name]!) {
          await buildDone[dep]!.future;
        }
        try {
          logger.info('Starting build_runner for ${package.name}...');
          await runBuildRunner(
            package,
            logger: logger,
            verbose: verbose,
            throwOnError: true,
          );
          logger.info('build_runner for ${package.name} done.');
        } on Exception catch (e) {
          pubErrors.add('build_runner ${package.name}: $e');
        } finally {
          buildDone[package.name]!.complete();
        }
      }());
    }

    // Launch pub get/upgrade tasks with concurrency limiting.
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
            // Signal that this package's pub upgrade is done.
            pubDone[package.name]!.complete();
            // Fire config creation immediately (non-blocking).
            unawaited(_createEmptyConfig(package));
            running--;
            if (waiters.isNotEmpty) {
              waiters.removeAt(0).complete();
            }
          }
        }(),
      );
    }

    await Future.wait(allFutures);
    logger.info('All tasks completed in ${phaseStopwatch.elapsed}');

    if (pubErrors.isNotEmpty) {
      if (failFast) {
        throw Exception(
          'Bootstrap had errors:\n${pubErrors.join('\n')}',
        );
      }
      for (final error in pubErrors) {
        logger.error(error);
      }
    }

    logger.info(
      'Repo successfully bootstrapped in ${totalStopwatch.elapsed}!',
    );
  }
}

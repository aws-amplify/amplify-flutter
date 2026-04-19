// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';
import 'dart:math' as math;

import 'package:aft/aft.dart';
import 'package:aft/src/options/fail_fast_option.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:path/path.dart' as path;

/// Limits concurrent async work to a fixed number of slots.
///
/// Callers [acquire] a slot before starting work and [release] it when done.
/// If all slots are in use, [acquire] suspends until one becomes available.
class ConcurrencyLimiter {
  ConcurrencyLimiter(this._maxConcurrency);

  final int _maxConcurrency;
  int _running = 0;
  final _waiters = <Completer<void>>[];

  /// Waits until a concurrency slot is available, then claims it.
  Future<void> acquire() async {
    if (_running >= _maxConcurrency) {
      final waiter = Completer<void>();
      _waiters.add(waiter);
      await waiter.future;
    }
    _running++;
  }

  /// Releases a concurrency slot, unblocking the next waiter if any.
  void release() {
    _running--;
    if (_waiters.isNotEmpty) {
      _waiters.removeAt(0).complete();
    }
  }
}

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

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages();

    final bootstrapPackages = _collectBootstrapPackages();
    final buildRunnerPackages = build
        ? _collectBuildRunnerPackages(bootstrapPackages)
        : <PackageInfo>[];
    final buildRunnerDeps = _buildRunnerDependencyMap(buildRunnerPackages);

    final pubDone = <String, Completer<void>>{
      for (final pkg in bootstrapPackages) pkg.name: Completer<void>(),
    };
    final buildDone = <String, Completer<void>>{
      for (final pkg in buildRunnerPackages) pkg.name: Completer<void>(),
    };

    final pubArguments = [if (upgrade) 'upgrade' else 'get'];
    logger.info(
      'Running pub ${upgrade ? 'upgrade' : 'get'} for '
      '${bootstrapPackages.length} packages...',
    );

    final errors = <String>[];
    final allFutures = <Future<void>>[
      ..._launchBuildRunnerPipeline(
        buildRunnerPackages,
        buildRunnerDeps: buildRunnerDeps,
        pubDone: pubDone,
        buildDone: buildDone,
        errors: errors,
      ),
      ...await _launchPubGetTasks(
        bootstrapPackages,
        pubArguments: pubArguments,
        pubDone: pubDone,
        errors: errors,
      ),
    ];
    await Future.wait(allFutures);

    _reportErrors(errors);
    logger.info('Repo successfully bootstrapped!');
  }

  /// Filters [commandPackages] down to those eligible for bootstrapping
  /// and deduplicates by package name.
  List<PackageInfo> _collectBootstrapPackages() {
    final withDups = commandPackages.values
        .where(_isBootstrappable)
        .expand((pkg) => [pkg, pkg.example, pkg.docs])
        .nonNulls;

    final seenNames = <String>{};
    return [
      for (final pkg in withDups)
        if (seenNames.add(pkg.name)) pkg,
    ];
  }

  /// Returns `true` if [pkg] should be included in the bootstrap.
  bool _isBootstrappable(PackageInfo pkg) {
    // `aft` has already had `dart pub upgrade` run natively; re-running with
    // the embedded command can cause version-mismatch issues.
    if (pkg.name == 'aft') return false;

    final compatible = pkg.compatibleWithActiveSdk;
    if (!compatible) {
      logger.info(
        'Skipping package ${pkg.name} since it sets an incompatible '
        'Dart SDK constraint: ${pkg.dartSdkConstraint}',
      );
    }
    return compatible;
  }

  /// Identifies packages that need `build_runner` and returns them in
  /// topological order so dependencies are built first.
  ///
  /// Only packages present in [bootstrapPackages] are considered so that every
  /// returned package has a corresponding entry in the `pubDone` map.
  List<PackageInfo> _collectBuildRunnerPackages(
    List<PackageInfo> bootstrapPackages,
  ) {
    final bootstrapNames = bootstrapPackages.map((p) => p.name).toSet();
    final packageGraph = repo.getPackageGraph(includeDevDependencies: true);
    final buildPackageSet = <PackageInfo>{};

    for (final package in bootstrapPackages) {
      dfs(packageGraph, root: package, (pkg) {
        if (!bootstrapNames.contains(pkg.name)) return;
        final needsBuild =
            pkg.needsBuildRunner &&
            (pkg.pubspecInfo.pubspec.flutter?.containsKey('assets') ?? false) &&
            pkg.flavor == PackageFlavor.dart;
        if (needsBuild) {
          buildPackageSet.add(pkg);
        }
      });
    }

    final result = buildPackageSet.toList();
    sortPackagesTopologically(result, (pkg) => pkg.pubspecInfo.pubspec);
    return result;
  }

  /// Builds a map from each build_runner package to the subset of its
  /// dependencies that also require build_runner.
  Map<String, List<String>> _buildRunnerDependencyMap(
    List<PackageInfo> buildRunnerPackages,
  ) {
    final names = buildRunnerPackages.map((p) => p.name).toSet();
    return {
      for (final pkg in buildRunnerPackages)
        pkg.name: [
          ...pkg.pubspecInfo.pubspec.dependencies.keys,
          ...pkg.pubspecInfo.pubspec.devDependencies.keys,
        ].where(names.contains).toList(),
    };
  }

  /// Creates futures that await pub get + dependency builds before running
  /// `build_runner` for each package.
  List<Future<void>> _launchBuildRunnerPipeline(
    List<PackageInfo> packages, {
    required Map<String, List<String>> buildRunnerDeps,
    required Map<String, Completer<void>> pubDone,
    required Map<String, Completer<void>> buildDone,
    required List<String> errors,
  }) {
    return [
      for (final package in packages)
        _runBuildRunnerWhenReady(
          package,
          buildRunnerDeps: buildRunnerDeps,
          pubDone: pubDone,
          buildDone: buildDone,
          errors: errors,
        ),
    ];
  }

  /// Waits for [package]'s pub get and all its build_runner dependencies to
  /// finish, then runs `build_runner`.
  Future<void> _runBuildRunnerWhenReady(
    PackageInfo package, {
    required Map<String, List<String>> buildRunnerDeps,
    required Map<String, Completer<void>> pubDone,
    required Map<String, Completer<void>> buildDone,
    required List<String> errors,
  }) async {
    await pubDone[package.name]!.future;
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
        skipPubGet: true,
      );
      logger.info('build_runner for ${package.name} done.');
    } on Exception catch (e) {
      errors.add('build_runner ${package.name}: $e');
    } finally {
      buildDone[package.name]!.complete();
    }
  }

  /// Launches pub get/upgrade for all [packages] with bounded concurrency.
  ///
  /// Returns the list of futures to await. Each future signals [pubDone]
  /// on completion so downstream build_runner tasks can proceed.
  Future<List<Future<void>>> _launchPubGetTasks(
    List<PackageInfo> packages, {
    required List<String> pubArguments,
    required Map<String, Completer<void>> pubDone,
    required List<String> errors,
  }) async {
    final maxConcurrency = math.min(Platform.numberOfProcessors, 25);
    final limiter = ConcurrencyLimiter(maxConcurrency);
    final futures = <Future<void>>[];

    for (final package in packages) {
      await limiter.acquire();
      futures.add(
        _runPubGetForPackage(
          package,
          pubArguments: pubArguments,
          pubDone: pubDone,
          errors: errors,
          limiter: limiter,
        ),
      );
    }
    return futures;
  }

  /// Runs pub get/upgrade for a single [package], then releases the
  /// concurrency slot and fires config creation.
  Future<void> _runPubGetForPackage(
    PackageInfo package, {
    required List<String> pubArguments,
    required Map<String, Completer<void>> pubDone,
    required List<String> errors,
    required ConcurrencyLimiter limiter,
  }) async {
    try {
      await pubAction(arguments: pubArguments, package: package);
    } on Exception catch (e) {
      errors.add('${package.name}: $e');
    } finally {
      pubDone[package.name]!.complete();
      unawaited(_createEmptyConfig(package));
      limiter.release();
    }
  }

  /// Logs or throws collected errors from pub get/upgrade and build_runner.
  void _reportErrors(List<String> errors) {
    if (errors.isEmpty) return;
    if (failFast) {
      throw Exception('Bootstrap had errors:\n${errors.join('\n')}');
    }
    for (final error in errors) {
      logger.error(error);
    }
  }

  /// Creates empty Amplify configuration files for example apps so they
  /// compile without a real backend.
  Future<void> _createEmptyConfig(PackageInfo package) async {
    if (!package.isExample) return;
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
    await file.writeAsString('''
const amplifyConfig = \'\'\'{
  "version": "1"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''');
  }
}

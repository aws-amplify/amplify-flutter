// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

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

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages();

    final bootstrapPackages = _collectBootstrapPackages();
    final pubArguments = [if (upgrade) 'upgrade' else 'get'];
    logger.info(
      'Running pub ${upgrade ? 'upgrade' : 'get'} for '
      '${bootstrapPackages.length} packages...',
    );

    final errors = <String>[];

    // Run pub sequentially to avoid concurrent pub cache conflicts.
    for (final package in bootstrapPackages) {
      try {
        await pubAction(arguments: pubArguments, package: package);
      } on Exception catch (e) {
        errors.add('${package.name}: $e');
        if (failFast) break;
      }
    }

    // Create empty config files for example apps and await completion.
    await Future.wait([
      for (final package in bootstrapPackages) _createEmptyConfig(package),
    ]);

    _reportErrors(errors);

    if (build) {
      final buildPackages = _collectBuildRunnerPackages(bootstrapPackages);
      for (final package in buildPackages) {
        await runBuildRunner(package, logger: logger, verbose: verbose);
      }
    }
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
  /// DFS traverses the full dependency graph from each bootstrap root so
  /// that transitive dependencies with generated assets (e.g.
  /// `amplify_secure_storage_dart`) are also built. `runBuildRunner` runs
  /// `pub get` on each package before invoking `build_runner`.
  List<PackageInfo> _collectBuildRunnerPackages(
    List<PackageInfo> bootstrapPackages,
  ) {
    final packageGraph = repo.getPackageGraph(includeDevDependencies: true);
    final buildPackageSet = <PackageInfo>{};

    for (final package in bootstrapPackages) {
      dfs(packageGraph, root: package, (pkg) {
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

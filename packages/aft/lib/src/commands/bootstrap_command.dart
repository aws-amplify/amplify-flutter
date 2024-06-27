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
  String get description => 'Links all packages in the Amplify Flutter repo '
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
    await file.writeAsString(
      '''
const amplifyconfig = \'\'\'{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''',
    );
  }

  Future<void> _createEmptyGen2Config(PackageInfo package) async {
    final file = File(
      path.join(package.path, 'lib', 'amplify_outputs.dart'),
    );

    if (await file.exists() ||
        !await Directory(path.join(package.path, 'lib')).exists()) {
      return;
    }
    await file.create();
// formatting is important to avoid lint errors
    await file.writeAsString(
      '''
const amplifyConfig = \'\'\'{
  "version": "1"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''',
    );
  }

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages();

    final bootstrapPackages = commandPackages.values
        .where(
          // Skip bootstrap for `aft` since it has already had `dart pub upgrade`
          // run with the native command, and running it again with the embedded
          // command could cause issues later on, esp. when the native `pub`
          // command is significantly newer/older than the embedded one.
          (pkg) => pkg.name != 'aft',
        )
        .where(
          // Skip bootstrapping packages which set incompatible Dart SDK constraints,
          // e.g. packages which are leveraging preview features.
          //
          // The problem of packages setting incorrect constraints, for example setting
          // `^3.0.5` when the current repo constraint is `^3.0.0` and we're running
          // `aft` with `3.0.1` is a different issue handled by the constraints commands.
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
    for (final package in bootstrapPackages) {
      await pubAction(
        arguments: [if (upgrade) 'upgrade' else 'get'],
        package: package,
      );
    }
    await Future.wait([
      for (final package in bootstrapPackages) _createEmptyConfig(package),
    ]);
    if (build) {
      final buildPackages = <PackageInfo>{};
      final packageGraph = repo.getPackageGraph(includeDevDependencies: true);
      for (final package in bootstrapPackages) {
        dfs(
          packageGraph,
          root: package,
          (package) {
            // Only run build_runner for packages which need it for development,
            // i.e. those packages which specify worker JS files in their assets.
            final needsBuild = package.needsBuildRunner &&
                (package.pubspecInfo.pubspec.flutter?.containsKey('assets') ??
                    false) &&
                package.flavor == PackageFlavor.dart;
            if (needsBuild) {
              buildPackages.add(package);
            }
          },
        );
      }
      for (final package in buildPackages) {
        await runBuildRunner(package, logger: logger, verbose: verbose);
      }
    }

    logger.info('Repo successfully bootstrapped!');
  }
}

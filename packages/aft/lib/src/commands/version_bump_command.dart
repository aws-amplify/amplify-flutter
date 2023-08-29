// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/changelog/printer.dart';
import 'package:aft/src/options/git_ref_options.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aft/src/repo.dart';

/// Command for bumping package versions across the repo.
class VersionBumpCommand extends AmplifyCommand
    with GitRefOptions, GlobOptions {
  VersionBumpCommand() {
    argParser
      ..addFlag(
        'yes',
        abbr: 'y',
        help: 'Responds "yes" to all prompts',
        defaultsTo: false,
        negatable: false,
      )
      ..addFlag(
        'force-breaking',
        help: 'Forces a major version bump',
        negatable: false,
      )
      ..addFlag(
        'force-non-breaking',
        help: 'Forces a minor version bump',
        negatable: false,
      )
      ..addFlag(
        'force-patch',
        help: 'Forces a patch version bump',
        negatable: false,
      );
  }

  @override
  String get description =>
      'Bump package versions automatically using git magic';

  @override
  String get name => 'version-bump';

  late final bool yes = argResults!['yes'] as bool;

  late final VersionBumpType? forcedBumpType = () {
    final forceBreaking = argResults!['force-breaking'] as bool;
    if (forceBreaking) return VersionBumpType.breaking;
    final forceNonBreaking = argResults!['force-non-breaking'] as bool;
    if (forceNonBreaking) return VersionBumpType.nonBreaking;
    final forcePatch = argResults!['force-patch'] as bool;
    if (forcePatch) return VersionBumpType.patch;
    return null;
  }();

  Future<GitChanges> _changesForPackage(PackageInfo package) async {
    final baseRef = this.baseRef ?? await repo.latestBumpRef(package);
    if (baseRef == null) {
      exitError(
        'No previous version bumps for package (${package.name}). '
        'Supply a base ref manually using --base-ref',
      );
    }
    return repo.changes(baseRef, headRef);
  }

  Future<List<PackageInfo>> _updateVersions() async {
    await repo.bumpAllVersions(
      commandPackages,
      changesForPackage: _changesForPackage,
      forcedBumpType: forcedBumpType,
    );
    return repo.writeChanges(
      packages: repo.publishablePackages(),
    );
  }

  @override
  Future<void> run() async {
    await super.run();

    // Link packages so that we can run build_runner
    await linkPackages();

    final bumpedPackages = await _updateVersions();

    for (final package in bumpedPackages) {
      // Run build_runner for packages which generate their version number.
      final needsBuildRunner = package.pubspecInfo.pubspec.devDependencies
          .containsKey('build_version');
      if (!needsBuildRunner) {
        continue;
      }
      await runBuildRunner(
        package,
        logger: logger,
        verbose: verbose,
      );
    }

    logger.info('Version successfully bumped');
    // Stage changes
    final publishableBumpedPackages =
        commandPackages.values.where((pkg) => pkg.isPublishable).toList();
    final mergedChangelog = Changelog.empty().makeVersionEntry(
      commits: {
        for (final package in publishableBumpedPackages)
          ...?repo.changelogUpdates[package]?.commits,
      },
    );
    final updatedComponents = List.of(
      publishableBumpedPackages.map((pkg) => pkg.name),
    );
    for (final component in repo.components.values) {
      final componentPackages =
          component.packages.map((pkg) => pkg.name).toList();
      if (componentPackages.every(updatedComponents.contains)) {
        updatedComponents
          ..removeWhere(componentPackages.contains)
          ..add(component.name);
      }
    }
    final changelog =
        LineSplitter.split(render(mergedChangelog)).skip(2).join('\n');
    final commitMsg = '''
chore(version): Bump version

$changelog

Updated-Components: ${updatedComponents.join(', ')}
''';
    stdout.writeln(commitMsg);
  }
}

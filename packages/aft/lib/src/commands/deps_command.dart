// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml_edit/yaml_edit.dart';

enum _DepsAction {
  check(
    'Checks whether all dependency constraints in the repo match '
        'the global dependency config',
    'All dependencies matched!',
  ),
  update(
    'Updates dependency constraints in aft.yaml to match the latest in pub',
    'Dependencies successfully updated!',
  ),
  apply(
    'Applies dependency constraints throughout the repo to match those '
        'in the global dependency config',
    'Dependencies successfully applied!',
  );

  const _DepsAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}

/// Command to manage dependencies across all Dart/Flutter packages in the repo.
class DepsCommand extends AmplifyCommand {
  DepsCommand() {
    addSubcommand(_DepsSubcommand(_DepsAction.check));
    addSubcommand(_DepsSubcommand(_DepsAction.apply));
    addSubcommand(_DepsUpdateCommand());
  }

  @override
  String get description =>
      'Manage dependencies across all packages in the Amplify Flutter repo';

  @override
  String get name => 'deps';
}

class _DepsSubcommand extends AmplifyCommand {
  _DepsSubcommand(this.action);

  final _DepsAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  final _mismatchedDependencies = <String>[];

  void _checkDependency(
    PackageInfo package,
    Map<String, Dependency> dependencies,
    DependencyType dependencyType,
    MapEntry<String, VersionConstraint> globalDep,
  ) {
    final dependencyName = globalDep.key;
    final localDep = dependencies[dependencyName];
    if (localDep is! HostedDependency) {
      return;
    }
    bool satisfiesGlobalConstraint;
    final globalConstraint = globalDep.value;
    if (globalConstraint is Version) {
      satisfiesGlobalConstraint = globalDep.value == localDep.version;
    } else {
      final localConstraint = localDep.version;
      // Packages are not allowed to diverge from `aft.yaml`, even to specify
      // more precise constraints.
      satisfiesGlobalConstraint =
          globalConstraint.difference(localConstraint).isEmpty;
    }
    if (!satisfiesGlobalConstraint) {
      switch (action) {
        case _DepsAction.check:
          _mismatchedDependencies.add(
            '${package.path}\n'
            'Mismatched ${dependencyType.description} ($dependencyName):\n'
            'Expected ${globalDep.value}\n'
            'Found ${localDep.version}\n',
          );
          break;
        case _DepsAction.apply:
        case _DepsAction.update:
          package.pubspecInfo.pubspecYamlEditor.update(
            [dependencyType.key, dependencyName],
            '${globalDep.value}',
          );
          break;
      }
    }
  }

  Future<void> _run(_DepsAction action) async {
    final globalDependencyConfig = aftConfig.dependencies;
    for (final package in allPackages.values) {
      for (final globalDep in globalDependencyConfig.entries) {
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.dependencies,
          DependencyType.dependency,
          globalDep,
        );
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.dependencyOverrides,
          DependencyType.dependencyOverride,
          globalDep,
        );
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.devDependencies,
          DependencyType.devDependency,
          globalDep,
        );
      }

      if (package.pubspecInfo.pubspecYamlEditor.edits.isNotEmpty) {
        File.fromUri(package.pubspecInfo.uri).writeAsStringSync(
          package.pubspecInfo.pubspecYamlEditor.toString(),
        );
      }
    }
    if (_mismatchedDependencies.isNotEmpty) {
      for (final mismatched in _mismatchedDependencies) {
        logger.error(mismatched);
      }
      exit(1);
    }
    logger.info(action.successMessage);
  }

  @override
  Future<void> run() async {
    await super.run();
    return _run(action);
  }
}

class _DepsUpdateCommand extends _DepsSubcommand {
  _DepsUpdateCommand() : super(_DepsAction.update);

  @override
  Future<void> run() async {
    await super.run();
    final globalDependencyConfig = aftConfig.dependencies;

    final aftEditor = YamlEditor(aftConfigYaml);
    final failedUpdates = <String>[];
    for (final entry in globalDependencyConfig.entries) {
      final package = entry.key;
      final versionConstraint = entry.value;
      VersionConstraint? newVersionConstraint;

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
            newVersionConstraint = maxBy(
              [versionConstraint, latestVersion],
              (v) => v,
            );
          }
        } else {
          // For ranged versions, bump the upper bound to the latest version,
          // keeping the lower bound valid.
          versionConstraint as VersionRange;
          final lowerBound = versionConstraint.min;
          final includeLowerBound = versionConstraint.includeMin;
          final upperBound = versionConstraint.max;
          final includeUpperBound = upperBound == null || upperBound.includeMax;
          final newUpperBound = maxBy(
            [if (upperBound != null) upperBound, latestVersion],
            (v) => v,
          )!;
          final updateVersion = newUpperBound != lowerBound &&
              (upperBound == null || upperBound.compareTo(newUpperBound) < 0);
          if (updateVersion) {
            newVersionConstraint = VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: newUpperBound,
              includeMax: includeUpperBound,
            );
          }
        }
      } on Exception catch (e) {
        failedUpdates.add('$package: $e');
        continue;
      }

      if (newVersionConstraint != null) {
        aftEditor.update(
          ['dependencies', package],
          newVersionConstraint.toString(),
        );
      }
    }

    if (aftEditor.edits.isNotEmpty) {
      File(aftConfigPath).writeAsStringSync(
        aftEditor.toString(),
        flush: true,
      );
      logger.info(action.successMessage);
    } else {
      logger.info('No dependencies updated');
    }

    for (final failedUpdate in failedUpdates) {
      logger.error('Could not update $failedUpdate');
      exitCode = 1;
    }

    await _run(_DepsAction.apply);
  }
}

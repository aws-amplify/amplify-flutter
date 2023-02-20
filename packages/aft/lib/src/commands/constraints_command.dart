// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml_edit/yaml_edit.dart';

enum _ConstraintsAction {
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

  const _ConstraintsAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}

/// Command to manage dependencies across all Dart/Flutter packages in the repo.
class ConstraintsCommand extends AmplifyCommand {
  ConstraintsCommand() {
    addSubcommand(_ConstraintsSubcommand(_ConstraintsAction.check));
    addSubcommand(_ConstraintsSubcommand(_ConstraintsAction.apply));
    addSubcommand(_ConstraintsUpdateCommand());
  }

  @override
  String get description =>
      'Manage constraints across all packages in the Amplify Flutter repo';

  @override
  String get name => 'constraints';
}

class _ConstraintsSubcommand extends AmplifyCommand {
  _ConstraintsSubcommand(this.action);

  final _ConstraintsAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  final _mismatchedDependencies = <String>[];

  /// Checks the [local] constraint against the [global] and returns whether
  /// an update is required.
  void _checkConstraint(
    PackageInfo package,
    List<String> dependencyPath,
    VersionConstraint global,
    VersionConstraint local,
  ) {
    // Packages are not allowed to diverge from `aft.yaml`, even to specify
    // more precise constraints.
    final satisfiesGlobalConstraint = global == local;
    if (satisfiesGlobalConstraint) {
      return;
    }
    switch (action) {
      case _ConstraintsAction.check:
        final dependencyName = dependencyPath.last;
        _mismatchedDependencies.add(
          '${package.path}\n'
          'Mismatched `$dependencyName`:\n'
          'Expected $global\n'
          'Found $local\n',
        );
        return;
      case _ConstraintsAction.apply:
      case _ConstraintsAction.update:
        package.pubspecInfo.pubspecYamlEditor.update(
          dependencyPath,
          global.toString(),
        );
    }
  }

  /// Checks the package's environment constraints against the global config.
  void _checkEnvironment(
    PackageInfo package,
    Map<String, VersionConstraint?> environment,
    Environment globalEnvironment,
  ) {
    // Check Dart SDK contraint
    final globalSdkConstraint = globalEnvironment.sdk;
    final localSdkConstraint = environment['sdk'] ?? VersionConstraint.any;
    _checkConstraint(
      package,
      ['environment', 'sdk'],
      globalSdkConstraint,
      localSdkConstraint,
    );

    // Check Flutter SDK constraint
    if (package.flavor == PackageFlavor.flutter) {
      final globalFlutterConstraint = globalEnvironment.flutter;
      final localFlutterConstraint =
          environment['flutter'] ?? VersionConstraint.any;
      _checkConstraint(
        package,
        ['environment', 'flutter'],
        globalFlutterConstraint,
        localFlutterConstraint,
      );
    }
  }

  /// Checks the package's dependency constraints against the global config.
  void _checkDependency(
    PackageInfo package,
    Map<String, Dependency> dependencies,
    DependencyType dependencyType,
    MapEntry<String, VersionConstraint> globalDep,
  ) {
    final dependencyName = globalDep.key;
    final globalDepConstraint = globalDep.value;
    final localDep = dependencies[dependencyName];
    if (localDep is! HostedDependency) {
      return;
    }
    final localDepConstraint = localDep.version;
    _checkConstraint(
      package,
      [dependencyType.key, dependencyName],
      globalDepConstraint,
      localDepConstraint,
    );
  }

  Future<void> _run(_ConstraintsAction action) async {
    final globalDependencyConfig = aftConfig.dependencies;
    final globalEnvironmentConfig = aftConfig.environment;
    for (final package in commandPackages.values) {
      _checkEnvironment(
        package,
        package.pubspecInfo.pubspec.environment ?? const {},
        globalEnvironmentConfig,
      );
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

class _ConstraintsUpdateCommand extends _ConstraintsSubcommand {
  _ConstraintsUpdateCommand() : super(_ConstraintsAction.update);

  @override
  Future<void> run() async {
    await super.run();
    final globalDependencyConfig = aftConfig.dependencies;

    final aftEditor = YamlEditor(aftConfigYaml);
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
          // ">=1.1.0 <1.4.3"
          if (latestVersion >= lowerBound.nextBreaking) {
            logger.warn(
              'Breaking change detected for $package: $latestVersion '
              '(current constraint: $versionConstraint)',
            );
            continue;
          }
          updateConstraint(
            VersionRange(
              min: lowerBound,
              includeMin: includeLowerBound,
              max: latestVersion,
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
      File(aftConfigPath).writeAsStringSync(
        aftEditor.toString(),
        flush: true,
      );
    } else {
      logger.info('No dependencies updated');
    }

    for (final failedUpdate in failedUpdates) {
      logger.error('Could not update $failedUpdate');
      exitCode = 1;
    }

    if (hasUpdates && failedUpdates.isEmpty) {
      await _run(_ConstraintsAction.apply);
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml/yaml.dart';

typedef MismatchedDependency = ({
  PackageInfo package,
  String dependencyName,
  String message,
});

sealed class ConstraintsChecker {
  ConstraintsChecker(this.action);

  /// The constraints action being performed.
  final ConstraintsAction action;

  /// Checks the constraints of [package] against the rules for this
  /// checker.
  ///
  /// Returns `true` if all constraint checks pass and `false` otherwise.
  bool checkConstraints(PackageInfo package);

  /// Populated by [checkConstraints] if a constraint check fails.
  final Set<MismatchedDependency> mismatchedDependencies = {};

  /// Processes the [expectedConstraint] for [dependencyPath] in [package].
  ///
  /// If [action] is `apply` or `update`, the constraint is updated when there's
  /// a mismatch. Otherwise, if it is `check`, the mismatched constraint is recorded
  /// as an error in [mismatchedDependencies].
  bool _processConstraint({
    required PackageInfo package,
    required List<String> dependencyPath,
    required Dependency expectedConstraint,
    required String errorMessage,
  }) {
    switch (action) {
      case ConstraintsAction.check:
        mismatchedDependencies.add(
          (
            package: package,
            dependencyName: dependencyPath.last,
            message: errorMessage,
          ),
        );
        return false;
      case ConstraintsAction.apply:
      case ConstraintsAction.update:
        package.pubspecInfo.pubspecYamlEditor.update(
          dependencyPath,
          expectedConstraint.toYaml(),
        );
        return true;
    }
  }
}

final class GlobalConstraintChecker extends ConstraintsChecker {
  GlobalConstraintChecker(
    super.action,
    this.globalConstraints,
    this.globalEnvironment,
  );

  final Map<String, VersionConstraint> globalConstraints;
  final Environment globalEnvironment;

  /// Checks the package's dependency constraints against the global config.
  bool _checkDependency(
    PackageInfo package,
    String dependencyName,
    Dependency dependency,
    DependencyType dependencyType,
  ) {
    final globalConstraint = globalConstraints[dependencyName];
    if (globalConstraint == null) {
      return true;
    }
    // Packages are not allowed to diverge from `aft.yaml`, even to specify
    // more precise constraints.
    final (currentConstraint, satisfiesGlobalConstraint) = switch (dependency) {
      HostedDependency(:final version) => (
          version,
          version == globalConstraint,
        ),
      _ => (null, false),
    };
    if (satisfiesGlobalConstraint) {
      return true;
    }
    return _processConstraint(
      package: package,
      dependencyPath: [dependencyType.key, dependencyName],
      expectedConstraint: HostedDependency(version: globalConstraint),
      errorMessage: 'Expected $globalConstraint\n'
          'Found $currentConstraint',
    );
  }

  /// Checks the package's environment constraints against the global config.
  bool _checkEnvironment(PackageInfo package) {
    final environment = package.pubspecInfo.pubspec.environment ?? const {};

    // Check Dart SDK contraint
    final globalSdkConstraint = globalEnvironment.sdk;
    final localSdkConstraint = environment['sdk'];
    final satisfiesSdkConstraint = switch (localSdkConstraint) {
      // In the special case where we've set a constraint like `^3.2.0-0`
      // (i.e. a pre-release constraint), the package is allowed to differ
      // from all other packages iff it's not a publishable package.
      VersionRange(:final min?) when min.isPreRelease => !package.isPublishable,

      // Otherwise, in all other cases, the package's listed SDK constraint
      // must exactly match all other packages.
      _ => globalSdkConstraint == localSdkConstraint,
    };
    if (!satisfiesSdkConstraint) {
      _processConstraint(
        package: package,
        dependencyPath: ['environment', 'sdk'],
        expectedConstraint: HostedDependency(version: globalSdkConstraint),
        errorMessage: 'Expected $globalSdkConstraint\n'
            'Found $localSdkConstraint',
      );
    }

    // Check Flutter SDK constraint
    var satisfiesFlutterConstraint = true;
    if (package.flavor == PackageFlavor.flutter) {
      final globalFlutterConstraint = globalEnvironment.flutter;
      final localFlutterConstraint = environment['flutter'];
      satisfiesFlutterConstraint =
          globalFlutterConstraint == localFlutterConstraint;
      if (!satisfiesFlutterConstraint) {
        _processConstraint(
          package: package,
          dependencyPath: ['environment', 'flutter'],
          expectedConstraint: HostedDependency(
            version: globalFlutterConstraint,
          ),
          errorMessage: 'Expected $globalFlutterConstraint\n'
              'Found $localFlutterConstraint',
        );
      }
    }

    return switch (action) {
      ConstraintsAction.check =>
        satisfiesSdkConstraint && satisfiesFlutterConstraint,
      _ => true,
    };
  }

  /// Runs [action] for each dependency in [package].
  bool _forEachDependency(
    PackageInfo package,
    bool Function(
      PackageInfo package,
      String dependencyName,
      Dependency dependency,
      DependencyType dependencyType,
    ) action,
  ) {
    var result = true;
    for (final (dependencies, dependencyType) in [
      (
        package.pubspecInfo.pubspec.dependencies,
        DependencyType.dependency,
      ),
      (
        package.pubspecInfo.pubspec.devDependencies,
        DependencyType.devDependency,
      ),
      (
        package.pubspecInfo.pubspec.dependencyOverrides,
        DependencyType.dependencyOverride,
      ),
    ]) {
      for (final MapEntry(key: dependencyName, value: dependency)
          in dependencies.entries) {
        result = result &&
            action(
              package,
              dependencyName,
              dependency,
              dependencyType,
            );
      }
    }
    return result;
  }

  @override
  bool checkConstraints(PackageInfo package) {
    final satisfiesEnvironmentConstraints = _checkEnvironment(package);
    final satisfiesDependencyConstraints =
        _forEachDependency(package, _checkDependency);
    return satisfiesEnvironmentConstraints && satisfiesDependencyConstraints;
  }
}

final class PublishConstraintsChecker extends ConstraintsChecker {
  PublishConstraintsChecker(super.action, this.repoGraph);

  final Map<PackageInfo, List<PackageInfo>> repoGraph;

  /// Returns the intersection of all [constraints].
  VersionConstraint _intersection(Iterable<VersionConstraint> constraints) {
    var constraint = VersionConstraint.any;
    for (final other in constraints) {
      constraint = constraint.intersect(other);
    }
    return constraint;
  }

  /// Checks the [constraint] on [dependency] in [package] given its
  /// [dependencyType].
  void _checkConstraint(
    PackageInfo package,
    PackageInfo dependency,
    DependencyType dependencyType,
    Dependency constraint,
    _DependencyConstraintMap allConstraints,
  ) {
    switch ((
      packageIsPublished: package.isPublishable,
      dependencyIsPublished: dependency.isPublishable,
      type: dependencyType,
    )) {
      /// Publishable packages listed in the `dependencies` block must have a hosted constraint.
      case (
              dependencyIsPublished: true,
              packageIsPublished: _,
              type: DependencyType.dependency,
            ) ||

            /// Publishable packages must list other publishable packages with a hosted constraint.
            (
              dependencyIsPublished: true,
              packageIsPublished: true,
              type: _,
            ):
        switch (constraint) {
          case HostedDependency(:final version):
            allConstraints.recordConstraint(
              dependency: dependency,
              package: package,
              constraint: version,
            );
          default:
            _processConstraint(
              package: package,
              dependencyPath: [dependencyType.key, dependency.name],
              expectedConstraint: HostedDependency(
                version: package.isPublishable
                    ? dependency.currentConstraint
                    : VersionConstraint.any,
              ),
              errorMessage:
                  'Invalid constraint type: ${constraint.runtimeType}. '
                  'A hosted dependency is required when listing any publishable '
                  'package in the `dependencies` block.',
            );
        }

      /// Published packages must list unpublished packages with a path constraint.
      case (
          packageIsPublished: true,
          dependencyIsPublished: false,
          type:
              DependencyType.devDependency || DependencyType.dependencyOverride,
        ):
        switch (constraint) {
          case PathDependency _:
            return;
          default:
            _processConstraint(
              package: package,
              dependencyPath: [dependencyType.key, dependency.name],
              expectedConstraint: PathDependency(
                p.relative(dependency.path, from: package.path),
              ),
              errorMessage: 'Invalid constraint on unpublished package. '
                  'A path dependency is required when listing any unpublished '
                  'package in the `dev_dependencies` block of a published package.',
            );
        }

      /// A published package cannot take a dependency on an unpublished package
      /// anywhere but the `dev_dependencies` block.
      case (
          packageIsPublished: true,
          dependencyIsPublished: false,
          type: DependencyType.dependency,
        ):
        throw AssertionError(
          'Non-publishable package (${dependency.name}) found in '
          'the `dependencies` block of ${package.name}.',
        );

      /// Unpublished packages can depend on other unpublished packages in
      /// any way they like without it affecting the pub validator.
      case (
          packageIsPublished: false,
          dependencyIsPublished: false,
          type: _,
        ):
        return;

      /// Unpublished packages' `dev_dependencies` and `dependency_overrides`
      /// blocks are not checked by the pub validator.
      case (
          dependencyIsPublished: true,
          packageIsPublished: false,
          type:
              DependencyType.devDependency || DependencyType.dependencyOverride,
        ):
        return;
    }
  }

  @override
  bool checkConstraints(PackageInfo package) {
    if (!package.isPublishable) {
      return true;
    }
    final allConstraints = _DependencyConstraintMap();
    final rootPackage = package;
    dfs(
      repoGraph,
      root: rootPackage,
      (package) {
        final dependencies = {
          ...package.pubspecInfo.pubspec.dependencies.map(
            (key, value) => MapEntry(
              key,
              (DependencyType.dependency, value),
            ),
          ),
          ...package.pubspecInfo.pubspec.devDependencies.map(
            (key, value) => MapEntry(
              key,
              (DependencyType.devDependency, value),
            ),
          ),
        };
        for (final MapEntry(
              key: dependencyName,
              value: (dependencyType, constraint)
            ) in dependencies.entries) {
          final dependency = repoGraph.keys.singleWhereOrNull(
            (pkg) => pkg.name == dependencyName,
          );
          if (dependency == null) {
            continue;
          }
          _checkConstraint(
            package,
            dependency,
            dependencyType,
            constraint,
            allConstraints,
          );
        }
      },
    );
    for (final MapEntry(key: repoDependency, value: constraints)
        in allConstraints.entries) {
      final intersection = _intersection(constraints.values);
      if (intersection.isEmpty) {
        for (final MapEntry(key: package, value: constraint)
            in constraints.entries) {
          // A package will cause an empty intersection if it lists anything
          // other than `any` or a valid constraint range for the current
          // version.
          if (constraint.allows(repoDependency.version)) {
            continue;
          }
          _processConstraint(
            package: package,
            dependencyPath: [
              package.dependencyType(repoDependency)!.key,
              repoDependency.name,
            ],
            expectedConstraint: HostedDependency(
              version: package.isPublishable
                  ? repoDependency.currentConstraint
                  : VersionConstraint.any,
            ),
            errorMessage:
                'Constraint for dependency causes an empty intersection '
                'for ${rootPackage.name}: $constraint',
          );
        }
      }
    }
    return mismatchedDependencies.isEmpty;
  }
}

final class _DependencyConstraintMap
    extends DelegatingMap<PackageInfo, _ConstraintMap>
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  _DependencyConstraintMap() : super({});

  /// Records the [constraint] for [dependency] found in [package].
  void recordConstraint({
    required PackageInfo package,
    required PackageInfo dependency,
    required VersionConstraint constraint,
  }) {
    (this[dependency] ??= _ConstraintMap())[package] = constraint;
  }

  @override
  String get runtimeTypeName => 'DependencyConstraintMap';

  @override
  Map<String, Object?> toJson() => map((repoDependency, constraints) {
        return MapEntry(repoDependency.name, constraints.toJson());
      });
}

final class _ConstraintMap extends DelegatingMap<PackageInfo, VersionConstraint>
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  _ConstraintMap() : super({});

  @override
  String get runtimeTypeName => 'ConstraintMap';

  @override
  Map<String, Object?> toJson() => map((package, constraint) {
        return MapEntry(package.name, constraint.toString());
      });
}

extension on PackageInfo {
  /// The current constraint for `this` to use in publishable packages'
  /// `dependencies` block.
  VersionRange get currentConstraint => VersionRange(
        min: Version(version.major, version.minor, 0),
        includeMin: true,
        max: version.nextMinor,
      );
}

extension DependencyToYaml on Dependency {
  YamlNode toYaml() => switch (this) {
        HostedDependency(:final version) => YamlScalar.wrap(version.toString()),
        PathDependency(:final path) => YamlMap.wrap({'path': path}),
        SdkDependency(:final sdk) => YamlMap.wrap({'sdk': sdk}),
        GitDependency(:final url, :final ref, :final path) => YamlMap.wrap({
            'git': {
              'url': url.toString(),
              if (ref != null) 'ref': ref,
              if (path != null) 'path': path,
            },
          }),
        _ => throw StateError('Invalid dependency: $this'),
      };
}

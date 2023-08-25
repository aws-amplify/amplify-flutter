// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

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
  List<MismatchedDependency> get mismatchedDependencies;

  /// Processes the [expectedConstraint] for [dependencyPath] in [package].
  ///
  /// If [action] is `apply` or `update`, the constraint is updated when there's
  /// a mismatch. Otherwise, if it is `check`, the mismatched constraint is recorded
  /// as an error in [mismatchedDependencies].
  bool _processConstraint({
    required PackageInfo package,
    required List<String> dependencyPath,
    required VersionConstraint expectedConstraint,
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
      case ConstraintsAction.apply:
      case ConstraintsAction.update:
        package.pubspecInfo.pubspecYamlEditor.update(
          dependencyPath,
          expectedConstraint.toString(),
        );
    }
    return false;
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

  @override
  final List<MismatchedDependency> mismatchedDependencies = [];

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
      expectedConstraint: globalConstraint,
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
    final satisfiesSdkConstraint = globalSdkConstraint == localSdkConstraint;
    if (!satisfiesSdkConstraint) {
      _processConstraint(
        package: package,
        dependencyPath: ['environment', 'sdk'],
        expectedConstraint: globalSdkConstraint,
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
          expectedConstraint: globalFlutterConstraint,
          errorMessage: 'Expected $globalFlutterConstraint\n'
              'Found $localFlutterConstraint',
        );
      }
    }

    return satisfiesSdkConstraint && satisfiesFlutterConstraint;
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

  @override
  final List<MismatchedDependency> mismatchedDependencies = [];

  /// Returns the intersection of all [constraints].
  VersionConstraint _intersection(Iterable<VersionConstraint> constraints) {
    var constraint = VersionConstraint.any;
    for (final other in constraints) {
      constraint = constraint.intersect(other);
    }
    return constraint;
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
              value: (dependencyType, dependency)
            ) in dependencies.entries) {
          final repoDependency = repoGraph.keys.singleWhereOrNull(
            (pkg) => pkg.name == dependencyName,
          );
          if (repoDependency == null) {
            continue;
          }
          switch (dependency) {
            case HostedDependency(version: final constraint):
              allConstraints.recordConstraint(
                repoDependency: repoDependency,
                inPackage: package,
                constraint: constraint,
              );

            // Do not verify the constraints in the `dev_dependencies`
            // block since this only affects the `pub` algorithm transitively.
            case _ when dependencyType == DependencyType.devDependency:
              return;

            // Do not verify the constraint of non-publishable packages listed
            // in the `dependencies` block of other non-publishable packages.
            // We only care about publishable dependencies listed in the `dependencies`
            // block of non-publishable packages.
            case _ when !repoDependency.isPublishable:
              if (package.isPublishable) {
                throw AssertionError(
                  'Non-publishable package ($dependencyName) found in '
                  'the `dependencies` block of ${package.name}.',
                );
              }
              return;

            // Otherwise, we have a constraint which might cause an error. This
            // is most often caused by path dependency on a publishable package
            // in a test package's `dependencies` block.
            case _:
              _processConstraint(
                package: package,
                dependencyPath: [dependencyType.key, dependencyName],
                expectedConstraint: package.isPublishable
                    ? repoDependency.currentConstraint
                    : VersionConstraint.any,
                errorMessage:
                    'Invalid constraint type: ${dependency.runtimeType}. '
                    'A hosted dependency is required when listing any publishable '
                    'package in the `dependencies` block.',
              );
          }
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
              repoDependency.name
            ],
            expectedConstraint: package.isPublishable
                ? repoDependency.currentConstraint
                : VersionConstraint.any,
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

  /// Records the [constraint] for [repoDependency] found in [inPackage].
  void recordConstraint({
    required PackageInfo repoDependency,
    required PackageInfo inPackage,
    required VersionConstraint constraint,
  }) {
    (this[repoDependency] ??= _ConstraintMap())[inPackage] = constraint;
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

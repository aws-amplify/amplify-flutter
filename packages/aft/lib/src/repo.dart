// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/changelog/commit_message.dart';
import 'package:aft/src/git.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

/// Encapsulates all repository functionality including package and Git
/// management.
class Repo {
  Repo(
    this.aftConfig,
    this.git, {
    AWSLogger? logger,
  }) : logger = logger ?? AWSLogger().createChild('Repo');

  static Future<Repo> open(
    AftConfig aftConfig, {
    AWSLogger? logger,
  }) async {
    final gitDir = await GitDir.fromExisting(
      aftConfig.rootDirectory.toFilePath(),
    );
    return Repo(aftConfig, gitDir, logger: logger);
  }

  final AftConfig aftConfig;

  Map<String, PackageInfo> get allPackages => aftConfig.allPackages.toMap();

  Map<String, AftComponent> get components => aftConfig.components.toMap();

  /// The root directory of the repository.
  late final Directory rootDir = Directory.fromUri(aftConfig.rootDirectory);

  /// The current working directory.
  late final Directory workingDirectory =
      Directory.fromUri(aftConfig.workingDirectory);

  final AWSLogger logger;

  final GitDir git;

  PackageInfo operator [](String packageName) => allPackages[packageName]!;

  /// All packages which can be published to `pub.dev`.
  List<PackageInfo> publishablePackages([
    Map<String, PackageInfo>? allPackages,
  ]) =>
      UnmodifiableListView(
        (allPackages ?? this.allPackages)
            .values
            .where((pkg) => pkg.isPublishable)
            .toList(),
      );

  /// Returns the latest version bump commit for [package], or `null` if no such
  /// commit exists.
  ///
  /// This is the marker of the last time [package] was released and is used as
  /// the base git reference for calculating changes relevant to this version
  /// bump.
  Future<String?> latestBumpRef(PackageInfo package) async {
    final packageName = package.name;
    final component = components[packageName]?.name ??
        components.values
            .firstWhereOrNull(
              (component) => component.packages
                  .map((pkg) => pkg.name)
                  .contains(packageName),
            )
            ?.name ??
        packageName;
    var (sha, commit) = await git.head;
    while (commit.parents.isNotEmpty) {
      final commitMessage = CommitMessage.fromCommitRef((sha, commit));
      if (commitMessage is VersionCommitMessage &&
          // Check both the component and the package since the definition of
          // components can change over time.
          (commitMessage.updatedComponents.contains(component) ||
              commitMessage.updatedComponents.contains(packageName) ||
              commitMessage.updatedComponents.isEmpty)) {
        return commitMessage.sha;
      }
      (sha, commit) = await git.commitRef(commit.parents.first);
    }
    return null;
  }

  /// Returns the directed graph of packages to the packages it depends on.
  ///
  /// Will include dev dependencies if [includeDevDependencies] is `true`.
  Map<PackageInfo, List<PackageInfo>> getPackageGraph({
    bool includeDevDependencies = false,
  }) =>
      UnmodifiableMapView({
        for (final package in allPackages.values)
          package: [
            ...package.pubspecInfo.pubspec.dependencies.keys,
            if (includeDevDependencies)
              ...package.pubspecInfo.pubspec.devDependencies.keys,
          ]
              .map((packageName) => allPackages[packageName])
              .whereType<PackageInfo>()
              .toList(),
      });

  /// The directed graph of packages to the packages it depends on.
  late final Map<PackageInfo, List<PackageInfo>> packageGraph =
      getPackageGraph();

  /// The reversed (transposed) [packageGraph].
  ///
  /// Provides a mapping from each packages to the packages which directly
  /// depend on it.
  late final Map<PackageInfo, List<PackageInfo>> reversedPackageGraph =
      getReversedPackageGraph();

  /// Returns the directed graph of packages to the packages which depend on it.
  ///
  /// Will include dev dependencies if [includeDevDependencies] is `true`.
  Map<PackageInfo, List<PackageInfo>> getReversedPackageGraph({
    bool includeDevDependencies = false,
  }) {
    final packageGraph = getPackageGraph(
      includeDevDependencies: includeDevDependencies,
    );
    final reversedPackageGraph = <PackageInfo, List<PackageInfo>>{
      for (final package in allPackages.values) package: [],
    };
    for (final entry in packageGraph.entries) {
      for (final dep in entry.value) {
        reversedPackageGraph[dep]!.add(entry.key);
      }
    }
    return UnmodifiableMapView(reversedPackageGraph);
  }

  final _changesCache = <_DiffMarker, GitChanges>{};

  /// Collect all the packages which have changed between [baseRef]..[headRef]
  /// and the commits which changed them.
  Future<GitChanges> changes(String baseRef, String headRef) async {
    final baseTree = (await git.commitFromRevision(baseRef)).treeSha;
    final headTree = (await git.commitFromRevision(headRef)).treeSha;
    final diffMarker = (baseTree, headTree);
    if (_changesCache.containsKey(diffMarker)) {
      return _changesCache[diffMarker]!;
    }
    final changedPaths = await git.diffTrees(baseTree, headTree);
    final changedPackages = <PackageInfo>{};
    for (final changedPath in changedPaths) {
      final changedPackage = allPackages.values.firstWhereOrNull(
        (pkg) {
          final relativePkgPath = p.relative(pkg.path, from: rootDir.path);
          return changedPath.contains('$relativePkgPath/');
        },
      );
      if (changedPackage != null &&
          // Do not track example packages for git ops
          changedPackage.isDevelopmentPackage) {
        changedPackages.add(changedPackage);
      }
    }

    // For each package, gather all the commits between baseRef..headRef which
    // affected the package.
    final commitsByPackage = SetMultimapBuilder<PackageInfo, CommitMessage>();
    final packagesByCommit = SetMultimapBuilder<CommitMessage, PackageInfo>();
    for (final package in changedPackages) {
      await for (final (sha, commit) in git.revList(baseRef, headRef)) {
        final parent = await git.commitFromRevision(commit.parents.first);
        final commitPaths = await git.diffTrees(
          parent.treeSha,
          commit.treeSha,
        );
        final relativePath = p.relative(package.path, from: rootDir.path);
        final changedPath = commitPaths.firstWhereOrNull(
          (path) => path.contains('$relativePath/'),
        );
        if (changedPath != null) {
          final commitMessage = CommitMessage.fromCommitRef((sha, commit));
          logger.verbose(
            'Package ${package.name} changed by $changedPath '
            '(${commitMessage.summary})',
          );
          commitsByPackage.add(package, commitMessage);
          packagesByCommit.add(commitMessage, package);
        }
      }
    }

    return _changesCache[diffMarker] = GitChanges(
      commitsByPackage: commitsByPackage.build(),
      packagesByCommit: packagesByCommit.build(),
    );
  }

  late final versionChanges = VersionChanges(this);

  /// Changelog updates. by package.
  final Map<PackageInfo, ChangelogUpdate> changelogUpdates = {};

  /// Bumps the version for all packages in the repo.
  Future<void> bumpAllVersions(
    Map<String, PackageInfo> packages, {
    required FutureOr<GitChanges> Function(PackageInfo) changesForPackage,
    VersionBumpType? forcedBumpType,
  }) async {
    final sortedPackages = List.of(publishablePackages(packages));
    sortPackagesTopologically(
      sortedPackages,
      (PackageInfo pkg) => pkg.pubspecInfo.pubspec,
    );
    bool canBump(PackageInfo package) => packages.containsKey(package.name);
    for (final package in sortedPackages) {
      final changes = await changesForPackage(package);
      final commits = (changes.commitsByPackage[package]?.toList() ?? const [])
        ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
      for (final commit in commits) {
        if (commit.type == CommitType.version) {
          continue;
        }
        final bumpType = forcedBumpType ?? commit.bumpType;
        if (bumpType != null) {
          bumpVersion(
            package,
            commit: commit,
            type: bumpType,
            canBump: canBump,
            includeInChangelog: commit.includeInChangelog,
          );
        }
        // Propagate the version change to all packages affected by the same
        // commit as if they were a component.
        //
        // Even if _this_ commit didn't trigger a version bump, it may be a
        // merge commit, in which case, it's important to propagate the changes
        // of previous commits.
        for (final commitPackage in changes.packagesByCommit[commit]!) {
          updateConstraint(package, commitPackage);
        }
      }
    }
  }

  /// Writes all changes made by, for example, [bumpAllVersions], to disk.
  ///
  /// If [packages] is passed, only changes for those packages are written.
  /// Otherwise, all repo packages are affected.
  ///
  /// Returns the list of packages which both had changes and were written.
  Future<List<PackageInfo>> writeChanges({
    List<PackageInfo>? packages,
  }) async {
    final affectedPackages = <PackageInfo>[];
    for (final package in packages ?? allPackages.values.toList()) {
      final edits = package.pubspecInfo.pubspecYamlEditor.edits;
      // Don't write changelog updates for packages with no corresponding
      // pubspec update.
      if (edits.isEmpty) {
        continue;
      }
      affectedPackages.add(package);
      await File(p.join(package.path, 'pubspec.yaml'))
          .writeAsString(package.pubspecInfo.pubspecYamlEditor.toString());
      final changelogUpdate = changelogUpdates[package];
      if (changelogUpdate != null && changelogUpdate.hasUpdate) {
        await File(p.join(package.path, 'CHANGELOG.md'))
            .writeAsString(changelogUpdate.toString());
      }
    }
    return affectedPackages;
  }

  /// Bumps the version and changelog in [package] and its component packages
  /// using [commit] and returns the new version.
  ///
  /// If [type] is [VersionBumpType.nonBreaking] or [VersionBumpType.breaking],
  /// the version change is propagated to all packages which depend on
  /// [package] at the type which is next least severe.
  ///
  /// If [propagateToComponent] is `true`, all component packages are bumped to
  /// the same version.
  Version bumpVersion(
    PackageInfo package, {
    required CommitMessage commit,
    required VersionBumpType type,
    required bool Function(PackageInfo) canBump,
    required bool includeInChangelog,
    bool? propagateToComponent,
  }) {
    logger.verbose('bumpVersion ${package.name} $commit');
    final componentName = aftConfig.componentForPackage(package.name);
    final component = components[componentName];
    final currentVersion = package.version;
    final proposedPackageVersion =
        versionChanges.proposedVersion(package.name) ?? currentVersion;
    final proposedComponentVersion =
        versionChanges.proposedVersion(componentName);
    final newProposedVersion = currentVersion.nextAmplifyVersion(type);
    final newVersion = maxBy(
      [
        proposedPackageVersion,
        if (proposedComponentVersion != null) proposedComponentVersion,
        newProposedVersion,
      ],
      (version) => version,
    )!;
    propagateToComponent ??= component != null &&
        component.propagate.propagateToComponent(
          currentVersion,
          newVersion,
        );
    versionChanges.updateProposedVersion(
      package,
      newVersion,
      propagateToComponent: propagateToComponent,
    );

    final currentChangelogUpdate = changelogUpdates[package];
    changelogUpdates[package] = package.changelog.update(
      commits: {
        ...?currentChangelogUpdate?.commits,
        if (includeInChangelog) commit,
      },
      version: newVersion,
    );
    logger
      ..verbose('  component: $componentName')
      ..verbose('  currentVersion: $currentVersion')
      ..verbose('  proposedPackageVersion: $proposedPackageVersion')
      ..verbose('  proposedComponentVersion: $proposedComponentVersion')
      ..verbose('  newProposedVersion: $newProposedVersion')
      ..verbose('  newVersion: $newVersion');

    if (newVersion > proposedPackageVersion) {
      logger.debug(
        'Bumping ${package.name} from $currentVersion to $newVersion: '
        '${commit.summary}',
      );
      package.pubspecInfo.pubspecYamlEditor.update(
        ['version'],
        newVersion.toString(),
      );
      // Packages which depend on the package being bumped.
      final packageDependents = allPackages.values.where(
        (pkg) =>
            pkg.pubspecInfo.pubspec.dependencies.keys.contains(package.name) ||
            pkg.pubspecInfo.pubspec.devDependencies.keys.contains(package.name),
      );
      if (commit.isBreakingChange) {
        // Back-propagate to all dependent packages for breaking changes.
        //
        // Since we set semantic version constraints, only a breaking change
        // in a direct dependency necessitates a version bump.
        logger.verbose(
          'Breaking change. Performing dfs on dependent packages...',
        );
        for (final dependent in packageDependents) {
          logger.verbose('found dependent package ${dependent.name}');
          if (dependent.isPublishable && canBump(dependent)) {
            bumpVersion(
              dependent,
              commit: commit,
              type: VersionBumpType.patch,
              canBump: canBump,
              includeInChangelog: false,
            );
          }
          updateConstraint(package, dependent);
        }
      } else if (type == VersionBumpType.nonBreaking) {
        // For non-breaking changes, we still need to update all constraints
        // since we "pin" to minor versions.
        for (final dependent in packageDependents) {
          updateConstraint(package, dependent);
        }
      }

      // Propagate to all component packages.
      final componentPackages = component?.packageGraph;
      if (propagateToComponent && componentPackages != null) {
        dfs<PackageInfo>(
          componentPackages.map((name, dependents) {
            return MapEntry(allPackages[name]!, dependents);
          }),
          (componentPackage) {
            if (componentPackage == package || !canBump(componentPackage)) {
              return;
            }
            logger.verbose(
              'Bumping component package ${componentPackage.name}',
            );
            bumpVersion(
              componentPackage,
              commit: commit,
              type: type,
              canBump: canBump,
              includeInChangelog: false,
              propagateToComponent: false,
            );
          },
        );
      }
    }

    // Update summary package's changelog if it exists.
    final summaryPackage = component?.summary;
    if (summaryPackage != null && includeInChangelog) {
      logger.debug(
        'Updating summary package `${summaryPackage.name}` '
        'with commit: $commit',
      );
      final packageVersion =
          versionChanges.proposedVersion(summaryPackage.name) ??
              versionChanges.proposedVersion(componentName);
      final currentChangelogUpdate = changelogUpdates[summaryPackage];
      changelogUpdates[summaryPackage] = summaryPackage.changelog.update(
        commits: {
          ...?currentChangelogUpdate?.commits,
          commit,
        },
        version: packageVersion,
      );
    }

    return newVersion;
  }

  /// Updates the constraint for [package] in [dependent].
  void updateConstraint(PackageInfo package, PackageInfo dependent) {
    final newVersion = versionChanges.proposedVersion(package.name);
    if (newVersion == null) {
      return;
    }
    final hasDependency =
        dependent.pubspecInfo.pubspec.dependencies.containsKey(package.name);
    final hasDevDependency =
        dependent.pubspecInfo.pubspec.devDependencies.containsKey(package.name);
    if (hasDependency || hasDevDependency) {
      final newConstraint = newVersion.amplifyConstraint(
        minVersion: newVersion,
      );
      logger.verbose(
        'Bumping dependency on ${package.name} in ${dependent.name} '
        'to $newConstraint',
      );
      dependent.pubspecInfo.pubspecYamlEditor.update(
        [
          if (hasDependency) 'dependencies' else 'dev_dependencies',
          package.name,
        ],
        newConstraint,
      );
    }
  }
}

class GitChanges {
  const GitChanges({
    required this.commitsByPackage,
    required this.packagesByCommit,
  });

  final BuiltSetMultimap<PackageInfo, CommitMessage> commitsByPackage;
  final BuiltSetMultimap<CommitMessage, PackageInfo> packagesByCommit;
}

typedef _DiffMarker = (String baseTree, String headTree);

class VersionChanges {
  VersionChanges(this._repo);

  final Repo _repo;

  /// Version updates, by component.
  final Map<String, Version> _versionUpdates = {};

  /// The latest proposed version for [packageOrComponent].
  Version? proposedVersion(String packageOrComponent) {
    final isComponent = _repo.components.containsKey(packageOrComponent);
    final componentVersion = _versionUpdates['component_$packageOrComponent'];
    if (isComponent) {
      return componentVersion;
    }
    return _versionUpdates[packageOrComponent];
  }

  /// Updates the proposed version for [package].
  void updateProposedVersion(
    PackageInfo package,
    Version version, {
    required bool propagateToComponent,
  }) {
    final currentVersion = proposedVersion(package.name);
    if (currentVersion != null && version <= currentVersion) {
      return;
    }
    if (propagateToComponent) {
      final component = _repo.aftConfig.componentForPackage(package.name);
      _versionUpdates['component_$component'] = version;
    }
    _versionUpdates[package.name] = version;
  }
}

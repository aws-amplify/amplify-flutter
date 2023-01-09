// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/changelog/commit_message.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:libgit2dart/libgit2dart.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

/// Encapsulates all repository functionality including package and Git
/// management.
class Repo {
  Repo(
    this.rootDir, {
    required this.allPackages,
    required this.aftConfig,
    AWSLogger? logger,
  }) : logger = logger ?? AWSLogger().createChild('Repo');

  /// The root directory of the repository.
  final Directory rootDir;

  final AWSLogger logger;

  final Map<String, PackageInfo> allPackages;

  final AftConfig aftConfig;

  /// All packages which can be published to `pub.dev`.
  late final List<PackageInfo> publishablePackages = UnmodifiableListView(
    allPackages.values.where((pkg) => pkg.isPublishable).toList(),
  );

  /// The components of the repository.
  late final Map<String, AftRepoComponent> components = () {
    final components = Map.fromEntries(
      aftConfig.components.map((component) {
        final summaryPackage =
            component.summary == null ? null : allPackages[component.summary]!;
        final packages =
            component.packages.map((name) => allPackages[name]!).toList();
        final packageGraph = UnmodifiableMapView({
          for (final package in packages)
            package: package.pubspecInfo.pubspec.dependencies.keys
                .map(
                  (packageName) => packages.firstWhereOrNull(
                    (pkg) => pkg.name == packageName,
                  ),
                )
                .whereType<PackageInfo>()
                .toList(),
        });
        return MapEntry(
          component.name,
          AftRepoComponent(
            name: component.name,
            summary: summaryPackage,
            packages: packages,
            packageGraph: packageGraph,
            propagate: component.propagate,
          ),
        );
      }),
    );
    logger.verbose('Components: $components');
    return components;
  }();

  /// The libgit repository.
  late final Repository repo = Repository.open(rootDir.path);

  /// Returns the latest version bump commit for [packageOrComponent], or `null`
  /// if no such commit exists.
  ///
  /// This is the marker of the last time [packageOrComponent] was released and
  /// is used as the base git reference for calculating changes relevant to this
  /// version bump.
  String? latestBumpRef(String packageOrComponent) {
    final component = components[packageOrComponent]?.name ??
        components.values
            .firstWhereOrNull(
              (component) => component.packages
                  .map((pkg) => pkg.name)
                  .contains(packageOrComponent),
            )
            ?.name ??
        packageOrComponent;
    var commit = Commit.lookup(repo: repo, oid: repo.head.target);
    while (commit.parents.isNotEmpty) {
      final commitMessage = CommitMessage.parse(
        commit.oid.sha,
        commit.summary,
        body: commit.body,
        commitTimeSecs: commit.time,
      );
      if (commitMessage is VersionCommitMessage &&
          (commitMessage.updatedComponents.contains(component) ||
              commitMessage.updatedComponents.isEmpty)) {
        return commitMessage.sha;
      }
      commit = commit.parent(0);
    }
    return null;
  }

  /// The directed graph of packages to the packages it depends on.
  late final Map<PackageInfo, List<PackageInfo>> packageGraph =
      UnmodifiableMapView({
    for (final package in allPackages.values)
      package: package.pubspecInfo.pubspec.dependencies.keys
          .map((packageName) => allPackages[packageName])
          .whereType<PackageInfo>()
          .toList(),
  });

  /// The reversed (transposed) [packageGraph].
  ///
  /// Provides a mapping from each packages to the packages which directly
  /// depend on it.
  late final Map<PackageInfo, List<PackageInfo>> reversedPackageGraph = () {
    final packageGraph = this.packageGraph;
    final reversedPackageGraph = <PackageInfo, List<PackageInfo>>{
      for (final package in allPackages.values) package: [],
    };
    for (final entry in packageGraph.entries) {
      for (final dep in entry.value) {
        reversedPackageGraph[dep]!.add(entry.key);
      }
    }
    return UnmodifiableMapView(reversedPackageGraph);
  }();

  /// The git diff between [oldTree] and [newTree].
  ///
  /// **NOTE**: This is an expensive operation and its result should be cached.
  Diff diffTrees(Tree oldTree, Tree newTree) => Diff.treeToTree(
        repo: repo,
        oldTree: oldTree,
        newTree: newTree,
      );

  final _changesCache = <_DiffMarker, GitChanges>{};

  /// Collect all the packages which have changed between [baseRef]..[headRef]
  /// and the commits which changed them.
  GitChanges changes(String baseRef, String headRef) {
    // TODO(dnys1): Diff with index if headRef is null to include uncommitted
    // changes?
    final baseTree = RevParse.single(
      repo: repo,
      spec: '$baseRef^{tree}',
    ) as Tree;
    final headTree = RevParse.single(
      repo: repo,
      spec: '$headRef^{tree}',
    ) as Tree;
    final diffMarker = _DiffMarker(baseTree, headTree);
    if (_changesCache.containsKey(diffMarker)) {
      return _changesCache[diffMarker]!;
    }
    final diff = diffTrees(baseTree, headTree);
    final changedPaths = diff.deltas.expand(
      (delta) => [delta.oldFile.path, delta.newFile.path],
    );
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
      final walker = RevWalk(repo)..pushRange('$baseRef..$headRef');
      for (final commit in walker.walk()) {
        for (var i = 0; i < commit.parents.length; i++) {
          final parent = commit.parent(i);
          final commitDiff = diffTrees(parent.tree, commit.tree);
          final commitPaths = commitDiff.deltas.expand(
            (delta) => [delta.oldFile.path, delta.newFile.path],
          );
          final relativePath = p.relative(package.path, from: rootDir.path);
          final changedPath = commitPaths.firstWhereOrNull(
            (path) => path.contains('$relativePath/'),
          );
          if (changedPath != null) {
            final commitMessage = CommitMessage.parse(
              commit.oid.sha,
              commit.summary,
              body: commit.body,
              commitTimeSecs: commit.time,
            );
            logger.verbose(
              'Package ${package.name} changed by $changedPath '
              '(${commitMessage.summary})',
            );
            commitsByPackage.add(package, commitMessage);
            packagesByCommit.add(commitMessage, package);
          }
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
  void bumpAllVersions({
    required GitChanges Function(PackageInfo) changesForPackage,
  }) {
    final sortedPackages = List.of(publishablePackages);
    sortPackagesTopologically(
      sortedPackages,
      (PackageInfo pkg) => pkg.pubspecInfo.pubspec,
    );
    for (final package in sortedPackages) {
      final changes = changesForPackage(package);
      final commits = (changes.commitsByPackage[package]?.toList() ?? const [])
        ..sort((a, b) => a.dateTime.compareTo(b.dateTime));
      for (final commit in commits) {
        if (commit.type == CommitType.version) {
          continue;
        }
        final bumpType = commit.bumpType;
        if (bumpType != null) {
          bumpVersion(
            package,
            commit: commit,
            type: bumpType,
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
      if (commit.isBreakingChange) {
        // Back-propagate to all dependent packages for breaking changes.
        //
        // Since we set semantic version constraints, only a breaking change
        // in a direct dependency necessitates a version bump.
        logger.verbose(
          'Breaking change. Performing dfs on dependent packages...',
        );
        for (final dependent in allPackages.values.where(
          (pkg) =>
              pkg.pubspecInfo.pubspec.dependencies.keys
                  .contains(package.name) ||
              pkg.pubspecInfo.pubspec.devDependencies.keys
                  .contains(package.name),
        )) {
          logger.verbose('found dependent package ${dependent.name}');
          if (dependent.isPublishable && type != VersionBumpType.patch) {
            bumpVersion(
              dependent,
              commit: commit,
              type: VersionBumpType.patch,
              includeInChangelog: false,
            );
          }
          updateConstraint(package, dependent);
        }
      }

      // Propagate to all component packages.
      final componentPackages = component?.packageGraph;
      if (propagateToComponent && componentPackages != null) {
        dfs<PackageInfo>(
          componentPackages,
          (componentPackage) {
            if (componentPackage == package) return;
            logger.verbose(
              'Bumping component package ${componentPackage.name}',
            );
            bumpVersion(
              componentPackage,
              commit: commit,
              type: type,
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
    final newVersion = versionChanges.proposedVersion(package.name)!;
    final hasDependency =
        dependent.pubspecInfo.pubspec.dependencies.containsKey(package.name);
    final hasDevDependency =
        dependent.pubspecInfo.pubspec.devDependencies.containsKey(package.name);
    if (hasDependency || hasDevDependency) {
      final newConstraint = newVersion.amplifyConstraint(
        minVersion: newVersion,
      );
      logger.verbose(
        'Bumping dependency on ${dependent.name} in ${package.name} '
        'to $newConstraint',
      );
      dependent.pubspecInfo.pubspecYamlEditor.update(
        [
          if (hasDependency) 'dependencies' else 'dev_dependencies',
          package.name
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

class _DiffMarker with AWSEquatable<_DiffMarker> {
  const _DiffMarker(this.baseTree, this.headTree);

  final Tree baseTree;
  final Tree headTree;

  @override
  List<Object?> get props => [baseTree, headTree];
}

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

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

import 'dart:collection';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/changelog/commit_message.dart';
import 'package:aft/src/util.dart';
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
  }) : logger = logger ?? AWSLogger('Repo');

  /// The root directory of the repository.
  final Directory rootDir;

  final AWSLogger logger;

  final Map<String, PackageInfo> allPackages;

  final AftConfig aftConfig;

  late final List<PackageInfo> publishablePackages = UnmodifiableListView(
    allPackages.values.where((pkg) => !pkg.isExample).toList(),
  );

  /// The components of the
  late final Map<String, List<PackageInfo>> components =
      aftConfig.components.map((component, packages) {
    return MapEntry(
      component,
      packages.map((name) => allPackages[name]!).toList(),
    );
  });

  /// The libgit repository.
  late final Repository repo = Repository.open(rootDir.path);

  /// The latest tag in the [repo], i.e. the last checkpoint for versioning.
  String? latestTag([String? packageName]) => maxBy(
        repo.tags.where((tag) {
          if (!semverRegex.hasMatch(tag)) {
            return false;
          }
          if (packageName == null) {
            return true;
          }
          final packageRegex = RegExp('${packageName}_v${semverRegex.pattern}');
          if (packageRegex.hasMatch(tag)) {
            return true;
          }
          final componentForPackage =
              aftConfig.componentForPackage(packageName);
          final componentRegex =
              RegExp('${componentForPackage}_v${semverRegex.pattern}');
          return componentRegex.hasMatch(tag);
        }),
        (t) {
          final version = semverRegex.firstMatch(t)!.group(0)!;
          return Version.parse(version);
        },
      );

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
          !changedPackage.isExample) {
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
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                commit.time * 1000,
              ).toUtc(),
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
      changes.commitsByPackage[package]?.forEach((commit) {
        // TODO(dnys1): Define full set of commit types which should be ignored
        // when considering version changes.
        if (commit.isVersionBump ||
            commit.type == CommitType.merge && commit.taggedPr == null) {
          return;
        }
        bumpVersion(
          package,
          commit: commit,
          propagate: commit.isBreakingChange,
        );
        // Propagate the version change to all packages affected by the same
        // commit as if they were a component.
        changes.packagesByCommit[commit]?.forEach((commitPackage) {
          bumpDependency(package, commitPackage);
        });
      });
    }
  }

  /// Bumps the version and changelog in [package] using [commit] and returns
  /// the new version.
  ///
  /// If [propagate] is `true`, the version change is propagated to all packages
  /// which depend on [package].
  Version bumpVersion(
    PackageInfo package, {
    bool propagate = false,
    required CommitMessage commit,
  }) {
    final component = aftConfig.componentForPackage(package.name);
    final currentVersion = package.version;
    final currentProposedVersion = versionChanges.newVersion(package);
    final isBreakingChange = commit.isBreakingChange;
    final newProposedVersion = currentVersion.nextAmplifyVersion(
      isBreakingChange: isBreakingChange,
    );
    final newVersion = maxBy(
      [currentProposedVersion, newProposedVersion],
      (version) => version,
    )!;
    versionChanges.updateVersion(package, newVersion);

    if (newVersion > currentVersion) {
      logger.debug(
        'Bumping ${package.name} from $currentProposedVersion to $newVersion: '
        '${commit.summary}',
      );
      package.pubspecInfo.pubspecYamlEditor.update(
        ['version'],
        newVersion.toString(),
      );
      final currentChangelogUpdate = changelogUpdates[package];
      changelogUpdates[package] = package.changelog.update(
        commits: {
          ...?currentChangelogUpdate?.commits,
          commit,
        },
        version: newVersion,
      );

      if (propagate) {
        // Propagate to all dependent packages.
        dfs<PackageInfo>(
          reversedPackageGraph,
          root: package,
          (dependent) {
            if (!dependent.isExample) {
              bumpVersion(dependent, commit: commit);
            }
            bumpDependency(package, dependent);
          },
        );

        // Propagate to all component packages.
        components[component]?.forEach((componentPackage) {
          bumpVersion(componentPackage, commit: commit);
          dfs<PackageInfo>(
            reversedPackageGraph,
            root: componentPackage,
            (dependent) {
              bumpDependency(componentPackage, dependent);
            },
          );
        });
      }
    }

    return newVersion;
  }

  /// Bumps the dependency for [package] in [dependent].
  void bumpDependency(PackageInfo package, PackageInfo dependent) {
    final newVersion = versionChanges.newVersion(package);
    if (dependent.pubspecInfo.pubspec.dependencies.containsKey(package.name)) {
      dependent.pubspecInfo.pubspecYamlEditor.update(
        ['dependencies', package.name],
        newVersion.amplifyConstraint(minVersion: newVersion),
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

class VersionChanges extends MapBase<String, Version>
    with UnmodifiableMapMixin<String, Version> {
  VersionChanges(this._repo);

  final Repo _repo;

  /// Version updates, by component.
  final Map<String, Version> _versionUpdates = {};

  /// The latest proposed version for [package].
  Version newVersion(PackageInfo package) {
    final component = _repo.aftConfig.componentForPackage(package.name);
    return _versionUpdates[component] ?? package.version;
  }

  /// Updates the proposed version for [package].
  void updateVersion(PackageInfo package, Version version) {
    final currentVersion = newVersion(package);
    if (version <= currentVersion) {
      return;
    }
    final component = _repo.aftConfig.componentForPackage(package.name);
    _versionUpdates[component] = version;
  }

  @override
  Version? operator [](Object? key) => _versionUpdates[key];

  @override
  Iterable<String> get keys => _versionUpdates.keys;
}

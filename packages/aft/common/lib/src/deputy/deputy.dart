// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:platform/platform.dart';
import 'package:process/process.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

final class Deputy {
  @visibleForTesting
  Deputy({
    DependencyGroups? dependencyGroups,
    required this.repo,
    required this.versionResolver,
    this.logger,
  }) : dependencyGroups = dependencyGroups ?? DependencyGroups();

  static Future<Deputy> create({
    Map<String, Iterable<String>> dependencyGroups = const {},
    FileSystem fileSystem = const LocalFileSystem(),
    Platform platform = const LocalPlatform(),
    ProcessManager processManager = const LocalProcessManager(),
    AWSLogger? logger,
  }) async {
    final repo = await Repo.load(
      platform: platform,
      fileSystem: fileSystem,
      processManager: processManager,
      logger: logger,
    );
    return Deputy(
      dependencyGroups: DependencyGroups(dependencyGroups),
      repo: repo,
      versionResolver: PubVersionResolver(),
      logger: logger,
    );
  }

  final DependencyGroups dependencyGroups;
  final Repo repo;
  final VersionResolver versionResolver;
  late final ConstraintUpdater constraintUpdater = ConstraintUpdater(
    logger: logger?.createChild('ConstraintUpdater'),
  );
  final AWSLogger? logger;

  /// Lists all third-party dependencies, grouped by the packages which depend on them.
  Future<BuiltListMultimap<String, DependencyMetadata>>
      _listDependencyGroups() async {
    final updates = <String, DependencyMetadataBuilder>{};
    final repoGraph = repo.getPackageGraph(includeDevDependencies: true);
    dfs(repoGraph, (package) {
      final dependencies = {
        ...package.pubspecInfo.pubspec.dependencies,
        ...package.pubspecInfo.pubspec.devDependencies,
      }..removeWhere(
          (pkg, dep) =>
              repo.allPackages.containsKey(pkg) || dep is! HostedDependency,
        );
      logger?.debug(
        'Found ${dependencies.length} dependencies for ${package.name}: '
        '${prettyPrintJson(dependencies.keys.toList())}',
      );
      for (final MapEntry(
            key: dependency,
            value: constraint as HostedDependency
          ) in dependencies.entries) {
        final version = constraint.version;
        if (version == VersionConstraint.any) {
          continue;
        }
        (updates[dependency] ??= DependencyMetadataBuilder())
          ..dependencyName = dependency
          ..globalConstraint = repo.aftConfig.dependencies[dependency]
          ..dependentPackages[package.name] = version;
      }
    });
    for (final group in updates.values) {
      logger?.debug('Getting latest version for ${group.dependencyName}');
      final latestVersion = await versionResolver.latestVersion(
        group.dependencyName!,
      );
      if (latestVersion == null) {
        throw StateError(
          'No version info found for package: ${group.dependencyName}',
        );
      }
      group.latestVersion = latestVersion;
    }
    return BuiltListMultimap<String, DependencyMetadata>.build((updateGroups) {
      // Grouped updates
      dependencyGroups.forEach((groupName, dependencyName) {
        if (updates.remove(dependencyName) case final update?) {
          updateGroups[groupName].add(update.build());
        }
      });

      // Ungrouped updates
      for (final MapEntry(key: dependency, value: update) in updates.entries) {
        if (updateGroups[dependency].isNotEmpty) {
          throw ArgumentError.value(
            dependency,
            'groupName',
            'Group name conflicts with ungrouped dependency name',
          );
        }
        updateGroups[dependency].add(update.build());
      }
    });
  }

  /// Comapres the local dependency constraints in each of the [dependencyGroups]
  /// against the latest published version of the group's package.
  ///
  /// For each group in which there are updates, this proposes a new update
  /// which modifies the pubspec for each group package.
  Future<DeputyResults> _proposeUpdates(
    Map<String, Iterable<DependencyMetadata>> dependencyGroups,
  ) async {
    final proposedUpdates = MapBuilder<String, DependencyGroupUpdateBuilder>();
    final skipped = MapBuilder<String, SkipReason>();
    for (final MapEntry(key: groupName, value: groupUpdates)
        in dependencyGroups.entries) {
      for (final update in groupUpdates) {
        final dependency = update.dependencyName;

        // Ignore dependencies which are on the do-not-bump list.
        if (repo.aftConfig.doNotBump.contains(dependency)) {
          logger?.debug(
            'Skipping updates to "$dependency" since it\'s on the do-not-bump list',
          );
          skipped[dependency] = DoNotBump(repo.aftConfig.doNotBump.toList());
          continue;
        }

        // Lazily add a proposed update when one of the below conditions are true:
        // - There is a change to the global constraint
        // - There is a change to one of the packages' constraints.
        DependencyGroupUpdateBuilder proposedUpdate() {
          return (proposedUpdates[groupName] ??= DependencyGroupUpdateBuilder())
            ..groupName = groupName
            ..deputy = this
            ..dependencies.addAll(this.dependencyGroups[groupName] ?? const {})
            ..dependencies.add(dependency)
            ..updates[dependency] = update;
        }

        // FIXME: How to handle breaking changes
        // Couple ways to handle:
        // 1. Create the PR - let it fail or just close if not needed.
        //    but this means that there will be a lot of PRs if we just
        //    keep closing them or need to add to denylist.
        // 2. If breaking change does not affect us, we could add logic
        //    to take both versions, e.g. currentConstraint=^1.0.0, latest=2.0.1
        //    => ">=1.0.0 <3.0.0" potentially.
        //    Sometimes we want to do this because older Flutter or Dart versions
        //    may pin to 1.x.x but other packages we depend on pin to 2.x.x.
        // 3. Create a GitHub issue instead

        if (update.globalConstraint case final globalConstraint?) {
          final constraintUpdate = constraintUpdater.updateFor(
            dependency,
            globalConstraint,
            update.latestVersion,
          );
          switch (constraintUpdate) {
            case (final updatedGlobalConstraint?, _):
              logger
                ?..info('Proposing global update to $dependency:')
                ..info('  $globalConstraint -> $updatedGlobalConstraint');
              proposedUpdate()
                ..updatedConstraints[dependency] ??= updatedGlobalConstraint
                ..pubspecUpdates.add(
                  (repo) => repo.rootPubspecEditor.update(
                    ['dependencies', dependency],
                    updatedGlobalConstraint.toString(),
                  ),
                );
            case skippedBreaking:
              skipped[dependency] = BreakingChange(
                update.latestVersion,
                globalConstraint,
              );
          }
        }

        for (final MapEntry(key: packageName, value: constraint)
            in update.dependentPackages.entries) {
          final constraintUpdate = constraintUpdater.updateFor(
            dependency,
            constraint,
            update.latestVersion,
          );
          switch (constraintUpdate) {
            case (final updatedConstraint?, _):
              logger
                ?..info('Proposing update to $dependency in $packageName:')
                ..info('  $constraint -> $updatedConstraint');
              final package = repo[packageName];
              final dependencyType = package.pubspecInfo.pubspec.dependencies
                      .containsKey(dependency)
                  ? DependencyType.dependency
                  : DependencyType.devDependency;

              proposedUpdate()
                ..updatedConstraints[dependency] ??= updatedConstraint
                ..pubspecUpdates.add(
                  (repo) => repo
                      .maybePackage(package.name)
                      ?.pubspecInfo
                      .pubspecYamlEditor
                      .update(
                    [dependencyType.key, dependency],
                    updatedConstraint.toString(),
                  ),
                );
            case skippedBreaking:
              skipped[dependency] = BreakingChange(
                update.latestVersion,
                constraint,
              );
          }
        }
      }
    }
    final groupUpdates = proposedUpdates
        .build()
        .toMap()
        .map((group, update) => MapEntry(group, update.build()));
    return DeputyResults._(
      groupUpdates: groupUpdates,
      skipped: skipped.build().toMap(),
    );
  }

  /// Writes any propsed updates to disk.
  ///
  /// If [worktree] is specified, updates are applied in that repo.
  /// Otherwise, they are applied to the current, active repo.
  Future<void> commitUpdates([Repo? worktree]) async {
    final repo = worktree ?? this.repo;
    final rootDir = this.repo.rootDir.path;
    String worktreePath(String path) {
      final relativeToRoot = p.relative(path, from: rootDir);
      return p.join(worktree?.rootDir.path ?? rootDir, relativeToRoot);
    }

    final outdatedPackages = [
      for (final package in repo.allPackages.values)
        if (package.pubspecInfo.pubspecYamlEditor case final editor
            when editor.edits.isNotEmpty)
          (worktreePath(package.path), editor),
      if (repo.rootPubspecEditor.edits.isNotEmpty)
        (worktreePath(rootDir), repo.rootPubspecEditor),
    ];
    if (outdatedPackages.isEmpty) {
      logger?.info('All dependencies up-to-date');
      return;
    }
    for (final (directory, editor) in outdatedPackages) {
      final pubspecFile =
          repo.fileSystem.directory(directory).childFile('pubspec.yaml');
      if (!pubspecFile.existsSync()) {
        throw StateError('Expected pubspec at: ${pubspecFile.path}');
      }
      pubspecFile.writeAsStringSync(editor.toString());
    }
    logger?.info("Updated ${outdatedPackages.length} packages' pubspecs.");
  }

  /// Scans through all transitive third-party dependencies in the repo and proposes
  /// updates for those which have outdated constraints.
  ///
  /// Returns `true` if there were updates and `false` if all packages are up-to-date.
  Future<DeputyResults> scanForUpdates() async {
    final dependencyGroups = await _listDependencyGroups();
    return _proposeUpdates(dependencyGroups.toMap());
  }
}

/// The results of a [Deputy] scan.
final class DeputyResults {
  const DeputyResults._({
    required this.groupUpdates,
    required this.skipped,
  });

  /// The proposed updates, grouped by the group name.
  final Map<String, DependencyGroupUpdate> groupUpdates;

  /// The dependencies whose updates were skipped and the reason for the skip.
  final Map<String, SkipReason> skipped;
}

/// The reason why a dependency's update was skipped.
sealed class SkipReason {}

/// {@template aft_common.breaking_change}
/// A breaking change was detected on the dependency.
/// {@endtemplate}
final class BreakingChange
    with AWSEquatable<BreakingChange>
    implements SkipReason {
  /// {@macro aft_common.breaking_change}
  const BreakingChange(this.latestVersion, this.currentConstraint);

  /// The latest version published on `pub.dev`.
  final VersionConstraint latestVersion;

  /// The current constraint in the repo.
  final VersionConstraint currentConstraint;

  @override
  List<Object?> get props => [latestVersion, currentConstraint];
}

/// {@template aft_common.do_not_bump}
/// A breaking change was detected on the dependency.
/// {@endtemplate}
final class DoNotBump with AWSEquatable<DoNotBump> implements SkipReason {
  /// {@macro aft_common.do_not_bump}
  const DoNotBump(this.repoList);

  /// The repo's list of packages to never bump.
  final List<String> repoList;

  @override
  List<Object?> get props => [repoList];
}

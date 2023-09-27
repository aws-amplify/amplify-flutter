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
    this.dependencyGroups = const [],
    required this.repo,
    required this.versionResolver,
    this.logger,
  });

  static Future<Deputy> create({
    List<DependencyUpdateGroup> dependencyGroups = const [],
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
      dependencyGroups: dependencyGroups,
      repo: repo,
      versionResolver: PubVersionResolver(
        logger: logger,
      ),
      logger: logger,
    );
  }

  final List<DependencyUpdateGroup> dependencyGroups;
  final Repo repo;
  final VersionResolver versionResolver;
  final AWSLogger? logger;

  /// Lists all third-party dependencies, grouped by the packages which depend on them.
  Future<BuiltListMultimap<DependencyUpdateGroup, DependencyUpdate>>
      _listDependencyGroups() async {
    final updates = <String, DependencyUpdateBuilder>{};
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
        (updates[dependency] ??= DependencyUpdateBuilder())
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
    return BuiltListMultimap.build((updateGroups) {
      // Grouped updates
      for (final group in dependencyGroups) {
        updateGroups[group].addAll(
          [
            for (final dependency in group) updates.remove(dependency)?.build(),
          ].nonNulls,
        );
      }

      // Ungrouped updates
      for (final MapEntry(key: dependency, value: update) in updates.entries) {
        updateGroups[DependencyUpdateGroup.of([dependency])]
            .add(update.build());
      }
    });
  }

  /// Comapres the local dependency constraints in each of the [dependencyGroups]
  /// against the latest published version of the group's package.
  ///
  /// For each group in which there are updates, this proposes a new update
  /// which modifies the pubspec for each group package.
  Future<BuiltListMultimap<DependencyUpdateGroup, PropsedDependencyUpdate>>
      _proposeUpdates(
    BuiltListMultimap<DependencyUpdateGroup, DependencyUpdate> dependencyGroups,
  ) async {
    final proposedUpdates =
        ListMultimapBuilder<DependencyUpdateGroup, PropsedDependencyUpdate>();
    for (final MapEntry(key: dependencyGroup, value: updates)
        in dependencyGroups.toMap().entries) {
      for (final update in updates) {
        if (update.globalConstraint case final globalConstraint?) {
          final updatedGlobalConstraint = versionResolver.updateFor(
            update.dependencyName,
            globalConstraint,
            update.latestVersion,
          );
          if (updatedGlobalConstraint != null) {
            logger
              ?..info('Proposing global update to ${update.dependencyName}:')
              ..info('  $globalConstraint -> $updatedGlobalConstraint');
            final proposedUpdate = PropsedDependencyUpdate(
              this,
              update: update,
              updatedConstraint: updatedGlobalConstraint,
            );
            proposedUpdate._pubspecUpdates.add(
              (repo) => repo.rootPubspecEditor.update(
                ['dependencies', update.dependencyName],
                updatedGlobalConstraint.toString(),
              ),
            );
            proposedUpdates[dependencyGroup].add(proposedUpdate);
          }
        }

        for (final MapEntry(key: packageName, value: constraint)
            in update.dependentPackages.entries) {
          final updatedConstraint = versionResolver.updateFor(
            update.dependencyName,
            constraint,
            update.latestVersion,
          );
          if (updatedConstraint == null) {
            continue;
          }
          logger
            ?..info(
              'Proposing update to ${update.dependencyName} in $packageName:',
            )
            ..info('  $constraint -> $updatedConstraint');
          final package = repo[packageName];
          final dependencyType = package.pubspecInfo.pubspec.dependencies
                  .containsKey(update.dependencyName)
              ? DependencyType.dependency
              : DependencyType.devDependency;
          final proposedUpdate = PropsedDependencyUpdate(
            this,
            update: update,
            updatedConstraint: updatedConstraint,
          );
          proposedUpdate._pubspecUpdates.add(
            (repo) => repo
                .maybePackage(package.name)
                ?.pubspecInfo
                .pubspecYamlEditor
                .update(
              [dependencyType.key, update.dependencyName],
              updatedConstraint.toString(),
            ),
          );
          proposedUpdates[dependencyGroup].add(proposedUpdate);
        }
      }
    }
    return proposedUpdates.build();
  }

  /// Writes any propsed updates to disk.
  ///
  /// If [worktree] is specified, updates are applied in that repo.
  /// Otherwise, they are applied to the current, active repo.
  Future<void> _commitUpdates([Repo? worktree]) async {
    final repo = worktree ?? this.repo;
    final rootDir = this.repo.rootDir.path;
    String worktreePath(String path) {
      final relativeToRoot = p.relative(path, from: rootDir);
      return p.join(worktree?.rootDir.path ?? rootDir, relativeToRoot);
    }

    final outdatedPacakges = [
      for (final package in repo.allPackages.values)
        if (package.pubspecInfo.pubspecYamlEditor case final editor
            when editor.edits.isNotEmpty)
          (worktreePath(package.path), editor),
      if (repo.rootPubspecEditor.edits.isNotEmpty)
        (worktreePath(rootDir), repo.rootPubspecEditor),
    ];
    if (outdatedPacakges.isEmpty) {
      logger?.info('All dependencies up-to-date');
      return;
    }
    for (final (directory, editor) in outdatedPacakges) {
      final pubspecFile =
          repo.fileSystem.directory(directory).childFile('pubspec.yaml');
      if (!pubspecFile.existsSync()) {
        throw StateError('Expected pubspec at: ${pubspecFile.path}');
      }
      pubspecFile.writeAsStringSync(editor.toString());
    }
    logger?.info("Updated ${outdatedPacakges.length} packages' pubspecs.");
  }

  /// Scans through all transitive third-party dependencies in the repo and proposes
  /// updates for those which have outdated constraints.
  ///
  /// Returns `true` if there were updates and `false` if all packages are up-to-date.
  Future<BuiltListMultimap<DependencyUpdateGroup, PropsedDependencyUpdate>?>
      scanForUpdates() async {
    final dependencyGroups = await _listDependencyGroups();
    final updates = await _proposeUpdates(dependencyGroups);
    if (updates.isEmpty) {
      return null;
    }
    return updates;
  }
}

/// {@template aft_common.deputy.group_update}
/// A proposed [update] to a dependency.
///
/// Call [updatePubspecs] to write proposed changes to disk.
/// {@endtemplate}
final class PropsedDependencyUpdate {
  /// {@macro aft_common.deputy.group_update}
  PropsedDependencyUpdate(
    this._deputy, {
    required this.update,
    required this.updatedConstraint,
  });

  final Deputy _deputy;

  /// The proposed update.
  final DependencyUpdate update;

  /// The constraint to be used in the update.
  final VersionConstraint updatedConstraint;
  final List<void Function(Repo)> _pubspecUpdates = [];

  /// Updates all pubspecs in the group and writes the changes
  /// to disk.
  ///
  /// If [worktree] is specified, updates are applied in that repo.
  /// Otherwise, they are applied to the current, active repo.
  Future<void> updatePubspecs([Repo? worktree]) async {
    for (final update in _pubspecUpdates) {
      update(worktree ?? _deputy.repo);
    }
    await _deputy._commitUpdates(worktree);
  }
}

extension UpdateAllGroups
    on BuiltListMultimap<DependencyUpdateGroup, PropsedDependencyUpdate> {
  /// Updates all pubspecs in all groups and writes the changes
  /// to disk.
  ///
  /// If [worktree] is specified, updates are applied in that repo.
  /// Otherwise, they are applied to the current, active repo.
  Future<void> updatePubspecs([Repo? worktree]) async {
    for (final group in values) {
      await group.updatePubspecs(worktree);
    }
  }
}

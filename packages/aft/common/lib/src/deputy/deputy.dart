// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
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
    required this.repo,
    required this.versionResolver,
    this.logger,
  });

  static Future<Deputy> create({
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
      repo: repo,
      versionResolver: PubVersionResolver(
        logger: logger,
      ),
      logger: logger,
    );
  }

  final Repo repo;
  final VersionResolver versionResolver;
  final AWSLogger? logger;

  /// Lists all third-party dependencies, grouped by the packages which depend on them.
  Future<List<Group>> _listDependencyGroups() async {
    final groups = <String, GroupBuilder>{};
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
        (groups[dependency] ??= GroupBuilder())
          ..packageName = dependency
          ..globalConstraint = repo.aftConfig.dependencies[dependency]
          ..dependentPackages[package.name] = version;
      }
    });
    for (final group in groups.values) {
      logger?.debug('Getting latest version for ${group.packageName}');
      final latestVersion = await versionResolver.latestVersion(
        group.packageName!,
      );
      if (latestVersion == null) {
        throw StateError(
          'No version info found for package: ${group.packageName}',
        );
      }
      group.latestVersion = latestVersion;
    }
    return groups.values.map((group) => group.build()).toList();
  }

  /// Comapres the local dependency constraints in each of the [dependencyGroups]
  /// against the latest published version of the group's package.
  ///
  /// For each group in which there are updates, this proposes a new update
  /// which modifies the pubspec for each group package.
  Future<Map<String, GroupUpdate>> _proposeUpdates(
    List<Group> dependencyGroups,
  ) async {
    final proposedUpdates = <String, GroupUpdate>{};
    for (final group in dependencyGroups) {
      if (group.globalConstraint case final globalConstraint?) {
        final updatedGlobalConstraint = versionResolver.updateFor(
          group.packageName,
          globalConstraint,
          group.latestVersion,
        );
        if (updatedGlobalConstraint != null) {
          logger
            ?..info('Proposing global update to ${group.packageName}:')
            ..info('  $globalConstraint -> $updatedGlobalConstraint');
          final update = proposedUpdates[group.packageName] = GroupUpdate(
            this,
            group: group,
            updatedConstraint: updatedGlobalConstraint,
          );
          update._pubspecUpdates.add(
            (repo) => repo.rootPubspecEditor.update(
              ['dependencies', group.packageName],
              updatedGlobalConstraint.toString(),
            ),
          );
        }
      }

      for (final MapEntry(key: packageName, value: constraint)
          in group.dependentPackages.entries) {
        final updatedConstraint = versionResolver.updateFor(
          group.packageName,
          constraint,
          group.latestVersion,
        );
        if (updatedConstraint == null) {
          continue;
        }
        logger
          ?..info('Proposing update to ${group.packageName} in $packageName:')
          ..info('  $constraint -> $updatedConstraint');
        final package = repo[packageName];
        final dependencyType = package.pubspecInfo.pubspec.dependencies
                .containsKey(group.packageName)
            ? DependencyType.dependency
            : DependencyType.devDependency;
        final update = proposedUpdates[group.packageName] ??= GroupUpdate(
          this,
          group: group,
          updatedConstraint: updatedConstraint,
        );
        update._pubspecUpdates.add(
          (repo) => repo
              .maybePackage(package.name)
              ?.pubspecInfo
              .pubspecYamlEditor
              .update(
            [dependencyType.key, group.packageName],
            updatedConstraint.toString(),
          ),
        );
      }
    }
    return proposedUpdates;
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
  Future<Map<String, GroupUpdate>?> scanForUpdates() async {
    final dependencyGroups = await _listDependencyGroups();
    final updates = await _proposeUpdates(dependencyGroups);
    if (updates.isEmpty) {
      return null;
    }
    return updates;
  }
}

/// {@template aft_common.deputy.group_update}
/// A proposed update to a dependency [group].
///
/// Call [updatePubspecs] to write proposed changes to disk.
/// {@endtemplate}
final class GroupUpdate {
  /// {@macro aft_common.deputy.group_update}
  GroupUpdate(
    this._deputy, {
    required this.group,
    required this.updatedConstraint,
  });

  final Deputy _deputy;

  /// The group this update applies to.
  final Group group;

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

extension UpdateAllGroups on Map<String, GroupUpdate> {
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

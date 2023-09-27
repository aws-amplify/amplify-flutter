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
      versionResolver: PubVersionResolver(
        logger: logger,
      ),
      logger: logger,
    );
  }

  final DependencyGroups dependencyGroups;
  final Repo repo;
  final VersionResolver versionResolver;
  final AWSLogger? logger;

  /// Lists all third-party dependencies, grouped by the packages which depend on them.
  Future<BuiltListMultimap<String, DependencyUpdate>>
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
    return BuiltListMultimap<String, DependencyUpdate>.build((updateGroups) {
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
  Future<Map<String, DependencyGroupUpdate>> _proposeUpdates(
    BuiltListMultimap<String, DependencyUpdate> dependencyGroups,
  ) async {
    final proposedUpdates = MapBuilder<String, DependencyGroupUpdateBuilder>();
    for (final MapEntry(key: groupName, value: groupUpdates)
        in dependencyGroups.toMap().entries) {
      for (final update in groupUpdates) {
        final proposedUpdate = (proposedUpdates[groupName] ??=
            DependencyGroupUpdateBuilder())
          ..groupName = groupName
          ..deputy = this
          ..dependencies.addAll(this.dependencyGroups[groupName] ?? const {})
          ..dependencies.add(update.dependencyName)
          ..updates[update.dependencyName] = update;
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
            proposedUpdate
              ..updatedConstraints[update.dependencyName] ??=
                  updatedGlobalConstraint
              ..pubspecUpdates.add(
                (repo) => repo.rootPubspecEditor.update(
                  ['dependencies', update.dependencyName],
                  updatedGlobalConstraint.toString(),
                ),
              );
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

          proposedUpdate
            ..updatedConstraints[update.dependencyName] = updatedConstraint
            ..pubspecUpdates.add(
              (repo) => repo
                  .maybePackage(package.name)
                  ?.pubspecInfo
                  .pubspecYamlEditor
                  .update(
                [dependencyType.key, update.dependencyName],
                updatedConstraint.toString(),
              ),
            );
        }
      }
    }
    return proposedUpdates
        .build()
        .toMap()
        .map((group, update) => MapEntry(group, update.build()));
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
  Future<Map<String, DependencyGroupUpdate>?> scanForUpdates() async {
    final dependencyGroups = await _listDependencyGroups();
    final updates = await _proposeUpdates(dependencyGroups);
    if (updates.isEmpty) {
      return null;
    }
    return updates;
  }
}

extension UpdateAllGroups on Map<String, DependencyGroupUpdate> {
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

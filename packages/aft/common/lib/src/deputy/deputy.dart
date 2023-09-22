// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:meta/meta.dart';
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
    final configLoader = AftConfigLoader(
      fileSystem: fileSystem,
    );
    final config = configLoader.load();
    final repo = await Repo.open(
      config,
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
  /// by modifying the in-memory pubspec for each package.
  Future<Map<String, VersionConstraint>> _proposeUpdates(
    List<Group> dependencyGroups,
  ) async {
    final proposedUpdates = <String, VersionConstraint>{};
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
          proposedUpdates[group.packageName] = updatedGlobalConstraint;
          repo.rootPubspecEditor.update(
            ['dependencies', group.packageName],
            updatedGlobalConstraint.toString(),
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
        proposedUpdates[group.packageName] ??= updatedConstraint;
        package.pubspecInfo.pubspecYamlEditor.update(
          [dependencyType.key, group.packageName],
          updatedConstraint.toString(),
        );
      }
    }
    return proposedUpdates;
  }

  /// Writes any propsed updates to disk.
  ///
  /// Returns `true` if there were updates and `false` if all packages are up-to-date.
  Future<void> _commitUpdates() async {
    final outdatedPacakges = [
      for (final package in repo.allPackages.values)
        if (package.pubspecInfo.pubspecYamlEditor case final editor
            when editor.edits.isNotEmpty)
          (package.path, editor),
      if (repo.rootPubspecEditor.edits.isNotEmpty)
        (repo.rootDir.uri.toFilePath(), repo.rootPubspecEditor),
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
  Future<Map<String, VersionConstraint>?> scanAndUpdate() async {
    final dependencyGroups = await _listDependencyGroups();
    final updates = await _proposeUpdates(dependencyGroups);
    if (updates.isEmpty) {
      return null;
    }
    await _commitUpdates();
    return updates;
  }
}

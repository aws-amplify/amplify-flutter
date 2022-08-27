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
import 'package:aft/src/options/git_ref_options.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aft/src/repo.dart';
import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

/// Command for bumping package versions across the repo.
class VersionCommand extends AmplifyCommand {
  VersionCommand() {
    addSubcommand(_VersionUpdateCommand());
    addSubcommand(_VersionPreviewCommand());
  }

  @override
  String get description =>
      'Bump package versions automatically using git magic';

  @override
  String get name => 'version';
}

abstract class _VersionBaseCommand extends AmplifyCommand
    with GitRefOptions, GlobOptions {
  @override
  Map<String, PackageInfo> get allPackages {
    return Map.fromEntries(
      super.allPackages.entries.where((entry) => !entry.value.isExample),
    );
  }

  GitChanges _changesForPackage(PackageInfo package) {
    final baseRef = this.baseRef ?? repo.latestTag(package.name);
    if (baseRef == null) {
      exitError(
        'No tag exists for package (${package.name}). '
        'Supply a base ref manually using --base-ref',
      );
    }
    return repo.changes(baseRef, headRef);
  }

  Future<void> _updateVersions({required bool preview}) async {
    final updates = await bumpVersions(
      repo: repo,
      changesForPackage: _changesForPackage,
    );
    final changelogUpdates = updates.updatedChangelogs;

    for (final package in allPackages.values) {
      final edits = package.pubspecInfo.pubspecYamlEditor.edits;
      if (edits.isNotEmpty) {
        if (preview) {
          logger.info('pubspec.yaml');
          for (final edit in edits) {
            final originalText = package.pubspecInfo.pubspecYaml
                .substring(edit.offset, edit.offset + edit.length);
            logger.info('$originalText --> ${edit.replacement}');
          }
        } else {
          await File(p.join(package.path, 'pubspec.yaml'))
              .writeAsString(package.pubspecInfo.pubspecYamlEditor.toString());
        }
      }
      final changelogUpdate = changelogUpdates[package];
      if (changelogUpdate != null && changelogUpdate.hasUpdate) {
        if (preview) {
          logger
            ..info('CHANGELOG.md')
            ..info(changelogUpdate.newText!);
        } else {
          await File(p.join(package.path, 'CHANGELOG.md'))
              .writeAsString(changelogUpdate.toString());
        }
      }
    }
  }
}

class _VersionPreviewCommand extends _VersionBaseCommand {
  @override
  String get description => 'Previews changes to package versions';

  @override
  String get name => 'preview';

  @override
  Future<void> run() async {
    return _updateVersions(preview: true);
  }
}

class _VersionUpdateCommand extends _VersionBaseCommand {
  @override
  String get description => 'Updates package versions';

  @override
  String get name => 'update';

  @override
  Future<void> run() async {
    return _updateVersions(preview: false);
  }
}

Future<VersionChanges> bumpVersions({
  required Repo repo,
  required GitChanges Function(PackageInfo) changesForPackage,
}) async {
  // Version updates, by component.
  final versionUpdates = <String, Version>{};

  // Changelog updates. by package.
  final changelogUpdates = <PackageInfo, ChangelogUpdate>{};

  /// Bumps the dependency for [package] in [dependent].
  void bumpDependency(PackageInfo package, PackageInfo dependent) {
    final component = repo.aftConfig.componentForPackage(package.name);
    final newVersion = versionUpdates[component] ?? package.version;
    if (dependent.pubspecInfo.pubspec.dependencies.containsKey(package.name)) {
      dependent.pubspecInfo.pubspecYamlEditor.update(
        ['dependencies', package.name],
        newVersion.amplifyConstraint(minVersion: newVersion),
      );
    }
  }

  /// Bumps the version and changelog in [package] using [commit].
  ///
  /// Returns the new version.
  Version bumpVersion(
    PackageInfo package, {
    bool propogate = false,
    CommitMessage? commit,
  }) {
    final component = repo.aftConfig.componentForPackage(package.name);
    final currentVersion = package.version;
    final currentProposedVersion = versionUpdates[component] ?? currentVersion;
    final isBreakingChange = commit?.isBreakingChange ?? false;
    final newProposedVersion = currentVersion.nextAmplifyVersion(
      isBreakingChange: isBreakingChange,
    );
    final newVersion = versionUpdates[component] = maxBy(
      [currentProposedVersion, newProposedVersion],
      (version) => version,
    )!;

    if (newVersion > currentVersion) {
      repo.logger.debug(
        'Bumping ${package.name} from $currentProposedVersion to $newVersion: '
        '${commit?.summary}',
      );
      package.pubspecInfo.pubspecYamlEditor.update(
        ['version'],
        newVersion.toString(),
      );
      final currentChangelogUpdate = changelogUpdates[package];
      changelogUpdates[package] = package.changelog.update(
        commits: {
          ...?currentChangelogUpdate?.commits,
          if (commit != null) commit,
        },
        version: newVersion,
      );

      if (propogate) {
        // Propogate to all dependent packages.
        dfs<PackageInfo>(
          repo.reversedPackageGraph,
          root: package,
          (dependent) {
            if (!dependent.isExample) {
              bumpVersion(dependent, commit: commit);
              bumpDependency(package, dependent);
            }
          },
        );

        // Propogate to all component packages.
        repo.components[component]?.forEach((componentPackage) {
          bumpVersion(componentPackage, commit: commit);
          dfs<PackageInfo>(
            repo.reversedPackageGraph,
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

  final sortedPackages = repo.publishablePackages;
  sortPackagesTopologically(
    sortedPackages,
    (PackageInfo pkg) => pkg.pubspecInfo.pubspec,
  );
  for (final package in sortedPackages) {
    final changes = changesForPackage(package);
    final commits = changes.commitsByPackage[package]?.toSet() ?? const {};
    for (final commit in commits) {
      // TODO(dnys1): Define full set of commit types which should be ignored
      // when considering version changes.
      if (commit.isVersionBump ||
          commit.type == CommitType.merge && commit.taggedPr == null) {
        continue;
      }
      bumpVersion(
        package,
        commit: commit,
        propogate: commit.isBreakingChange,
      );
      // Propogate the version change to all packages affected by the same
      // commit.
      changes.packagesByCommit[commit]?.forEach((commitPackage) {
        bumpDependency(package, commitPackage);
      });
    }
  }

  return VersionChanges(
    updatedChangelogs: changelogUpdates,
    updatedVersions: versionUpdates,
  );
}

class VersionChanges {
  const VersionChanges({
    required this.updatedChangelogs,
    required this.updatedVersions,
  });

  final Map<String, Version> updatedVersions;
  final Map<PackageInfo, ChangelogUpdate> updatedChangelogs;
}

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
import 'package:aft/src/options/git_ref_options.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aft/src/repo.dart';
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
        'No tag exists for package. '
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
  final logger = AWSLogger('updateVersions');

  // Version updates, by component.
  final versionUpdates = <String, Version>{};

  // Changelog updates. by package.
  final changelogUpdates = <PackageInfo, ChangelogUpdate>{};

  Version? bumpVersion(PackageInfo package, {required bool isBreakingChange}) {
    final component =
        repo.aftConfig.componentForPackage(package) ?? package.name;
    final currentVersion = package.version;
    final currentProposedVersion = versionUpdates[component] ?? currentVersion;
    final newProposedVersion = currentVersion.nextAmplifyVersion(
      isBreakingChange: isBreakingChange,
    );
    final newVersion = versionUpdates[component] = maxBy(
      [currentProposedVersion, newProposedVersion],
      (version) => version,
    )!;
    if (newVersion > currentProposedVersion) {
      final currentChangelogUpdate = changelogUpdates[package];
      changelogUpdates[package] = package.changelog.update(
        commits: currentChangelogUpdate?.commits ?? const Iterable.empty(),
        version: newVersion,
      );
      return newVersion;
    }
    return null;
  }

  for (final package in repo.publishablePackages) {
    final changes = changesForPackage(package);
    final commits = changes.commitsByPackage[package.name]?.toSet() ?? const {};

    var isBreakingChange = false;
    final affectedPackages = <String>{};
    for (final commit in commits) {
      if (commit.isBreakingChange) {
        isBreakingChange = true;
      }
      // Packages affected by the same commit.
      affectedPackages.addAll(
        changes.packagesByCommit[commit]?.where((pkg) => pkg != package.name) ??
            const {},
      );
    }
    final newVersion = bumpVersion(package, isBreakingChange: isBreakingChange);

    final allAffectedPackages =
        affectedPackages.map((packageName) => repo.allPackages[packageName]!);
    for (final affectedPackage in allAffectedPackages) {
      if (!affectedPackage.pubspecInfo.pubspec.dependencies
          .containsKey(package.name)) {
        continue;
      }
      affectedPackage.pubspecInfo.pubspecYamlEditor.update(
        ['dependencies', package.name],
        '^$newVersion',
      );
      // Do a patch bump of the affected package and update its changelog.
      bumpVersion(affectedPackage, isBreakingChange: false);
    }
    changelogUpdates[package] = package.changelog.update(
      commits: commits,
      version: newVersion,
    );
  }

  // Update pubspecs
  for (final package in repo.publishablePackages) {
    logger.info(package.name);
    final newVersion = versionUpdates[package];
    if (newVersion != null) {
      package.pubspecInfo.pubspecYamlEditor.update(
        ['version'],
        newVersion.toString(),
      );
      logger
        ..info('Version')
        ..info('${package.version} --> $newVersion');
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

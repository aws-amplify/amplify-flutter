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
import 'package:aft/src/options/git_ref_options.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aft/src/repo.dart';
import 'package:path/path.dart' as p;

/// Command for bumping package versions across the repo.
class VersionBumpCommand extends AmplifyCommand
    with GitRefOptions, GlobOptions {
  VersionBumpCommand() {
    argParser
      ..addFlag(
        'preview',
        help: 'Preview version changes without applying',
        defaultsTo: false,
        negatable: false,
      )
      ..addFlag(
        'yes',
        abbr: 'y',
        help: 'Responds "yes" to all prompts',
        defaultsTo: false,
        negatable: false,
      );
  }

  @override
  String get description =>
      'Bump package versions automatically using git magic';

  @override
  String get name => 'version-bump';

  late final bool yes = argResults!['yes'] as bool;

  late final bool preview = argResults!['preview'] as bool;

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

  Future<List<PackageInfo>> _updateVersions() async {
    repo.bumpAllVersions(
      changesForPackage: _changesForPackage,
    );
    final changelogUpdates = repo.changelogUpdates;

    final bumpedPackages = <PackageInfo>[];
    for (final package in repo.publishablePackages) {
      final edits = package.pubspecInfo.pubspecYamlEditor.edits;
      if (edits.isNotEmpty) {
        bumpedPackages.add(package);
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

    return bumpedPackages;
  }

  @override
  Future<void> run() async {
    await super.run();
    final bumpedPackages = await _updateVersions();

    if (!preview) {
      for (final package in bumpedPackages) {
        // Run build_runner for packages which generate their version number.
        final needsBuildRunner = package.pubspecInfo.pubspec.devDependencies
            .containsKey('build_version');
        if (!needsBuildRunner) {
          continue;
        }
        await runBuildRunner(
          package,
          logger: logger,
          verbose: verbose,
        );
      }

      logger.info('Version successfully bumped');
      // TODO(dnys1): Use version bump commit instead of tags
      // if (yes || prompt('Commit changes? (y/N) ').toLowerCase() == 'y') {
      //   // Commit and tag changes
      //   await runGit(['add', '.']);
      //   await runGit(['commit', '-m', 'chore(version): Bump version']);
      //   await Future.wait<void>([
      //     for (final changeEntry in repo.versionChanges.entries)
      //       runGit(['tag', '${changeEntry.key}_v${changeEntry.value}']),
      //   ]);
      // }
    }
  }
}

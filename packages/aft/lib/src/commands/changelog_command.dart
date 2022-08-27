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
import 'package:path/path.dart' as p;

/// Command for manipulating changelogs.
class ChangelogCommand extends AmplifyCommand {
  ChangelogCommand() {
    addSubcommand(_ChangelogUpdateCommand());
    addSubcommand(_ChangelogPreviewCommand());
  }

  @override
  String get description => 'Update changelog entries automatically';

  @override
  String get name => 'changelog';

  @override
  List<String> get aliases => ['cl'];
}

abstract class _ChangelogBaseCommand extends AmplifyCommand
    with GitRefOptions, GlobOptions {
  _ChangelogBaseCommand() {
    argParser.addFlag(
      'yes',
      abbr: 'y',
      help: 'Responds "yes" to all prompts',
      defaultsTo: false,
      negatable: false,
    );
  }

  late final bool yes = argResults!['yes'] as bool;

  Future<void> _updateChangelogs({required bool preview}) async {
    for (final package in repo.publishablePackages) {
      final baseRef = this.baseRef ?? repo.latestTag(package.name);
      if (baseRef == null) {
        exitError(
          'No tag exists for package (${package.name}). '
          'Supply a base ref manually using --base-ref',
        );
      }
      final changes = repo.changes(baseRef, headRef);
      final commits = changes.commitsByPackage[package]?.toSet() ?? const {};
      final changelogUpdate = package.changelog.update(commits: commits);
      if (preview) {
        if (changelogUpdate.hasUpdate) {
          logger
            ..info('${package.name}\n')
            ..info(changelogUpdate.newText!);
        }
      } else {
        await File(p.join(package.path, 'CHANGELOG.md'))
            .writeAsString(changelogUpdate.toString());
      }
    }
  }
}

class _ChangelogPreviewCommand extends _ChangelogBaseCommand {
  @override
  String get description => 'Previews changelogs with the latest commit info';

  @override
  String get name => 'preview';

  @override
  Future<void> run() async {
    return _updateChangelogs(preview: true);
  }
}

class _ChangelogUpdateCommand extends _ChangelogBaseCommand {
  @override
  String get description => 'Updates changelogs with the latest commit info';

  @override
  String get name => 'update';

  @override
  Future<void> run() async {
    await _updateChangelogs(preview: false);

    logger.info('Changelogs successfully updated');
    if (yes || prompt('Commit changes? (y/N) ').toLowerCase() == 'y') {
      await runGit(['add', '.']);
      await runGit(['commit', '-m', 'chore(version): Update changelogs']);
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/deputy/post_update_task.dart';
import 'package:actions/src/logger.dart';
import 'package:actions/src/node/platform.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:node_io/node_io.dart';
import 'package:pub_semver/pub_semver.dart';

/// Scans for outdated Dart and Flutter dependencies and creates PRs for version updates.
Future<void> main() => wrapMain(_deputyScan);

/// The list of dependencies to never update.
const List<String> _doNotUpdate = [
  // TODO(aft): Remove when min Flutter SDK allows latest xml
  // Updating xml will require changes in smithy.
  'xml',

  // Bumping leads to mismatched `analyzer` constraint with `built_value_generator`
  // Must always match stable since it's what `dart format` uses.
  'dart_style',

  // Breaking change would need to be coordinated
  'uuid',
];

/// The groups of dependencies which should be updated together.
final List<DependencyUpdateGroup> updateGroups = [
  // Drift
  DependencyUpdateGroup.of(['drift', 'drift_dev']),

  // Code generation
  DependencyUpdateGroup.of([
    'built_value',
    'built_collection',
    'built_value_generator',
    'json_annotation',
    'json_serializable',
    'code_builder',
  ]),
];

Future<void> _deputyScan() async {
  final logger = AWSLogger().createChild('Deputy')
    ..unregisterAllPlugins()
    ..registerPlugin(const NodeLoggerPlugin());
  final deputy = await Deputy.create(
    dependencyGroups: updateGroups,
    fileSystem: nodeFileSystem,
    platform: nodePlatform,
    processManager: nodeProcessManager,
    logger: logger,
  );
  final updates = await core.withGroup(
    'Scan for Updates',
    deputy.scanForUpdates,
  );
  if (updates == null) {
    return core.info('No updates needed');
  }
  final git = NodeGitDir(deputy.repo.git);
  final existingPrs = await _listExistingPrs();
  final tmpDir = nodeFileSystem.systemTempDirectory.createTempSync('deputy');

  await allocateSwapSpace();

  // Create a PR for each dependency group which does not already have a PR.
  for (final MapEntry(key: dependencies, value: groupUpdates)
      in updates.toMap().entries) {
    final groupName = dependencies.join('+');
    final updatedConstraint = groupUpdates.first.updatedConstraint;
    await core.withGroup('Create PR for group "$groupName"', () async {
      if (dependencies.any(_doNotUpdate.contains)) {
        core.info(
          'Skipping "$groupName" since one of its dependencies are on the do-not-update list',
        );
        return;
      }

      // Update pubspecs for the dependency and commit changes to a new branch.
      //
      // We create a new worktree to stage changes so that we are not switching
      // branches for each group and interfering with the current checkout.
      core.info('Creating new worktree...');
      // TODO(dnys1): Fix
      // const baseBranch = 'origin/main';
      const baseBranch = 'origin/chore/aft-fixes';
      final constraint = updatedConstraint
          .toString()
          .replaceAll(_specialChars, '')
          .replaceAll(' ', '-');
      final branchName = 'chore/deps/$groupName-$constraint';
      final worktreeDir = nodeFileSystem.systemTempDirectory
          .createTempSync('worktree_$groupName')
          .path;
      await git.runCommand([
        'worktree',
        'add',
        worktreeDir,
        '-b',
        branchName,
        baseBranch,
      ]);
      final worktreeRepo = await Repo.load(
        path: worktreeDir,
        processManager: nodeProcessManager,
        fileSystem: nodeFileSystem,
        platform: nodePlatform,
        logger: logger,
      );
      final worktree = NodeGitDir(worktreeRepo.git);

      for (final groupUpdate in groupUpdates) {
        core.info('Updating pubspecs...');
        await groupUpdate.updatePubspecs(worktreeRepo);
      }

      core.info('Running post-update tasks...');
      final updatedPackages = groupUpdates
          .expand((groupUpdate) => groupUpdate.update.dependentPackages.keys)
          .toList();
      await PostUpdateTasks.runAll(
        worktreeRepo,
        dependencies,
        updatedPackages,
      );

      core.info('Diffing changes...');
      await worktree.runCommand(['diff']);

      core.info('Committing changes...');
      final commitTitle =
          '"chore(deps): Bump $groupName to $updatedConstraint"';
      await worktree.runCommand(['add', '-A']);
      await worktree.runCommand(['commit', '-m', commitTitle]);
      await worktree.runCommand(['push', '-f', '-u', 'origin', branchName]);

      // Create a PR for the changes using the `gh` CLI.
      core.info('Creating PR...');
      final prBody = '''
> **NOTE:** This PR was automatically created using the repo deputy.

Updated $groupName to `$updatedConstraint`

Updated-Group: $groupName
''';
      final tmpFile = tmpDir.childFile('pr_body_$groupName.txt')
        ..createSync()
        ..writeAsStringSync(prBody);
      final prResult = nodeProcessManager.runSync(
        <String>[
          'gh',
          'pr',
          'create',
          '--base=main',
          '--body-file=${tmpFile.path}',
          '--title=$commitTitle',
          '--draft',
        ],
        workingDirectory: worktreeDir,
      );
      if (prResult.exitCode != 0) {
        core.error(
          'Failed to create PR (${prResult.exitCode}): ${prResult.stderr}',
        );
        process.exitCode = 1;
        return;
      }

      // Close existing PR with comment pointing to new PR.
      final existingPr = existingPrs[groupName];
      if (existingPr == null) {
        return;
      }

      core.info('Closing existing PR...');
      final closeResult = nodeProcessManager.runSync(<String>[
        'gh',
        'pr',
        'close',
        '$existingPr',
        '--comment="Dependency has been updated. Closing in favor of new PR."',
      ]);
      if (closeResult.exitCode != 0) {
        core.error(
          'Failed to close existing PR. Will need to be closed manually: '
          'https://github.com/aws-amplify/amplify-flutter/pull/$existingPr',
        );
        process.exitCode = 1;
        return;
      }
    });
  }
}

/// Lists all Deputy PRs which currently exist in the repo with the PR number
/// and the constraint
Future<Map<String, int>> _listExistingPrs() async {
  final octokit = github.getOctokit(process.getEnv('GITHUB_TOKEN')!);
  return core.withGroup('Check for existing PRs', () async {
    final existingPrs = <String, int>{};
    final pulls = await octokit.rest.pulls.list();
    for (final pull in pulls) {
      final commitMessage =
          CommitMessage.parse('', pull.title, body: pull.body);
      final trailers = commitMessage.trailers;
      final groupName = trailers['Updated-Group'];
      if (groupName == null) {
        continue;
      }
      existingPrs[groupName] = pull.number;
    }
    core.info('Found existing PRs: $existingPrs');
    return existingPrs;
  });
}

/// Special characters which appear in stringified [VersionConstraint]s.
final _specialChars = RegExp(r'[\^<>=]');

extension type NodeGitDir(GitDir it) implements GitDir {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

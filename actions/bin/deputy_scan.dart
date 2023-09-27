// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/deputy/update_groups.dart';
import 'package:actions/src/logger.dart';
import 'package:actions/src/node/platform.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:node_io/node_io.dart';
import 'package:pub_semver/pub_semver.dart';

/// Scans for outdated Dart and Flutter dependencies and creates PRs for version updates.
Future<void> main() => wrapMain(_deputyScan);

Future<void> _deputyScan() async {
  AWSLogger()
    ..unregisterAllPlugins()
    ..registerPlugin(const NodeLoggerPlugin());
  final logger = AWSLogger().createChild('Deputy');
  final deputy = await Deputy.create(
    dependencyGroups: DependencyUpdateGroup.all,
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

  await allocateSwapSpace();

  final existingPrs = await _listExistingPrs();
  await _createPrs(deputy.repo, existingPrs, updates);
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
      final groupName = trailers[_groupTrailer];
      if (groupName == null) {
        continue;
      }
      existingPrs[groupName] = pull.number;
    }
    core.info('Found existing PRs: $existingPrs');
    return existingPrs;
  });
}

/// Creates a PR for each dependency group, updating existing PRs if they exist.
Future<void> _createPrs(
  Repo repo,
  Map<String, int> existingPrs,
  Map<String, DependencyGroupUpdate> updates,
) async {
  core.info('Creating PRs for update groups: $updates');
  final git = NodeGitDir(repo.git);
  final tmpDir = nodeFileSystem.systemTempDirectory.createTempSync('deputy');
  for (final MapEntry(key: groupName, value: group) in updates.entries) {
    // If the group updates all deps to a unique constraint, use that in messages.
    final uniqueConstraint =
        group.updatedConstraints.values.toSet().singleOrNull;
    await core.withGroup('Create PR for group "$groupName"', () async {
      if (group.dependencies.any(doNotUpdate.contains)) {
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
      var branchName = 'chore/deps/$groupName';
      if (uniqueConstraint != null) {
        final constraint = uniqueConstraint
            .toString()
            .replaceAll(_specialChars, '')
            .replaceAll(' ', '-');
        branchName += '-$constraint';
      } else {
        branchName += '-${DateTime.now().millisecondsSinceEpoch}';
      }
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
        logger: repo.logger,
      );
      final worktree = NodeGitDir(worktreeRepo.git);

      core.info('Updating pubspecs...');
      await group.updatePubspecs(worktreeRepo);

      core.info('Running post-update tasks...');
      await group.runPostUpdateTasks(worktreeRepo);

      core.info('Diffing changes...');
      await worktree.runCommand(['diff']);

      core.info('Committing changes...');
      final groupToken = group.dependencies.length == 1 ? '' : 'group ';
      var commitTitle = 'chore(deps): Bump $groupToken$groupName';
      if (uniqueConstraint != null) {
        commitTitle += ' to $uniqueConstraint';
      }
      await worktree.runCommand(['add', '-A']);
      await worktree.runCommand(['commit', '-m', commitTitle]);
      await worktree.runCommand(['push', '-f', '-u', 'origin', branchName]);

      // Skip creating a new PR when one already exists.
      //
      // Force pushing above will have updated the existing PR already.
      if (existingPrs[groupName] case final existingPr?) {
        core.info(
          'Skipping PR creation. PR already exists at: '
          'https://github.com/aws-amplify/amplify-flutter/pull/$existingPr',
        );
        return;
      }

      // Create a PR for the changes using the `gh` CLI.
      core.info('Creating PR...');
      final constraintUpdates = group.updatedConstraints.entries
          .map(
            (entry) => '- Updated `${entry.key}` to `${entry.value}`',
          )
          .join('\n');
      final prBody = '''
> **NOTE:** This PR was automatically created using the repo deputy.

$constraintUpdates

$_groupTrailer: $groupName
''';
      final tmpFile = tmpDir.childFile('pr_body_$groupName.txt')
        ..createSync()
        ..writeAsStringSync(prBody);
      final prResult = await nodeProcessManager.run(
        <String>[
          'gh',
          'pr',
          'create',
          '--base=main',
          '--body-file=${tmpFile.path}',
          '--title=$commitTitle',
          '--draft', // FIXME: Remove
        ],
        echoOutput: true,
        workingDirectory: worktreeDir,
      );
      if (prResult.exitCode != 0) {
        core.error(
          'Failed to create PR (${prResult.exitCode}): ${prResult.stderr}',
        );
        process.exit(prResult.exitCode);
      }
    });
  }
}

/// Special characters which appear in stringified [VersionConstraint]s.
final _specialChars = RegExp(r'[\^<>=]');

/// Trailer key for the group being updated.
const _groupTrailer = 'Updated-Group';

extension type NodeGitDir(GitDir it) implements GitDir {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

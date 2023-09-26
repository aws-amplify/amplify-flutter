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
];

Future<void> _deputyScan() async {
  final logger = AWSLogger().createChild('Deputy')
    ..unregisterAllPlugins()
    ..registerPlugin(const NodeLoggerPlugin());
  final deputy = await Deputy.create(
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
  final currentHead = await git.revParse('HEAD');
  core.info('Current HEAD: $currentHead');

  // Create a PR for each dependency group which does not already have a PR.
  for (final MapEntry(key: dependencyName, value: groupUpdate)
      in updates.entries) {
    await core.withGroup('Create PR for "$dependencyName"', () async {
      if (_doNotUpdate.contains(dependencyName)) {
        core.info('Skipping "$dependencyName" since it\'s on the do-not-update list');
        return;
      }
      core.info('Resetting to current HEAD...');
      await git.runCommand(['checkout', currentHead]);
      final updatedConstraint = groupUpdate.updatedConstraint;
      int? closeExisting;
      if (existingPrs[dependencyName] case (final prNumber, final constraint)) {
        if (constraint == updatedConstraint) {
          core.info(
            'Skipping "$dependencyName". PR already exists for same update ($constraint): '
            'https://github.com/aws-amplify/amplify-flutter/pull/$prNumber',
          );
          return;
        }

        // Close existing PR after new PR is created
        closeExisting = prNumber;
      }

      // Update pubspecs for the dependency and commit changes to a new branch.
      //
      // We create a new worktree to stage changes so that we are not switching
      // branches for each group and interfering with the current checkout.
      core.info('Creating new worktree...');
      const baseBranch = 'origin/main';
      final constraint = updatedConstraint
          .toString()
          .replaceAll(_specialChars, '')
          .replaceAll(' ', '-');
      final branchName = 'chore/deps/$dependencyName-$constraint';
      final worktreeDir = nodeFileSystem.systemTempDirectory
          .createTempSync('worktree_$dependencyName')
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

      core.info('Updating pubspecs...');
      await groupUpdate.updatePubspecs(worktreeRepo);

      core.info('Running post-update tasks...');
      final updatedPackages = groupUpdate.group.dependentPackages.keys.toList();
      await PostUpdateTasks.runAll(
        worktreeRepo,
        dependencyName,
        updatedPackages,
      );

      core.info('Diffing changes...');
      await worktree.runCommand(['diff']);

      core.info('Committing changes...');
      final commitTitle =
          '"chore(deps): Bump $dependencyName to `$updatedConstraint`';
      await worktree.runCommand(['add', '-A']);
      await worktree.runCommand(['commit', '-m', commitTitle]);
      await worktree.runCommand(['push', '-f', '-u', 'origin', branchName]);

      // Create a PR for the changes using the `gh` CLI.
      core.info('Creating PR...');
      final prBody = '''
> **NOTE:** This PR was automatically created using the repo deputy.

Updated $dependencyName to `$updatedConstraint`

Updated-Dependency: $dependencyName
Updated-Constraint: $updatedConstraint
''';
      final tmpFile = tmpDir.childFile('pr_body_$dependencyName.txt')
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
      if (closeExisting == null) {
        return;
      }

      core.info('Closing existing PR...');
      final closeResult = nodeProcessManager.runSync(<String>[
        'gh',
        'pr',
        'close',
        '$closeExisting',
        '--comment="Dependency has been updated. Closing in favor of new PR."',
      ]);
      if (closeResult.exitCode != 0) {
        core.error(
          'Failed to close existing PR. Will need to be closed manually: '
          'https://github.com/aws-amplify/amplify-flutter/pull/$closeExisting',
        );
        process.exitCode = 1;
        return;
      }
    });
  }
}

/// Lists all Deputy PRs which currently exist in the repo with the PR number
/// and the constraint
Future<Map<String, _ExistingPr>> _listExistingPrs() async {
  final octokit = github.getOctokit(process.getEnv('GITHUB_TOKEN')!);
  return core.withGroup('Check for existing PRs', () async {
    final existingPrs = <String, _ExistingPr>{};
    final pulls = await octokit.rest.pulls.list();
    for (final pull in pulls) {
      final commitMessage =
          CommitMessage.parse('', pull.title, body: pull.body);
      final trailers = commitMessage.trailers;
      final dependencyName = trailers['Updated-Dependency'];
      final constraintStr = trailers['Updated-Constraint'];
      if (dependencyName == null || constraintStr == null) {
        continue;
      }
      final constraint = VersionConstraint.parse(constraintStr);
      existingPrs[dependencyName] = (pull.number, constraint);
    }
    core.info('Found existing PRs: $existingPrs');
    return existingPrs;
  });
}

typedef _ExistingPr = (int prNumber, VersionConstraint constraint);

/// Special characters which appear in stringified [VersionConstraint]s.
final _specialChars = RegExp(r'[\^<>=]');

extension type NodeGitDir(GitDir it) implements GitDir {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

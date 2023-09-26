// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
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
  final logger = AWSLogger().createChild('Deputy')
    ..unregisterAllPlugins()
    ..registerPlugin(const NodeLoggerPlugin());
  final deputy = await Deputy.create(
    fileSystem: nodeFileSystem,
    platform: const NodePlatform(),
    processManager: processManager,
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
  for (final MapEntry(key: dependencyName, value: groupUpdate)
      in updates.entries) {
    await core.withGroup('Create PR for "$dependencyName"', () async {
      final updatedConstraint = groupUpdate.updatedConstraint;
      int? closeExisting;
      if (existingPrs[dependencyName] case (final prNumber, final constraint)) {
        if (constraint == updatedConstraint) {
          core.info(
            'Skipping "$dependencyName". PR already exists: '
            'https://github.com/aws-amplify/amplify-flutter/pull/$prNumber',
          );
          return;
        }

        // Close existing PR after new PR is created
        closeExisting = prNumber;
      }

      // Update pubspecs for the dependency and commit changes to a new branch.
      core.info('Updating pubspecs...');
      await groupUpdate.updatePubspecs();

      core.info('Diffing changes...');
      await git.runCommand(['diff']);

      core.info('Committing changes...');
      final currentHead = await git.revParse('HEAD', options: ['--abbrev-ref']);
      const baseBranch = 'origin/main';
      final constraint = updatedConstraint
          .toString()
          .replaceAll(_specialChars, '')
          .replaceAll(' ', '-');
      final branchName = 'chore/deps/$dependencyName-$constraint';
      final commitTitle =
          '"chore(deps): Bump $dependencyName to $updatedConstraint"';
      await git.runCommand(['switch', '-c', branchName, baseBranch]);
      await git.runCommand(['add', '-A']);
      await git.runCommand(['commit', '-m', commitTitle]);
      await git.runCommand(['push', '-u', 'origin', branchName]);
      await git.runCommand(['checkout', currentHead]);

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
      final prResult = processManager.runSync(<String>[
        'gh',
        'pr',
        'create',
        '--base=main',
        '--body-file=${tmpFile.path}',
        '--title=$commitTitle',
        '--draft',
      ]);
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
      final closeResult = processManager.runSync(<String>[
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
      final pkgTrailer = commitMessage.trailers['Updated-Dependency'];
      final constraintTrailer = commitMessage.trailers['Updated-Constraint'];
      if (pkgTrailer == null || constraintTrailer == null) {
        continue;
      }
      final constraint = VersionConstraint.parse(constraintTrailer);
      existingPrs[pkgTrailer] = (pull.number, constraint);
    }
    core.info('Found existing PRs: $existingPrs');
    return existingPrs;
  });
}

typedef _ExistingPr = (int prNumber, VersionConstraint constraint);

final _specialChars = RegExp(r'[\^<>=]');

extension type NodeGitDir(GitDir it) implements GitDir {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

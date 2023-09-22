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
    deputy.scanAndUpdate,
  );
  if (updates == null) {
    return core.info('No updates needed');
  }
  final git = NodeGitDir(deputy.repo.git);
  await core.withGroup('Diff', () => git.runCommand(['diff']));
  await core.withGroup('Commit Changes', () async {
    final branchName = 'chore/deps/${DateTime.now().millisecondsSinceEpoch}';
    await git.runCommand(['checkout', '-b', branchName]);
    await git.runCommand(['add', '-A']);
    await git.runCommand([
      'commit',
      '-m',
      '"chore(deps): Bump dependencies"',
    ]);
    await git.runCommand(['push', '-u', 'origin', branchName]);
  });
  if (await _hasExistingPr()) {
    return;
  }
  await _createPr(git, updates);
}

Future<bool> _hasExistingPr() async {
  final octokit = github.getOctokit(process.getEnv('GITHUB_TOKEN')!);
  final existingPr = await core.withGroup('Check for existing PRs', () async {
    final pulls = await octokit.rest.pulls.list();
      for (final pull in pulls) {
      final commitMessage = CommitMessage.parse('', pull.title, body: pull.body);
      final trailer = commitMessage.trailers['Updated-Packages'];
      if (trailer != null) {
        return pull.number;
      }
    }
    return null;
  });
  if (existingPr != null) {
    core.info('Found existing PR: https://github.com/aws-amplify/amplify-flutter/pull/$existingPr');
  }
  return existingPr != null;
}

Future<void> _createPr(
  NodeGitDir git,
  Map<String, VersionConstraint> updates,
) async {
  await core.withGroup('Create PR', () async {
    final prBody = StringBuffer('''
> **NOTE:** This PR was automatically created using the repo's deputy action.

## Updates

''');
    for (final MapEntry(key: packageName, value: updatedConstraint)
        in updates.entries) {
      prBody.writeln('- Updated $packageName to `$updatedConstraint`');
    }
    prBody
      ..writeln()
      ..writeln('Updated-Packages: ${updates.keys.join(', ')}');
    final tmpFile = nodeFileSystem.systemTempDirectory
        .createTempSync('deputy')
        .childFile('pr_body.txt')
      ..createSync()
      ..writeAsStringSync(prBody.toString());
    final prResult = processManager.runSync(<String>[
      'gh',
      'pr',
      'create',
      '--base=main',
      '--body-file=${tmpFile.path}',
      '--title="chore(deps): Bump dependencies"',
      '--draft',
    ]);
    if (prResult.exitCode != 0) {
      core.setFailed(
        'Failed to create PR (${prResult.exitCode}): ${prResult.stderr}',
      );
    }
  });
}

extension type NodeGitDir(GitDir it) implements GitDir {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

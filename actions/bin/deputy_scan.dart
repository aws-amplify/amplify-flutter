// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/logger.dart';
import 'package:actions/src/node/platform.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:node_io/node_io.dart';

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
    await git.runCommand(['checkout', '-b', branchName, 'origin/main']);
    await git.runCommand(['add', '**/*.yaml']);
    await git.runCommand([
      'commit',
      '-m',
      '"chore(deps): Bump dependencies\n\nrequest-checks: true"',
    ]);
    await git.runCommand(['push', '-u', 'origin', branchName]);
  });
  await core.withGroup('Create PR', () async {
    final prBody = StringBuffer('''
> **NOTE:** This PR was automatically created using the repo's deputy action.

## Updates

''');
    for (final MapEntry(key: packageName, value: updatedConstraint)
        in updates.entries) {
      prBody.writeln('- Updated $packageName to `$updatedConstraint`');
    }
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

extension type NodeGitDir(GitDir it) {
  Future<void> runCommand(List<String> args) => it.runCommand(
    args, 
    stdout: stdout.writeln, 
    stderr: stderr.writeln,
  );
}

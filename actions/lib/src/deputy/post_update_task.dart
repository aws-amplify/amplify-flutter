// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:path/path.dart' as p;

typedef PostUpdateTasks
    = Map<String, List<PostUpdateTask> Function(List<String> packages)>;

final PostUpdateTasks postUpdateTasks = {
  'built_value_generator': (packages) => [
        PostUpdateTask.buildRunner(packages),
      ],
  'json_serializable': (packages) => [
        PostUpdateTask.buildRunner(packages),
      ],
  'dart_style': (packages) => [
        const PostUpdateTask.aft(['generate', 'goldens']),
      ],
  'code_builder': (packages) => [
        const PostUpdateTask.aft(['generate', 'goldens']),
      ],
};

extension RunAllPostUpdateTasks on PostUpdateTasks {
  Future<void> runAll(
    Repo repo,
    String dependency,
    List<String> updatedPackages,
  ) async {
    final tasksBuilder = postUpdateTasks[dependency];
    if (tasksBuilder == null) {
      core.info('No tasks to run.');
      return;
    }
    core.info('Running post-update tasks for "$dependency"');
    final tasks = tasksBuilder(updatedPackages);
    for (final task in tasks) {
      await task.run(repo);
    }
  }
}

/// A task to run once a dependency has been updated.
abstract base class PostUpdateTask {
  const PostUpdateTask();

  /// Runs `aft` with the given [args].
  const factory PostUpdateTask.aft(List<String> args) = _AftTask;

  /// Runs `build_runner` in [packages].
  const factory PostUpdateTask.buildRunner(List<String> packages) =
      _BuildRunnerTask;

  Future<void> _ensureAft(Repo repo) async {
    final workingDir = repo.rootDir.path;
    final aftDir = p.join(workingDir, 'packages', 'aft');
    core.info('Activating AFT in: $aftDir');
    final ProcessResult(
      :exitCode,
      :stdout,
      :stderr,
    ) = nodeProcessManager.runSync(
      <String>[
        'dart',
        'pub',
        'global',
        'activate',
        '-spath',
        aftDir,
      ],
      workingDirectory: repo.rootDir.path,
      runInShell: true,
    );
    if (exitCode != 0) {
      throw Exception('Could not activate AFT:\n$stdout\n$stderr');
    }

    // Link packages
    core.info('Linking packages...');
    await nodeProcessManager.run(
      <String>['aft', 'link'],
      workingDirectory: repo.rootDir.path,
      echoOutput: true,
    );
  }

  /// Runs the task in the given [repo].
  Future<void> run(Repo repo);
}

final class _AftTask extends PostUpdateTask {
  const _AftTask(this.args);

  final List<String> args;

  @override
  Future<void> run(Repo repo) async {
    await _ensureAft(repo);
    core.info('Running "aft ${args.join(' ')}"');
    final ProcessResult(:exitCode) = await nodeProcessManager.run(
      <String>['aft', ...args],
      echoOutput: true,
    );
    if (exitCode != 0) {
      throw ProcessException('aft', args);
    }
  }
}

/// Runs `build_runner` in each of the [packages].
final class _BuildRunnerTask extends PostUpdateTask {
  const _BuildRunnerTask(this.packages);

  final List<String> packages;

  @override
  Future<void> run(Repo repo) async {
    await _ensureAft(repo);
    for (final package in packages) {
      final packageInfo = repo.maybePackage(package);
      if (packageInfo == null) {
        continue;
      }
      core.info('Running build_runner in "$package"...');
      final upgradeRes = await nodeProcessManager.run(
        <String>[packageInfo.flavor.entrypoint, 'pub', 'upgrade'],
        workingDirectory: packageInfo.path,
        echoOutput: true,
      );
      if (upgradeRes.exitCode != 0) {
        throw Exception('Failed to run pub upgrade');
      }
      final runner = switch (packageInfo.flavor) {
        PackageFlavor.dart => ['dart'],
        PackageFlavor.flutter => ['flutter', 'pub'],
      };
      final buildRunnerRes = await nodeProcessManager.run(
        <String>[
          ...runner,
          'run',
          'build_runner',
          'build',
          '--delete-conflicting-outputs',
        ],
        workingDirectory: packageInfo.path,
        echoOutput: true,
      );
      if (buildRunnerRes.exitCode != 0) {
        throw Exception('Failed to run pub upgrade');
      }
    }
  }
}

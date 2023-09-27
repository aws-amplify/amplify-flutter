// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

enum PostUpdateTasks {
  builtValueGenerator(
    needsBuildRunner: true,
    needsSmithy: true,
  ),
  codeBuilder(
    needsBuildRunner: true,
    needsSmithy: true,
  ),
  dartStyle(
    needsBuildRunner: true,
    needsSmithy: true,
  ),
  driftDev(needsBuildRunner: true),
  jsonSerializable(needsBuildRunner: true);

  const PostUpdateTasks({
    this.needsBuildRunner = false,
    this.needsSmithy = false,
  });

  final bool needsBuildRunner;
  final bool needsSmithy;

  static PostUpdateTasks? of(String dependency) =>
      values.firstWhereOrNull((el) => el.name.snakeCase == dependency);

  static Future<void> runAll(
    Repo repo,
    DependencyUpdateGroup group,
    List<String> updatedPackages,
  ) async {
    final tasksBuilders = [
      for (final dependency in group) PostUpdateTasks.of(dependency),
    ].nonNulls;
    if (tasksBuilders.isEmpty) {
      core.info('No tasks to run.');
      return;
    }
    final groupName = group.join('+');
    core.info('Running post-update tasks for "$groupName"');
    final tasks = tasksBuilders
        .expand((builder) => builder.buildTasks(repo, updatedPackages))
        .toSet();
    for (final task in tasks) {
      await task.run(repo);
    }
  }

  List<PostUpdateTask> buildTasks(Repo repo, List<String> updatedPackages) {
    return [
      if (needsSmithy) ...[
        const PostUpdateTask.aft(['generate', 'goldens']),
        // FIXME: Could run SDK but it would also pull latest models currently
        // so, updates may be unrelated to dep update.
        //
        // Probably should have this run on a schedule before uncommenting this
        // or find a way to pin the SDK ref so running `generate sdk` does not
        // change the ref.
        // const PostUpdateTask.aft(['generate', 'sdk']),
      ],
      if (needsBuildRunner)
        PostUpdateTask.buildRunner([
          // Don't re-run for Smithy goldens
          if (needsSmithy)
            ...updatedPackages
                .map(repo.maybePackage)
                .nonNulls
                .where((pkg) => !pkg.isGoldensPackage)
                .map((pkg) => pkg.name)
          else
            ...updatedPackages,
        ]),
    ];
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
    final ProcessResult(:exitCode) = await nodeProcessManager.run(
      <String>[
        'dart',
        'pub',
        'global',
        'activate',
        '-spath',
        aftDir,
      ],
      echoOutput: true,
      workingDirectory: repo.rootDir.path,
    );
    if (exitCode != 0) {
      throw Exception('Could not activate AFT');
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

/// Runs `aft` with the given [args].
final class _AftTask extends PostUpdateTask with AWSEquatable<_AftTask> {
  const _AftTask(this.args);

  final List<String> args;

  @override
  Future<void> run(Repo repo) async {
    await _ensureAft(repo);
    core.info('Running "aft ${args.join(' ')}" in "${repo.rootDir.path}');
    final ProcessResult(:exitCode) = await nodeProcessManager.run(
      <String>['aft', ...args],
      workingDirectory: repo.rootDir.path,
      echoOutput: true,
    );
    if (exitCode != 0) {
      throw ProcessException('aft', args);
    }
  }

  @override
  List<Object?> get props => [args];
}

/// Runs `build_runner` in each of the [packages].
final class _BuildRunnerTask extends PostUpdateTask
    with AWSEquatable<_BuildRunnerTask> {
  const _BuildRunnerTask(this.packages);

  final List<String> packages;

  @override
  Future<void> run(Repo repo) async {
    await _ensureAft(repo);
    for (final package in packages) {
      final packageInfo = repo.maybePackage(package);
      if (packageInfo == null || !packageInfo.needsBuildRunner) {
        continue;
      }
      core.info('Running build_runner in "${packageInfo.path}"...');
      final upgradeRes = await nodeProcessManager.run(
        <String>[packageInfo.flavor.entrypoint, 'pub', 'upgrade'],
        workingDirectory: packageInfo.path,
        echoOutput: true,
      );
      if (upgradeRes.exitCode != 0) {
        throw Exception('Failed to run pub upgrade');
      }
      final runner = switch (packageInfo.flavor) {
        PackageFlavor.dart => const ['dart'],
        PackageFlavor.flutter => const ['flutter', 'pub'],
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

  @override
  List<Object?> get props => [packages];
}

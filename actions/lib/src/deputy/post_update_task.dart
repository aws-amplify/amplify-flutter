// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

/// The groups of dependencies which should be updated together.
enum DependencyUpdateGroup {
  codeGeneration(
    needsBuildRunner: true,
    needsSmithy: true,
    dependencies: [
      'built_value',
      'built_collection',
      'built_value_generator',
      'json_annotation',
      'json_serializable',
      'code_builder',
    ],
  ),
  drift(
    needsBuildRunner: true,
    dependencies: ['drift', 'drift_dev'],
  );

  const DependencyUpdateGroup({
    required this.dependencies,
    this.needsBuildRunner = false,
    this.needsSmithy = false,
  });

  /// The list of dependencies in this group.
  final List<String> dependencies;

  /// Whether `build_runner` should be run in dependent packages after an update.
  final bool needsBuildRunner;

  /// Whether Smithy outputs need to be re-generated after an update.
  final bool needsSmithy;

  /// All groups mapped to their dependencies.
  static Map<String, List<String>> get all => {
        for (final value in values) value.name.snakeCase: value.dependencies,
      };

  /// Finds the group for the given [groupName].
  static DependencyUpdateGroup? of(String groupName) =>
      values.firstWhereOrNull((el) => el.name.snakeCase == groupName);

  /// Builds the list of post-update tasks for the group given the active [repo]
  /// and the set of [updatedPackages].
  List<PostUpdateTask> postUpdateTasks(
    Repo repo,
    Iterable<String> updatedPackages,
  ) {
    return [
      if (needsSmithy) ...[
        const PostUpdateTask.aft(['generate', 'goldens']),
        // FIXME: Could run SDK but it would also pull latest models currently
        // so, updates may be unrelated to dep update.
        //
        // Probably should have SDK gen run on a schedule before uncommenting this
        // or find a way to track the SDK ref so running `generate sdk` does not
        // necessarily pull the latest models (similar to goldens).
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

extension GroupPostUpdateTasks on DependencyGroupUpdate {
  /// Runs all post-update tasks for the group in [repo].
  Future<void> runPostUpdateTasks(Repo repo) async {
    final tasksBuilder = DependencyUpdateGroup.of(groupName);
    if (tasksBuilder == null) {
      core.info('No tasks to run.');
      return;
    }
    core.info('Running post-update tasks for "$groupName"');
    final updatedPackages = updatedConstraints.keys
        .expand((updatedDep) => updates[updatedDep]!.dependentPackages.keys)
        .toSet();
    final tasks = tasksBuilder.postUpdateTasks(repo, updatedPackages);
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
final class _AftTask extends PostUpdateTask {
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
}

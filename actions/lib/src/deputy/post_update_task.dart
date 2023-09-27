// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:aft_common/aft_common.dart';
import 'package:path/path.dart' as p;

/// A task to run once a dependency has been updated.
abstract interface class PostUpdateTask {
  /// Runs `aft` with the given [args].
  const factory PostUpdateTask.aft(List<String> args) = _AftTask;

  /// Runs `build_runner` in [packages].
  const factory PostUpdateTask.buildRunner(List<String> packages) =
      _BuildRunnerTask;

  /// Runs the task in the given [repo].
  Future<void> run(Repo repo);
}

/// Runs `aft` with the given [args].
final class _AftTask implements PostUpdateTask {
  const _AftTask(this.args);

  final List<String> args;

  @override
  Future<void> run(Repo repo) async {
    await repo.ensureAft();
    await repo.runAft(args);
  }
}

/// Runs `build_runner` in each of the [packages].
final class _BuildRunnerTask implements PostUpdateTask {
  const _BuildRunnerTask(this.packages);

  final List<String> packages;

  @override
  Future<void> run(Repo repo) async {
    await repo.ensureAft();
    core.info('Running build_runner in packages: $packages');
    await Future.wait(
      packages.map(repo.runBuildRunner),
      eagerError: true,
    );
  }
}

extension on Repo {
  /// Ensures that the `aft` executable is globally available for scripts
  /// which run after this.
  Future<void> ensureAft() async {
    final workingDir = rootDir.path;
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
      workingDirectory: workingDir,
    );
    if (exitCode != 0) {
      throw Exception('Could not activate AFT');
    }

    // Link packages
    core.info('Linking packages...');
    await nodeProcessManager.run(
      <String>['aft', 'link'],
      workingDirectory: workingDir,
      echoOutput: true,
    );
  }

  /// Runs `aft` with the given [args] from the repo's [rootDir].
  Future<void> runAft(List<String> args) async {
    final workingDir = rootDir.path;
    core.info('Running "aft ${args.join(' ')}" in "$workingDir"');
    final ProcessResult(:exitCode) = await nodeProcessManager.run(
      <String>['aft', ...args],
      workingDirectory: workingDir,
      echoOutput: true,
    );
    if (exitCode != 0) {
      throw ProcessException('aft', args, 'Exited with status', exitCode);
    }
  }

  /// Runs `build_runner` in [package] if it exists in this repo.
  Future<void> runBuildRunner(String package) async {
    final packageInfo = maybePackage(package);
    if (packageInfo == null || !packageInfo.needsBuildRunner) {
      return;
    }
    final workingDir = packageInfo.path;
    core.info('Running build_runner in "$workingDir"');
    final upgradeRes = await nodeProcessManager.run(
      <String>[packageInfo.flavor.entrypoint, 'pub', 'upgrade'],
      workingDirectory: workingDir,
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
      workingDirectory: workingDir,
      echoOutput: true,
    );
    if (buildRunnerRes.exitCode != 0) {
      throw Exception('Failed to run build_runner');
    }
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;

enum PermissionScope {
  readExecuteWrite('777'),
  readExecute('555');

  const PermissionScope(this.value);
  final String value;
}

class PluginConfig {
  const PluginConfig({
    required this.name,
    required this.remotePathToSource,
  });
  final String name;
  final String remotePathToSource;
}

/// Command for generating the Amplify Swift plugins for the DataStore plugin.
class GenerateAmplifySwiftCommand extends AmplifyCommand with GlobOptions {
  GenerateAmplifySwiftCommand() {
    argParser
      ..addOption(
        'branch',
        abbr: 'b',
        help: 'The branch of Amplify Swift to target',
        defaultsTo: 'release',
      )
      ..addOption(
        'output',
        abbr: 'o',
        help: 'The lib/-relative output directory for the plugins',
        defaultsTo: 'packages/amplify_datastore/ios/internal',
      )
      ..addFlag(
        'diff',
        abbr: 'd',
        help: 'Show the diff of the generated files',
        negatable: false,
        defaultsTo: false,
      );
  }

  @override
  String get description =>
      'Generates Amplify Swift DataStore for the DataStore plugin.';

  @override
  String get name => 'amplify-swift';

  @override
  bool get hidden => true;

  /// The branch of Amplify Swift to target.
  ///
  /// If not provided, defaults to `release`.
  late final branchTarget = argResults!['branch'] as String? ?? 'release';

  /// The lib/-relative output path for the generated plugins.
  late final outputPath = argResults!['output'] as String? ??
      'packages/amplify_datastore/ios/internal';

  /// Whether to check the diff of the generated files.
  /// If not provided, defaults to `false`.
  late final isDiff = argResults!['diff'] as bool? ?? false;

  /// Cache of repos by git ref.
  final _repoCache = <String, Directory>{};
  final _cloneMemo = AsyncMemoizer<Directory>();

  final _amplifySwiftPlugins = [
    const PluginConfig(
      name: 'AWSDataStorePlugin',
      remotePathToSource: 'AmplifyPlugins/DataStore/Sources/AWSDataStorePlugin',
    ),
    const PluginConfig(
      name: 'AWSPluginsCore',
      remotePathToSource: 'AmplifyPlugins/Core/AWSPluginsCore',
    ),
    const PluginConfig(
      name: 'Amplify',
      remotePathToSource: 'Amplify',
    ),
  ];

  /// Downloads Amplify Swift from GitHub into a temporary directory.
  Future<Directory> _downloadRepository() => _cloneMemo.runOnce(() async {
        final cloneDir =
            await Directory.systemTemp.createTemp('amplify_swift_');
        logger
          ..info('Downloading Amplify Swift...')
          ..verbose('Cloning repo to ${cloneDir.path}');
        await runGit(
          [
            'clone',
            // https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/
            '--filter=tree:0',
            'https://github.com/aws-amplify/amplify-swift.git',
            cloneDir.path,
          ],
          echoOutput: verbose,
        );
        logger.info('Successfully cloned Amplify Swift Repo');
        return cloneDir;
      });

  /// Checks out [ref] in [pluginDir].
  Future<Directory> _checkoutRepositoryRef(
    Directory pluginDir,
    String ref,
  ) async {
    logger
      ..info('Checking out target branch: $ref')
      ..verbose('Creating git work tree in $pluginDir');
    final worktreeDir =
        await Directory.systemTemp.createTemp('amplify_swift_worktree_');
    try {
      await runGit(
        ['worktree', 'add', worktreeDir.path, ref],
        processWorkingDir: pluginDir.path,
      );
    } on Exception catch (e) {
      if (e.toString().contains('already checked out')) {
        return pluginDir;
      }
      rethrow;
    }
    return worktreeDir;
  }

  /// Sets up the Amplify Swift repo for use later
  Future<void> _setupRepo() async {
    if (_repoCache[branchTarget] != null) {
      return;
    }
    Directory repoDir;
    repoDir = await _downloadRepository();
    repoDir = await _checkoutRepositoryRef(repoDir, branchTarget);

    _repoCache[branchTarget] = repoDir;
  }

  /// Returns the directory for the plugin at [path].
  Future<Directory> _pluginDirForPath(String path) async {
    final repoDir = _repoCache[branchTarget];
    if (repoDir == null) {
      exitError('No cached repo for branch $branchTarget');
    }

    return Directory.fromUri(
      repoDir.uri.resolve(path),
    );
  }

  /// Generates the Amplify Swift plugin for [plugin].
  Future<void> _generatePlugin(PluginConfig plugin) async {
    logger.info('Selecting source files for ${plugin.name}...');

    final repoDir = await _pluginDirForPath(plugin.remotePathToSource);

    final outputDir = Directory(p.join(outputPath, plugin.name));

    // Clear out the directory if it already exists.
    // This is to ensure that we don't have any stale files.
    if (await outputDir.exists()) {
      logger.verbose(
        'Clearing out existing plugin directory for ${plugin.name}...',
      );
      await _setPermissions(outputDir.path, PermissionScope.readExecuteWrite);
      await outputDir.delete(recursive: true);
    }
    await outputDir.create(recursive: true);

    // Copy the files from the repo to the plugin directory.
    logger
      ..info('Copying plugin files for ${plugin.name}...')
      ..verbose('From $repoDir to $outputDir');
    await copyPath(repoDir.path, outputDir.path);
    await _setPermissions(outputDir.path, PermissionScope.readExecute);
  }

  Future<void> checkDiff(PluginConfig plugin) async {
    logger.info('Checking diff for ${plugin.name}...');
    final incoming = (await _pluginDirForPath(plugin.remotePathToSource)).path;
    // Set the permissions of the incoming files to readExecute (fails otherwise)
    await _setPermissions(incoming, PermissionScope.readExecute);
    final current = '$outputPath/${plugin.name}';
    final diffCmd = await Process.start(
      'git',
      [
        'diff',
        '--no-index',
        '--exit-code',
        incoming,
        current,
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
    );
    final exitCode = await diffCmd.exitCode;
    if (exitCode != 0) {
      exitError(
        '`diff` failed: $exitCode. There are differences between $incoming and $current',
      );
    }
    logger.info(
      'No differences between incoming and current for ${plugin.name}.',
    );
  }

  /// Sets the permissions of all files in [path]  to
  Future<void> _setPermissions(String path, PermissionScope scope) async {
    const scope = '777';
    logger.verbose('Setting files in $path to $scope...');
    final readOnlyCmd = await Process.start(
      'chmod',
      [
        '-R',
        scope,
        path,
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
    );
    final exitCode = await readOnlyCmd.exitCode;
    if (exitCode != 0) {
      exitError('`pod install` failed: $exitCode.');
    }
  }

  /// Runs pod install after copying files to the plugin directory.
  Future<void> _podInstall() async {
    logger.info('Running pod install in datastore/example/ios...');

    final podInstallCmd = await Process.start(
      'pod',
      [
        'install',
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
      workingDirectory: 'packages/amplify_datastore/example/ios',
    );
    final exitCode = await podInstallCmd.exitCode;
    if (exitCode != 0) {
      exitError('`pod install` failed: $exitCode.');
    }
  }

  Future<void> _runDiff() async {
    await _setupRepo();
    for (final plugin in _amplifySwiftPlugins) {
      await checkDiff(plugin);
    }
    logger.info(
      'Successfully checked diff for Amplify Swift plugins',
    );
  }

  Future<void> _runGenerate() async {
    await _setupRepo();
    for (final plugin in _amplifySwiftPlugins) {
      await _generatePlugin(plugin);
    }
    await _podInstall();
    logger.info('Successfully generated Amplify Swift plugins');
  }

  @override
  Future<void> run() async {
    await super.run();
    switch (isDiff) {
      case true:
        await _runDiff();
      default:
        await _runGenerate();
        break;
    }
  }
}

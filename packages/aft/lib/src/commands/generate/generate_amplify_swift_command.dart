// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:git/git.dart';
import 'package:io/io.dart';
import 'package:path/path.dart' as p;

class PluginConfig {
  const PluginConfig({
    required this.name,
    required this.remotePathToSource,
  });

  /// The name of the plugin.
  final String name;

  /// The path to the plugin source files in the Amplify Swift repo.
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
  late final branchTarget = argResults!['branch'] as String;

  late final _dataStoreRootDir =
      p.join(rootDir.path, 'packages/amplify_datastore');

  final _pluginOutputDir = 'ios/internal';
  final _exampleOutputDir = 'example/ios';

  /// Whether to check the diff of the generated files.
  /// If not provided, defaults to `false`.
  late final isDiff = argResults!['diff'] as bool;

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

  final _importsToRemove = [
    'import Amplify',
    'import AWSPluginsCore',
    'import AWSDataStorePlugin',
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

  /// Find and replaces the `import` statements in the plugin files.
  Future<void> _replaceImports(Directory pluginDir) async {
    final files = await pluginDir.list(recursive: true).toList();
    for (final file in files) {
      if (file is! File) {
        continue;
      }
      // Only process Swift files.
      if (!file.path.endsWith('.swift')) {
        continue;
      }
      final contents = await file.readAsString();
      // remove the list of import statement for Amplify including line breaks
      final newContents = contents.split('\n').where((line) {
        return !_importsToRemove.any((import) => line.contains(import));
      }).join('\n');
      await file.writeAsString(newContents);
    }
  }

  /// Remove `info.plist` from the plugin files.
  Future<void> _removePListFiles(Directory pluginDir) async {
    final files = await pluginDir.list(recursive: true).toList();
    for (final file in files) {
      if (file is! File) {
        continue;
      }
      // Only process Info.plist files.
      if (!file.path.endsWith('Info.plist')) {
        continue;
      }
      await file.delete();
    }
  }

  /// Transforms the plugin files to Amplify Flutter requirements.
  Future<void> _transformPlugin(Directory directory) async {
    logger
      ..info('Transforming plugin files...')
      ..verbose('In ${directory.path}');
    await _replaceImports(directory);
    await _removePListFiles(directory);
  }

  /// Sets up the Amplify Swift repo for use later
  Future<void> _setupRepo() async {
    if (_repoCache[branchTarget] != null) {
      return;
    }
    final repoDir = await _downloadRepository();
    final repoRef = await _checkoutRepositoryRef(repoDir, branchTarget);

    _repoCache[branchTarget] = repoRef;
  }

  /// Returns the directory for the plugin at [path].
  Future<Directory> _pluginDirForPath(String path) async {
    final repoDir = _repoCache[branchTarget];
    if (repoDir == null) {
      exitError('No cached repo for branch $branchTarget');
    }

    final pluginDir = Directory.fromUri(
      repoDir.uri.resolve(path),
    );

    await _transformPlugin(pluginDir);

    return pluginDir;
  }

  /// Generates the Amplify Swift plugin for [plugin].
  Future<void> _generatePlugin(PluginConfig plugin) async {
    logger.info('Selecting source files for ${plugin.name}...');

    // The directory in the Amplify Swift repo where the plugin source files are.
    final remotePluginDir = await _pluginDirForPath(plugin.remotePathToSource);

    // The local directory to copy the plugin files to.
    final outputDir = Directory(
      p.join(_dataStoreRootDir, _pluginOutputDir, plugin.name),
    );

    // Clear out the directory if it already exists.
    // This is to ensure that we don't have any stale files.
    if (await outputDir.exists()) {
      logger.info(
        'Deleting existing plugin directory for ${plugin.name}...',
      );
      await outputDir.delete(recursive: true);
    }
    await outputDir.create(recursive: true);

    // Copy the files from the repo to the plugin directory.
    logger
      ..info('Copying plugin files for ${plugin.name}...')
      ..verbose('From $remotePluginDir to $outputDir');
    await copyPath(remotePluginDir.path, outputDir.path);
  }

  Future<void> checkDiff(PluginConfig plugin) async {
    logger.info('Checking diff for ${plugin.name}...');
    final incoming = (await _pluginDirForPath(plugin.remotePathToSource)).path;
    final current = p.join(_dataStoreRootDir, _pluginOutputDir, plugin.name);
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

  /// Runs pod install after copying files to the plugin directory.
  Future<void> _podInstall() async {
    final podFilePath = p.join(_dataStoreRootDir, _exampleOutputDir);
    logger.verbose('Running pod install in $podFilePath...');

    final podInstallCmd = await Process.start(
      'pod',
      [
        'install',
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
      workingDirectory: podFilePath,
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
    logger.info('Generating Amplify Swift plugins.');
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

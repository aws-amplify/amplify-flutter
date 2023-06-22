// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:collection/collection.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:stream_transform/stream_transform.dart';

/// Command for generating the AWS SDK for a given package and `sdk.yaml` file.
class GenerateSdkCommand extends AmplifyCommand with GlobOptions {
  GenerateSdkCommand() {
    argParser
      ..addOption(
        'models',
        abbr: 'm',
        help: 'The path to the AWS SDK models',
      )
      ..addOption(
        'output',
        abbr: 'o',
        help: 'The lib/-relative output directory for the SDK',
        defaultsTo: 'src/sdk',
      )
      ..addOption(
        'package',
        abbr: 'p',
        help: 'The name of the package',
      );
  }

  @override
  String get description =>
      'Generates the AWS SDK for the current working directory';

  @override
  String get name => 'sdk';

  @override
  bool get hidden => true;

  /// The path to local Smithy models, if passed.
  late final modelsPath = argResults!['models'] as String?;

  /// The lib/-relative output path for the generated SDK.
  late final outputPath = argResults!['output'] as String;

  /// The package name to use in the generated SDK.
  ///
  /// If not provided, it will be read from the `pubspec.yaml`.
  late final packageName = argResults!['package'] as String?;

  /// Cache of organized models by git ref.
  final _modelsCache = <String, Directory>{};
  final _cloneMemo = AsyncMemoizer<Directory>();

  /// Downloads AWS models from GitHub into a temporary directory.
  Future<Directory> _downloadModels() => _cloneMemo.runOnce(() async {
        final cloneDir = await Directory.systemTemp.createTemp('models');
        logger
          ..info('Downloading models...')
          ..verbose('Cloning models to ${cloneDir.path}');
        await runGit(
          [
            'clone',
            'https://github.com/aws/aws-models.git',
            cloneDir.path,
          ],
          echoOutput: verbose,
        );
        logger.info('Successfully cloned models');
        return cloneDir;
      });

  /// Checks out [ref] in [modelsDir].
  Future<Directory> _checkoutModelsRef(Directory modelsDir, String ref) async {
    final worktreeDir =
        await Directory.systemTemp.createTemp('models_worktree_');
    try {
      await runGit(
        ['worktree', 'add', worktreeDir.path, ref],
        processWorkingDir: modelsDir.path,
      );
    } on Exception catch (e) {
      if (e.toString().contains('already checked out')) {
        return modelsDir;
      }
      rethrow;
    }
    return worktreeDir;
  }

  /// Organizes model files from [baseDir] into a new temporary directory.
  ///
  /// Returns the new directory.
  Future<Directory> _organizeModels(Directory baseDir) async {
    final modelsDir = await Directory.systemTemp.createTemp('models');
    logger.debug('Organizing models in ${modelsDir.path}');
    final services = baseDir.list(followLinks: false).whereType<Directory>();
    await for (final serviceDir in services) {
      final serviceName = p.basename(serviceDir.path);
      final artifacts = await serviceDir.list().whereType<Directory>().toList();
      final smithyDir = artifacts.firstWhereOrNull(
        (dir) => p.basename(dir.path) == 'smithy',
      );
      if (smithyDir == null) {
        continue;
      }
      final smithyModel = File(p.join(smithyDir.path, 'model.json'));
      final copyToPath = p.join(modelsDir.path, '$serviceName.json');
      logger.verbose('Copying $serviceName.json to $copyToPath');
      await smithyModel.copy(copyToPath);
    }
    return modelsDir;
  }

  Future<Directory> _modelsDirForRef(String ref) async {
    if (_modelsCache[ref] case final cachedDir?) {
      return cachedDir;
    }
    Directory modelsDir;
    if (modelsPath case final modelsPath?) {
      modelsDir = Directory(modelsPath);
      if (!await modelsDir.exists()) {
        exitError('Model directory ($modelsDir) does not exist');
      }
      modelsDir = await _checkoutModelsRef(modelsDir, ref);
      modelsDir = await _organizeModels(modelsDir);
    } else {
      modelsDir = await _downloadModels();
      modelsDir = await _checkoutModelsRef(modelsDir, ref);
      modelsDir = await _organizeModels(modelsDir);
    }
    return _modelsCache[ref] = modelsDir;
  }

  /// Generates the SDK for [package].
  Future<void> _generateForPackage(PackageInfo package) async {
    final configFile = File(p.join(package.path, 'sdk.yaml'));
    if (!await configFile.exists()) {
      return;
    }

    logger.info('Generating SDK for ${package.name}...');
    final configYaml = await configFile.readAsString();
    final config = checkedYamlDecode(configYaml, SdkConfig.fromJson);
    logger.verbose('Got config: $config');

    final outputDir = Directory(p.join(package.path, 'lib', outputPath));
    if (!await outputDir.exists()) {
      await outputDir.create(recursive: true);
    }

    final smithyModel = SmithyAstBuilder();

    final modelsDir = await _modelsDirForRef(config.ref);
    final models = modelsDir.list().whereType<File>();
    await for (final model in models) {
      final serviceName = p.basenameWithoutExtension(model.path);
      if (!config.apis.keys.contains(serviceName)) {
        continue;
      }
      final astJson = await model.readAsString();
      final ast = parseAstJson(astJson);

      smithyModel.shapes ??= ShapeMap({});
      smithyModel.shapes!.addAll(ast.shapes);
    }

    final smithyAst = smithyModel.build();
    var packageName = this.packageName;
    if (packageName == null) {
      // Read package name from pubspec.yaml
      final pubspecFile = File(p.join(package.path, 'pubspec.yaml'));
      final pubspecYaml = await pubspecFile.readAsString();
      final pubspec = Pubspec.parse(pubspecYaml, sourceUrl: pubspecFile.uri);
      packageName = pubspec.name;
    }

    final includeShapes = <ShapeId>[];
    for (final shapeIdEntries in config.apis.entries) {
      final shapeIds = shapeIdEntries.value;
      if (shapeIds != null && shapeIds.isNotEmpty) {
        includeShapes.addAll(shapeIds);
        continue;
      }

      final apiName = shapeIdEntries.key;
      final serviceShape = smithyModel.shapes!.values
          .whereType<ServiceShape>()
          .singleWhere(
            (service) =>
                service.expectTrait<ServiceTrait>().endpointPrefix == apiName,
          );
      includeShapes.addAll(serviceShape.operations.map((op) => op.target));
    }

    // Generate SDK for combined operations
    final output = generateForAst(
      smithyAst,
      packageName: packageName,
      basePath: outputPath,
      includeShapes: includeShapes,
    );

    final dependencies = <String>{};
    for (final library in output.values.expand((out) => out.libraries)) {
      final smithyLibrary = library.smithyLibrary;
      final outPath = p.join(
        package.path,
        'lib',
        smithyLibrary.libRelativePath,
      );
      final output = library.emit();
      dependencies.addAll(library.dependencies);
      final outFile = File(outPath);
      await outFile.create(recursive: true);
      await outFile.writeAsString(output);
    }

    for (final plugin in config.plugins) {
      logger.info('Running plugin $plugin...');
      final generatedShapes = ShapeMap(
        Map.fromEntries(
          output.values.expand((out) => out.context.shapes.entries),
        ),
      );
      final generatedAst = SmithyAst(
        (b) => b
          ..shapes = generatedShapes
          ..metadata.replace(smithyAst.metadata)
          ..version = smithyAst.version,
      );
      final pluginCmd = await Process.start(
        'dart',
        [
          plugin,
          jsonEncode(generatedAst),
        ],
        mode: ProcessStartMode.inheritStdio,
        workingDirectory: package.path,
      );
      final exitCode = await pluginCmd.exitCode;
      if (exitCode != 0) {
        exitError('`dart $plugin <AST>` failed: $exitCode.');
      }
    }

    // Run built_value generator
    logger.info('Running build_runner...');
    final buildRunnerCmd = await Process.start(
      'dart',
      [
        'run',
        'build_runner',
        'build',
        '--delete-conflicting-outputs',
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
      workingDirectory: package.path,
    );
    final exitCode = await buildRunnerCmd.exitCode;
    if (exitCode != 0) {
      exitError('`dart run build_runner build` failed: $exitCode.');
    }
  }

  @override
  Future<void> run() async {
    await super.run();
    if (commandPackages.isEmpty) {
      logger.info('Nothing to generate');
      return;
    }
    for (final package in commandPackages.values) {
      await _generateForPackage(package);
    }
    logger.info('Successfully generated SDK');
  }
}

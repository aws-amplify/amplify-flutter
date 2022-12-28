// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:collection/collection.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:stream_transform/stream_transform.dart';

/// Command for generating the AWS SDK for a given package and `sdk.yaml` file.
class GenerateSdkCommand extends AmplifyCommand {
  GenerateSdkCommand() {
    argParser
      ..addOption(
        'config',
        abbr: 'c',
        defaultsTo: 'sdk.yaml',
        help: 'The SDK configuration file',
      )
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

  /// Downloads AWS models from GitHub into a temporary directory.
  Future<Directory> _downloadModels(String ref) async {
    final cloneDir = await Directory.systemTemp.createTemp('models');
    logger.trace('Cloning models to ${cloneDir.path}');
    await runGit([
      'clone',
      'https://github.com/aws/aws-models.git',
      cloneDir.path,
    ]);
    await runGit(
      ['checkout', ref],
      processWorkingDir: cloneDir.path,
    );
    logger.trace('Successfully cloned models');
    return cloneDir;
  }

  /// Organizes model files from [baseDir] into a new temporary directory.
  ///
  /// Returns the new directory.
  Future<Directory> _organizeModels(Directory baseDir) async {
    final modelsDir = await Directory.systemTemp.createTemp('models');
    logger.trace('Organizing models in ${modelsDir.path}');
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
      logger.trace('Copying $serviceName.json to $copyToPath');
      await smithyModel.copy(copyToPath);
    }
    return modelsDir;
  }

  @override
  Future<void> run() async {
    final args = argResults!;
    final configFilepath = args['config'] as String;
    final configFile = File(configFilepath);
    if (!await configFile.exists()) {
      exitError('Config file ($configFilepath) does not exist');
    }

    final configYaml = await configFile.readAsString();
    final config = checkedYamlDecode(configYaml, SdkConfig.fromJson);
    logger.stdout('Got config: $config');

    final modelsPath = args['models'] as String?;
    final Directory modelsDir;
    if (modelsPath != null) {
      modelsDir = await _organizeModels(Directory(modelsPath));
      if (!await modelsDir.exists()) {
        exitError('Model directory ($modelsDir) does not exist');
      }
    } else {
      final cloneDir = await _downloadModels(config.ref);
      modelsDir = await _organizeModels(cloneDir);
    }

    final outputPath = args['output'] as String;
    final outputDir = Directory(p.join('lib', outputPath));
    if (!await outputDir.exists()) {
      await outputDir.create(recursive: true);
    }

    final smithyModel = SmithyAstBuilder();

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
    var packageName = args['package'] as String?;
    if (packageName == null) {
      // Read package name from pubspec.yaml
      final pubspecFile = File('pubspec.yaml');
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
      logger.stdout('Running plugin $plugin...');
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
        mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
      );
      final exitCode = await pluginCmd.exitCode;
      if (exitCode != 0) {
        exitError('`dart $plugin <AST>` failed: $exitCode.');
      }
    }

    // Run built_value generator
    final buildRunnerCmd = await Process.start(
      'dart',
      [
        'run',
        'build_runner',
        'build',
        '--delete-conflicting-outputs',
      ],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
    );
    final exitCode = await buildRunnerCmd.exitCode;
    if (exitCode != 0) {
      exitError('`dart run build_runner build` failed: $exitCode.');
    }

    logger
      ..stdout('Successfully generated SDK')
      ..trace('Make sure to add the following dependencies:');
    for (final dep in dependencies.toList()..sort()) {
      logger.trace('- $dep');
    }
  }
}

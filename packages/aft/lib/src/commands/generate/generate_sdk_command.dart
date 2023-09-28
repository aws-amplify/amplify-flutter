// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:code_builder/code_builder.dart';
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
        help: 'The path to the AWS JS V3 repo',
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
            // https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/
            '--filter=tree:0',
            'https://github.com/aws/aws-sdk-js-v3.git',
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
      // Checkout models if modelsPath is a git repository.
      if (Directory(p.join(modelsPath, '.git')).existsSync()) {
        modelsDir = await _checkoutModelsRef(modelsDir, ref);
      } else {
        logger.warn(
          'Unable to check out $ref since $modelsDir is not a git repo',
        );
      }
    } else {
      modelsDir = await _downloadModels();
      modelsDir = await _checkoutModelsRef(modelsDir, ref);
    }
    modelsDir = Directory.fromUri(
      modelsDir.uri.resolve('codegen/sdk-codegen/aws-models'),
    );
    return _modelsCache[ref] = modelsDir;
  }

  /// Generates the SDK for [package].
  Future<void> _generateForPackage(PackageInfo package) async {
    if (package.name == 'aws_common') {
      return _generateAwsConfig(package);
    }
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

    final smithyModel = SmithyAstBuilder()
      ..version = SmithyVersion.v2
      ..shapes = ShapeMap({});

    final modelsDir = await _modelsDirForRef(config.ref);
    final models = modelsDir.list().whereType<File>();
    await for (final model in models) {
      final astJson = await model.readAsString();
      final ast = parseAstJson(astJson);
      final serviceNamespace =
          ast.shapes.values.whereType<ServiceShape>().single.shapeId.namespace;
      if (!config.apis.containsKey(serviceNamespace)) {
        continue;
      }
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
    for (final MapEntry(key: namespace, value: operations)
        in config.apis.entries) {
      final serviceShape = smithyModel.shapes!.values
          .whereType<ServiceShape>()
          .singleWhere((service) => service.shapeId.namespace == namespace);
      final allOperations = serviceShape.operations.map((op) => op.target);
      final includeOperations = switch (operations) {
        List<String> _ when operations.isNotEmpty => operations.map(
            (op) => ShapeId(namespace: namespace, shape: op),
          ),
        _ => allOperations,
      };
      for (final operation in includeOperations) {
        if (!allOperations.contains(operation)) {
          throw Exception(
            'Invalid operation specified for $namespace: $operation',
          );
        }
      }
      includeShapes.addAll(includeOperations);
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

    // Run `pub upgrade` so that plugin packages are resolved.
    await linkPackages();
    await pubAction(arguments: ['upgrade'], package: package);

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
        [plugin],
        workingDirectory: package.path,
      );
      pluginCmd
        ..stdin.writeln(jsonEncode(generatedAst))
        ..captureStdout()
        ..captureStderr();
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

  /// Generates common AWS configuration files, e.g. `aws_service.dart`.
  Future<void> _generateAwsConfig(PackageInfo awsCommon) async {
    logger.info('Generating AWS configuration files...');
    const classDocs = '''
    /// The enumeration of AWS services.
    /// 
    /// This enumeration is used to configure the SigV4 signer. To use a service
    /// that is not listed here, call [AWSService.new] directly.''';
    final builder = LibraryBuilder();
    final awsService = ClassBuilder()
      ..name = 'AWSService'
      ..docs.add(classDocs)
      ..constructors.add(
        Constructor(
          (c) => c
            ..constant = true
            ..docs.add(
              '/// Creates a new [AWSService] instance which can be passed to a SigV4 signer.',
            )
            ..requiredParameters.addAll([
              Parameter(
                (p) => p
                  ..toThis = true
                  ..name = 'service',
              ),
            ]),
        ),
      )
      ..fields.addAll([
        Field(
          (f) => f
            ..modifier = FieldModifier.final$
            ..docs.add('/// The SigV4 service name, used in signing.')
            ..name = 'service'
            ..type = refer('String'),
        ),
      ]);

    final modelsDir = await _modelsDirForRef('main');
    final models = modelsDir.list().whereType<File>();
    final services = <Field>[];
    await for (final model in models) {
      final astJson = await model.readAsString();
      final ast = parseAstJson(astJson);
      final serviceShape = ast.shapes.values.whereType<ServiceShape>().single;
      final sigV4Trait = serviceShape.getTrait<SigV4Trait>();
      final serviceTrait = serviceShape.expectTrait<ServiceTrait>();
      final serviceName = serviceTrait.sdkId.camelCase;
      final sigV4Service = sigV4Trait?.name;
      if (sigV4Service == null) {
        logger.warn('Skipping $serviceName (no SigV4 service name)');
        continue;
      }
      final title = serviceShape.getTrait<TitleTrait>()?.value;
      logger.debug('Found AWS service "$serviceName"');
      services.add(
        Field(
          (f) => f
            ..static = true
            ..modifier = FieldModifier.constant
            ..docs.addAll([if (title != null) '/// $title'])
            ..name = serviceName
            ..assignment = refer('AWSService').constInstance([
              literalString(sigV4Service),
            ]).code,
        ),
      );
    }

    awsService.fields.addAll(
      services..sort((a, b) => a.name.compareTo(b.name)),
    );
    builder.body.add(awsService.build());

    final library = builder.build();
    final emitter = DartEmitter(
      allocator: Allocator(),
      orderDirectives: true,
      useNullSafetySyntax: true,
    );
    final code = '''
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with `aft generate sdk`. Do not modify by hand.

${library.accept(emitter)}
''';

    final output = File(
      p.join(
        awsCommon.path,
        'lib',
        'src',
        'config',
        'aws_service.dart',
      ),
    );
    await output.writeAsString(code);
    await Process.run(
      'dart',
      ['format', output.path],
      workingDirectory: awsCommon.path,
    );
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

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:file/local.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

const skipProtocols = [
  'shared',
];
const awsProtocols = [
  'awsJson1_0',
  'awsJson1_1',
  'awsQuery',
  'restJson1',
  'restXml',
  'restXmlWithNamespace'
];

/// Command for generating the AWS SDK for a given package and `sdk.yaml` file.
class GenerateGoldensCommand extends AmplifyCommand {
  GenerateGoldensCommand() {
    argParser.addFlag(
      'update',
      help: 'Whether to update test models from git',
      defaultsTo: false,
    );
  }

  @override
  String get name => 'goldens';

  @override
  String get description => 'Generates Smithy goldens';

  @override
  bool get hidden => true;

  late final goldensRoot = p.join(rootDir.path, 'packages/smithy/goldens');
  late final modelsPath = p.join(goldensRoot, 'models');
  late final update = argResults!['update'] as bool;

  String _replaceDirectory(String path, {bool create = false}) {
    final dir = Directory(path);
    if (dir.existsSync()) {
      dir.deleteSync(recursive: true);
    }
    if (create) {
      dir.createSync(recursive: true);
    }
    return path;
  }

  Future<void> _copy(String from, String to) async {
    final process = await Process.start(
      'cp',
      ['-R', from, to],
      mode: ProcessStartMode.inheritStdio,
      workingDirectory: goldensRoot,
    );
    if (await process.exitCode != 0) {
      stderr.writeln('Could not copy $from to $to');
      exit(1);
    }
  }

  /// Updates v2 models from git.
  ///
  /// v1 models are no longer committed to git and are fixed at the last commit
  /// in which they were updated.
  Future<void> updateModels() async {
    final smithyVersion = File(
      p.join(goldensRoot, 'smithy-version'),
    ).readAsStringSync().trim();
    const url = 'https://github.com/awslabs/smithy';
    final tmpDir = Directory.systemTemp.createTempSync('smithy');
    final process = await Process.start(
      'git',
      [
        'clone',
        '--depth=1',
        '--branch',
        smithyVersion,
        url,
        tmpDir.path,
      ],
      mode: ProcessStartMode.inheritStdio,
      workingDirectory: goldensRoot,
    );
    if (await process.exitCode != 0) {
      stderr.writeln('Could not clone $url');
      exit(1);
    }
    for (final protocol in awsProtocols) {
      final src = p.join(
        tmpDir.path,
        'smithy-aws-protocol-tests',
        'model',
        protocol,
      );
      final dest = _replaceDirectory(
        p.join(modelsPath, protocol),
      );
      await _copy(src, dest);
    }

    // Copy shared types
    final sharedPath = _replaceDirectory(
      p.join(modelsPath, 'shared'),
      create: true,
    );
    const sharedModels = [
      'aws-config.smithy',
      'shared-types.smithy',
    ];
    for (final sharedModel in sharedModels) {
      final sourcePath = p.join(
        tmpDir.path,
        'smithy-aws-protocol-tests',
        'model',
        sharedModel,
      );
      await _copy(sourcePath, sharedPath);
    }

    // Replace `coral` references
    final allModelFiles =
        Directory(modelsPath).listSync(recursive: true).whereType<File>();
    for (final file in allModelFiles) {
      final content = file.readAsStringSync();
      file.writeAsStringSync(content.replaceAll('coral', 'example'));
    }
  }

  Future<SmithyAst> _transform(
    SmithyVersion version,
    String modelPath, {
    required String protocolName,
    required Directory tempOutputs,
  }) async {
    stdout.writeln('Generating AST for $modelPath');

    final tempModel = File(
      p.join(tempOutputs.path, '${modelPath}_${version.name}.json'),
    );
    final result = await Process.run(
      './gradlew',
      [
        'run',
        '--args="$modelsPath" "${tempModel.path}" "$protocolName" "${version.name.toUpperCase()}"',
      ],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
      workingDirectory: goldensRoot,
    );
    if (result.exitCode != 0) {
      stderr
        ..write('Could not generate model for $modelPath: ')
        ..writeln(result.stdout)
        ..writeln(result.stderr);
      exit(result.exitCode);
    }

    final astJson = tempModel.readAsStringSync();
    return parseAstJson(astJson);
  }

  Future<void> _generateFor({
    required SmithyAst ast,
    required SmithyVersion version,
    required String protocolName,
  }) async {
    stdout
        .writeln('Generating Dart client for $protocolName (${version.name})');
    final outputPath = p.join(
      goldensRoot,
      version == SmithyVersion.v1 ? 'lib' : 'lib2',
      protocolName,
    );
    final dir = Directory(outputPath);
    if (dir.existsSync()) {
      dir.deleteSync(recursive: true);
    }

    final packageName = '${protocolName.snakeCase}_${version.name}';
    final outputs = generateForAst(
      ast,
      packageName: packageName,
      additionalShapes: const [
        ShapeId(namespace: 'aws.protocoltests.config', shape: 'AwsConfig'),
      ],
      generateServer: true,
    );

    final dependencies = <String>{};
    for (final library in outputs.values.expand((out) => out.libraries)) {
      final smithyLibrary = library.smithyLibrary;
      final outPath = p.join(outputPath, smithyLibrary.projectRelativePath);
      final output = library.emit();
      dependencies.addAll(library.dependencies);
      File(outPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(output);
    }

    // Create dummy pubspec
    final pubspecPath = p.join(outputPath, 'pubspec.yaml');
    final pubspec = Pubspec(packageName);
    final localSmithyPath = Directory(goldensRoot).uri.resolve('..').path;
    final pubspecYaml = PubspecGenerator(
      pubspec,
      dependencies,
      smithyPath: p.relative(localSmithyPath, from: outputPath),
    ).generate();
    File(pubspecPath).writeAsStringSync(pubspecYaml);

    // Create analysis options
    final analysisOptionsPath = p.join(outputPath, 'analysis_options.yaml');
    File(analysisOptionsPath).writeAsStringSync('''
include: package:lints/recommended.yaml

analyzer:
  errors:
    avoid_unused_constructor_parameters: ignore
    deprecated_member_use_from_same_package: ignore
    non_constant_identifier_names: ignore
''');

    // Create mono_pkg for testing
    final dartTestPath = p.join(outputPath, 'dart_test.yaml');
    File(dartTestPath).writeAsStringSync('''
override_platforms:
  firefox:
    settings:
      arguments: -headless
''');

    // Run `dart pub get`
    final pubGetRes = await Process.run(
      'dart',
      [
        'pub',
        'get',
      ],
      workingDirectory: outputPath,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (pubGetRes.exitCode != 0) {
      stderr
        ..write('`dart pub get` failed for $outputPath: ')
        ..writeln(pubGetRes.stdout)
        ..writeln(pubGetRes.stderr);
      exit(pubGetRes.exitCode);
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
      workingDirectory: outputPath,
    );
    buildRunnerCmd.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(stdout.writeln);
    buildRunnerCmd.stderr
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(stderr.writeln);
    final exitCode = await buildRunnerCmd.exitCode;
    if (exitCode != 0) {
      stderr.write(
        '`dart run build_runner build` failed for $outputPath: $exitCode.',
      );
      exit(exitCode);
    }
  }

  @override
  Future<void> run() async {
    await super.run();
    if (update) {
      await updateModels();
    }
    final glob =
        Glob(argResults!.rest.length == 1 ? argResults!.rest.single : '*');
    final futures = <Future<void> Function()>[];
    final entites = glob.listFileSystemSync(
      const LocalFileSystem(),
      root: modelsPath,
    );
    final tempOutputs = Directory.systemTemp.createTempSync('smithy_goldens_');
    for (final modelEnt in entites.whereType<Directory>()) {
      final modelPath = p.relative(modelEnt.path, from: modelsPath);
      final protocolName = p.basename(modelPath);
      if (skipProtocols.contains(protocolName)) {
        continue;
      }
      for (final version in SmithyVersion.values) {
        final ast = await _transform(
          version,
          modelPath,
          protocolName: protocolName,
          tempOutputs: tempOutputs,
        );
        futures.add(
          () => _generateFor(
            ast: ast,
            version: version,
            protocolName: protocolName,
          ),
        );
      }
    }
    await Future.wait<void>(futures.map((fut) => fut()));
  }
}

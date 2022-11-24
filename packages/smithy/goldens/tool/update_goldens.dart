// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:file/local.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

final modelsPath = {
  SmithyVersion.v1: path.join(Directory.current.path, 'models'),
  SmithyVersion.v2: path.join(Directory.current.path, 'models2'),
};
const skipProtocols = [
  'shared',
];

Future<void> main(List<String> args) async {
  final glob = Glob(args.length == 1 ? args[0] : '*');
  final futures = <Future>[];
  for (final version in SmithyVersion.values) {
    final entites = glob.listFileSystemSync(
      const LocalFileSystem(),
      root: modelsPath[version],
    );
    for (var modelEnt in entites) {
      if (modelEnt is! Directory) {
        continue;
      }
      futures.add(_generateFor(version, modelEnt));
    }
  }
  await Future.wait<void>(futures);
}

Future<void> _generateFor(
  SmithyVersion version,
  FileSystemEntity modelEnt,
) async {
  final modelPath = path.relative(modelEnt.path, from: modelsPath[version]);
  final protocolName = path.basename(modelPath);
  if (skipProtocols.contains(protocolName)) {
    return;
  }
  final outputPath = path.join(
    version == SmithyVersion.v1 ? 'lib' : 'lib2',
    protocolName,
  );
  final dir = Directory(outputPath);
  if (dir.existsSync()) {
    dir.deleteSync(recursive: true);
  }

  stdout.writeln('Generating AST for $modelPath');

  final String astJson;
  final preCompiled = File('${modelEnt.path}.json');
  if (preCompiled.existsSync()) {
    astJson = preCompiled.readAsStringSync();
  } else {
    final result = await Process.run(
      'docker',
      [
        'run',
        '--rm',
        '-v',
        '${modelsPath[version]}:/home/models',
        version == SmithyVersion.v1 ? 'smithy:1' : 'smithy:2',
        'ast',
        '-d',
        '/smithy/lib/traits',
        '/home/models/shared',
        '/home/models/$modelPath',
      ],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (result.exitCode != 0) {
      stderr.write('Could not generate model for $modelPath: ');
      stderr.writeln(result.stdout);
      stderr.writeln(result.stderr);
      exit(result.exitCode);
    }
    astJson = result.stdout as String;
  }

  final packageName = '${protocolName.snakeCase}_${version.name}';
  final ast = parseAstJson(astJson);

  final libraries = generateForAst(
    ast,
    packageName: packageName,
    additionalShapes: const [
      ShapeId(namespace: 'aws.protocoltests.config', shape: 'AwsConfig'),
    ],
    generateServer: true,
  );

  final Set<String> dependencies = {};
  for (var library in libraries) {
    final smithyLibrary = library.smithyLibrary;
    final outPath = path.join(outputPath, smithyLibrary.projectRelativePath);
    final output = library.emit();
    dependencies.addAll(library.dependencies);
    File(outPath)
      ..createSync(recursive: true)
      ..writeAsStringSync(output);
  }

  // Create dummy pubspec
  final pubspecPath = path.join(outputPath, 'pubspec.yaml');
  final pubspec = Pubspec(packageName);
  final localSmithyPath = Directory.current.uri.resolve('..').path;
  final pubspecYaml = PubspecGenerator(
    pubspec,
    dependencies,
    smithyPath: path.relative(localSmithyPath, from: outputPath),
  ).generate();
  File(pubspecPath).writeAsStringSync(pubspecYaml);

  // Create analysis options
  final analysisOptionsPath = path.join(outputPath, 'analysis_options.yaml');
  File(analysisOptionsPath).writeAsStringSync('''
include: package:lints/recommended.yaml

analyzer:
  errors:
    avoid_unused_constructor_parameters: ignore
    non_constant_identifier_names: ignore
''');

  // Create mono_pkg for testing
  final dartTestPath = path.join(outputPath, 'dart_test.yaml');
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
    stderr.write('`dart pub get` failed for $outputPath: ');
    stderr.writeln(pubGetRes.stdout);
    stderr.writeln(pubGetRes.stderr);
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

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

import 'package:args/args.dart';
import 'package:aws_common/aws_common.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';

part 'generate_sdk.g.dart';

Future<void> main(List<String> arguments) async {
  final parser = ArgParser();

  parser.addOption(
    'config',
    abbr: 'c',
    defaultsTo: 'sdk.yaml',
    help: 'The SDK configuration file',
  );

  parser.addOption(
    'models',
    abbr: 'm',
    help: 'The path to the AWS SDK models',
    mandatory: true,
  );

  parser.addOption(
    'output',
    abbr: 'o',
    help: 'The lib/-relative output directory for the SDK',
    defaultsTo: 'src/sdk',
  );

  parser.addOption(
    'package',
    abbr: 'p',
    help: 'The name of the package',
  );

  final args = parser.parse(arguments);
  final configFilepath = args['config'] as String;
  final configFile = File(configFilepath);
  if (!configFile.existsSync()) {
    exitError('Config file ($configFilepath) does not exist');
  }

  final modelsPath = args['models'] as String;
  final modelsDir = Directory(modelsPath);
  if (!modelsDir.existsSync()) {
    exitError('Model directory ($modelsDir) does not exist');
  }

  final outputPath = args['output'] as String;
  final outputDir = Directory(path.join('lib', outputPath));
  if (!outputDir.existsSync()) {
    await outputDir.create(recursive: true);
  }

  final configYaml = await configFile.readAsString();
  final config = checkedYamlDecode(configYaml, SdkConfig.fromJson);
  stdout.writeln('Got config: $config');

  final smithyModel = SmithyAstBuilder();

  final models = modelsDir.listSync().whereType<File>();
  for (final model in models) {
    final serviceName = path.basenameWithoutExtension(model.path);
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

  // Generate SDK for combined operations
  final libraries = generateForAst(
    smithyAst,
    packageName: packageName,
    basePath: outputPath,
    includeShapes: [
      for (final shapeIds in config.apis.values) ...shapeIds,
    ],
  );

  final Set<String> dependencies = {};
  for (final library in libraries) {
    final smithyLibrary = library.smithyLibrary;
    final outPath = path.join(
      'lib',
      smithyLibrary.libRelativePath,
    );
    final output = library.emit();
    dependencies.addAll(library.dependencies);
    final outFile = File(outPath);
    await outFile.create(recursive: true);
    await outFile.writeAsString(output);
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
    exitError('`dart run build_runner build` failed: $exitCode.');
  }

  stdout.writeln('Successfully generated SDK');
  stdout.writeln('Make sure to add the following dependencies:');
  for (final dep in dependencies.toList()..sort()) {
    stdout.writeln('- $dep');
  }
}

Never exitError(Object error) {
  stderr.writeln(error);
  exit(1);
}

@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
)
@ShapeIdConverter()
class SdkConfig with AWSSerializable, AWSEquatable<SdkConfig> {
  const SdkConfig({
    required this.apis,
  });

  final Map<String, List<ShapeId>> apis;

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const <Object?, Object?>{});

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [apis];
}

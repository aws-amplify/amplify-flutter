// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:grpc/grpc.dart';
import 'package:path/path.dart' as path;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:smithy_codegen/smithy_codegen.dart';
import 'package:smithy_codegen/src/server.dart';

void main(List<String> args) async {
  final CodegenConfig config;
  try {
    config = parseCodegenConfig(args);
  } on FormatException catch (e) {
    stderr.writeln(e.message);
    usage();
  }

  if (config.listen) {
    // Connect server at local port.
    final server = Server([CodegenService()]);
    await server.serve(address: InternetAddress.loopbackIPv4, port: 0);

    // Write the port to stdout so that clients can connect.
    stdout.writeln(server.port);
    return;
  }

  // Read from stdin or inputFile, depending on configuration.
  final String? inputFile = config.inputFile;
  final String? json = inputFile != null
      ? File(inputFile).readAsStringSync()
      : stdin.readLineSync(encoding: utf8);
  if (json == null) {
    usage();
  }
  final SmithyAst ast;
  try {
    ast = parseAstJson(json);
  } on Object catch (e) {
    stderr.writeln(e.toString());
    usage();
  }

  final service = ast.shapes.values.whereType<ServiceShape>().singleOrNull;
  if (service == null) {
    stderr.writeln('Cannot generate for multiple services.');
    exit(1);
  }

  final outputPath = config.output;
  final packageName = (config.packageName ?? service.shapeId.shape).snakeCase;
  final outputs = generateForAst(
    ast,
    packageName: packageName,
    generateServer: config.server,
  );
  final Set<String> dependencies = {};
  for (final library in outputs.values.expand((out) => out.libraries)) {
    final smithyLibrary = library.smithyLibrary;
    final outPath = path.join(
      outputPath,
      smithyLibrary.projectRelativePath,
    );
    final output = library.emit();
    dependencies.addAll(library.dependencies);
    final outFile = File(outPath);
    await outFile.create(recursive: true);
    await outFile.writeAsString(output);
  }

  // Create pubspec
  final pubspecPath = path.join(outputPath, 'pubspec.yaml');
  final pubspec = Pubspec(
    packageName,
    description:
        '${packageName.split('_').map((s) => s.capitalized).join(' ')} SDK',
    version: Version(0, 1, 0),
  );
  final pubspecYaml = PubspecGenerator(
    pubspec,
    dependencies,
    smithyPath: config.smithyPath,
  ).generate();

  await File(pubspecPath).writeAsString(pubspecYaml);

  // Create analysis options
  final analysisOptionsPath = path.join(outputPath, 'analysis_options.yaml');
  await File(analysisOptionsPath).writeAsString('''
include: package:lints/recommended.yaml

analyzer:
  errors:
    deprecated_member_use_from_same_package: ignore
    avoid_unused_constructor_parameters: ignore
    non_constant_identifier_names: ignore
    prefer_interpolation_to_compose_strings: ignore
''');

  // Run `dart pub get`
  final pubGetRes = await Process.run(
    'dart',
    [
      'pub',
      'upgrade',
    ],
    workingDirectory: outputPath,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
  );
  if (pubGetRes.exitCode != 0) {
    stderr.write('`dart pub upgrade` failed for $outputPath: ');
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

Never usage() {
  stderr
    ..writeln(
      'Usage: echo "<smithy_json>" | smithy_codegen -o ~/dev/my_service',
    )
    ..writeln(parserUsage);
  exit(1);
}

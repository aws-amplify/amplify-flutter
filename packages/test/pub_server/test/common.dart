// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml_edit/yaml_edit.dart';

Future<void> runProcess(
  String command,
  List<String> args, {
  required Uri pubServerUri,
  required String workingDirectory,
}) async {
  final process = await Process.run(
    command,
    args,
    workingDirectory: workingDirectory,
    runInShell: true,
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
    environment: {
      'PUB_HOSTED_URL': pubServerUri.toString(),
    },
  );
  if (process.exitCode != 0) {
    throw Exception(
      'Failed to run "$command ${args.join(' ')}": '
      '${process.stdout}\n'
      '${process.stderr}',
    );
  }
}

Future<void> createPackage(
  String name, {
  String? publishTo,
  List<String> dependencies = const [],
  required String workingDirectory,
  required Uri pubServerUri,
}) async {
  await runProcess(
    'dart',
    [
      'create',
      '--no-pub',
      name,
    ],
    workingDirectory: workingDirectory,
    pubServerUri: pubServerUri,
  );
  final pubspecFile = File(p.join(workingDirectory, name, 'pubspec.yaml'));
  final pubspec = await pubspecFile.readAsString();
  final editor = YamlEditor(pubspec);
  if (publishTo != null) {
    editor.update(['publish_to'], publishTo);
    await pubspecFile.writeAsString(editor.toString());
  }
  editor.update(
    ['dependencies'],
    {
      for (final dependency in dependencies) dependency: 'any',
    },
  );
  await pubspecFile.writeAsString(editor.toString());

  // Create a LICENSE file, otherwise pub publish will fail.
  await File(p.join(workingDirectory, name, 'LICENSE')).writeAsString('MIT');
}

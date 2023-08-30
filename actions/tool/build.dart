#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;

// Compiles each entrypoint in `bin/` as a separate GitHub action
// using the accompanying `.yaml` file as the GH action descriptor.
Future<void> main() async {
  final rootDir = Directory.fromUri(Platform.script.resolve('..'));
  final binDir = Directory.fromUri(
    Platform.script.resolve('../bin'),
  );
  final actions = binDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .map((f) {
    final yaml = File(
      p.join(
        binDir.path,
        '${p.basenameWithoutExtension(f.path)}.yaml',
      ),
    );
    if (!yaml.existsSync()) {
      throw Exception('No YAML found for entrypoint: ${f.path}');
    }
    return (entrypoint: f, yaml: yaml);
  });

  final actionsDir = Directory.fromUri(
    Platform.script.resolve('../../.github/composite_actions'),
  );

  for (final (:entrypoint, :yaml) in actions) {
    final actionName = p.basenameWithoutExtension(entrypoint.path);
    final outputDir = Directory(p.join(actionsDir.path, actionName))
      ..createSync();

    // Copy YAML as `action.yaml`
    yaml.copySync(p.join(outputDir.path, 'action.yaml'));

    // Compile entrypoint into temp dir and run `ncc` to produce dist bundle.
    await withTempDir((temp) async {
      final distDir = Directory(p.join(temp.path, 'dist'))..createSync();

      stdout.writeln('Compiling ${entrypoint.path}...');
      final compiledJs = p.join(distDir.path, 'main.cjs');
      final compileRes = runProcess(
        'dart',
        [
          'compile',
          'js',
          '--enable-experiment=inline-class',
          '--server-mode',
          '-o',
          compiledJs,
          entrypoint.path,
        ],
        workingDirectory: rootDir.path,
      );
      if (!compileRes) {
        throw Exception('Failed to compile ${entrypoint.path}');
      }
      stdout.writeln('Successfully compiled ${entrypoint.path} to $compiledJs');

      // Copy over NPM project and init.
      File(p.join(rootDir.path, 'package.json'))
          .copySync(p.join(temp.path, 'package.json'));
      File(p.join(rootDir.path, 'pnpm-lock.yaml'))
          .copySync(p.join(temp.path, 'pnpm-lock.yaml'));
      if (!runProcess('pnpm', ['install'], workingDirectory: temp.path)) {
        throw Exception('Could not install NPM modules');
      }

      // Build project using `ncc`
      File(p.join(rootDir.path, 'lib', 'bootstrap.mjs'))
          .copySync(p.join(temp.path, 'main.mjs'));
      if (!runProcess('pnpm', ['run', 'build'], workingDirectory: temp.path)) {
        throw Exception('Could not bundle project');
      }

      // Copy files to `.github` directory.
      final outputDistDir = Directory(p.join(outputDir.path, 'dist'))
        ..createSync();
      for (final file in distDir.listSync().cast<File>()) {
        file.copySync(p.join(outputDistDir.path, p.basename(file.path)));
      }
    });

    stdout.writeln('Successfully built module: $actionName');
  }
}

Future<void> withTempDir(FutureOr<void> Function(Directory temp) action) async {
  final tmpDir = Directory.systemTemp.createTempSync('aft_actions_');
  try {
    await action(tmpDir);
  } finally {
    tmpDir.deleteSync(recursive: true);
  }
}

bool runProcess(
  String executable,
  List<String> args, {
  String? workingDirectory,
}) {
  final result = Process.runSync(
    executable,
    args,
    stdoutEncoding: const SystemEncoding(),
    stderrEncoding: const SystemEncoding(),
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) {
    stderr
      ..writeln(result.stdout)
      ..writeln(result.stderr);
    return false;
  }
  return true;
}

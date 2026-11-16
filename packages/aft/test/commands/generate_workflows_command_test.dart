// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aft/src/commands/generate/generate_workflows_command.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

import '../helpers/repo_descriptor.dart';

void main() {
  group('GenerateWorkflowsCommand --set-exit-if-changed', () {
    // Runs the command in a package-free sandbox, so only
    // `.github/dependabot.yaml` is generated. A JIT snapshot avoids ~10s per
    // call; kernel compilation drops `zDebugMode`, which the loader needs.
    late Directory buildDir;
    late String aftSnapshot;
    late GitDir gitDir;

    setUpAll(() async {
      buildDir = Directory.systemTemp.createTempSync('aft_snapshot');
      aftSnapshot = p.join(buildDir.path, 'aft.snapshot');
      final result = await Process.run(Platform.resolvedExecutable, [
        '--snapshot=$aftSnapshot',
        p.absolute('bin', 'aft.dart'),
      ]);
      expect(result.exitCode, 0, reason: result.stderr as String);
    });

    tearDownAll(() => buildDir.deleteSync(recursive: true));

    Future<ProcessResult> generateWorkflows() => Process.run(
      Platform.resolvedExecutable,
      [aftSnapshot, 'generate', 'workflows', '--set-exit-if-changed'],
      workingDirectory: d.sandbox,
    );

    setUp(() async {
      gitDir = await GitDir.init(d.sandbox);
      await gitDir.runCommand(['config', 'user.email', 'test@example.com']);
      await gitDir.runCommand(['config', 'user.name', 'Test']);
      await d.dir('.github/workflows', []).create();
      // The real root pubspec, so `aft` finds its config.
      await d.file('pubspec.yaml', repo([]).pubspec).create();
      await gitDir.runCommand(['add', '.']);
      await gitDir.runCommand(['commit', '-m', 'Initial commit']);
    });

    Future<void> commitAll() async {
      await gitDir.runCommand(['add', '.']);
      await gitDir.runCommand(['commit', '-m', 'Generate workflows']);
    }

    test('exits 1 and names the file when a generated file is new', () async {
      final result = await generateWorkflows();
      expect(result.exitCode, 1);
      expect(result.stderr, contains('?? .github/dependabot.yaml'));
      expect(result.stderr, contains('Workflows are not up to date'));
      expect(result.stderr, isNot(contains('#0 ')));
    });

    test('reports a new file when the repo hides untracked files', () async {
      await gitDir.runCommand(['config', 'status.showUntrackedFiles', 'no']);

      final result = await generateWorkflows();
      expect(result.exitCode, 1);
      expect(result.stderr, contains('?? .github/dependabot.yaml'));
    });

    test('exits 0 when the generated files are committed', () async {
      await generateWorkflows();
      await commitAll();

      final result = await generateWorkflows();
      expect(result.exitCode, 0, reason: result.stderr as String);
    });

    test('exits 1 when a committed generated file is stale', () async {
      await generateWorkflows();
      await d.file('.github/dependabot.yaml', 'stale\n').create();
      await commitAll();

      final result = await generateWorkflows();
      expect(result.exitCode, 1);
      expect(result.stderr, contains(' M .github/dependabot.yaml'));
    });

    test('ignores changes outside the generated files', () async {
      await generateWorkflows();
      await commitAll();
      await d.dir('.github/composite_actions', [
        d.file('action.yaml', 'name: x\n'),
      ]).create();

      final result = await generateWorkflows();
      expect(result.exitCode, 0, reason: result.stderr as String);
    });

    test('keeps a custom workflow that carries the generated header', () async {
      // `publish_to: none` skips the package before its workflow is generated,
      // so the custom workflow must be protected independently of that.
      await d.dir('packages/custom_pkg', [
        d.file('pubspec.yaml', '''
name: custom_pkg
version: 0.1.0
publish_to: none

environment:
  sdk: ^3.9.0

aft:
  github:
    custom: true
'''),
      ]).create();
      await d.dir('.github/workflows', [
        d.file('custom_pkg.yaml', '$generatedHeader\nname: custom_pkg\n'),
      ]).create();
      await generateWorkflows();
      await commitAll();

      final result = await generateWorkflows();
      expect(result.exitCode, 0, reason: result.stderr as String);
      expect(
        File(
          p.join(d.sandbox, '.github/workflows/custom_pkg.yaml'),
        ).existsSync(),
        isTrue,
      );
    });

    test('ignores pinned dependencies in the root Dependabot entry', () async {
      await d.file('pubspec.yaml', '''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0

aft:
  pinned:
    - json_serializable
''').create();

      await generateWorkflows();
      final dependabot = File(
        p.join(d.sandbox, '.github/dependabot.yaml'),
      ).readAsStringSync();
      expect(
        dependabot,
        contains('      - dependency-name: "json_serializable"\n'),
      );
    });

    test('exits 0 without a workflows directory', () async {
      Directory(p.join(d.sandbox, '.github/workflows')).deleteSync();
      await generateWorkflows();
      await commitAll();

      final result = await generateWorkflows();
      expect(result.exitCode, 0, reason: result.stderr as String);
    });

    test('deletes a committed workflow no package generates', () async {
      await generateWorkflows();
      await d.dir('.github/workflows', [
        d.file('removed_package.yaml', '$generatedHeader\nname: removed\n'),
        d.file('handwritten.yaml', 'name: handwritten\n'),
      ]).create();
      await commitAll();

      final result = await generateWorkflows();
      expect(result.exitCode, 1);
      expect(
        result.stderr,
        contains(' D .github/workflows/removed_package.yaml'),
      );
      expect(result.stderr, isNot(contains('handwritten.yaml')));
      expect(
        File(
          p.join(d.sandbox, '.github/workflows/handwritten.yaml'),
        ).existsSync(),
        isTrue,
      );
    });
  });
}

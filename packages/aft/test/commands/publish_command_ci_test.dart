// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:git/git.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

const _packageName = 'aws_common';
const _version = '999.0.0';
const _tag = '$_packageName-v$_version';

final _aftEntrypoint = p.join(Directory.current.path, 'bin', 'aft.dart');

void main() {
  test('release tags match the publish workflow trigger', () {
    final tempDir = Directory.systemTemp.createTempSync('aft_tag_');
    addTearDown(() => tempDir.deleteSync(recursive: true));
    final command = PublishCommand();
    addTearDown(command.close);
    final trigger = Glob(_publishTagTrigger());

    for (final (name, version) in [
      ('amplify_auth_cognito', '2.6.1'),
      // A name ending in `_v<digit>` must not confuse the version parsing.
      ('aws_signature_v4', '0.6.13'),
    ]) {
      final tag = command.releaseTag(_packageAt(tempDir, name, version));
      expect(tag, '$name-v$version');
      expect(trigger.matches(tag), isTrue, reason: '$tag must trigger publish');
      // Mirrors the workflow's `${TAG##*-v}` version extraction.
      expect(tag.split('-v').last, version);
    }
  });

  test(
    'aft publish --ci skips a tag on HEAD and fails on any other commit',
    () async {
      final (repoDir, remoteDir) = await _fixture();
      await _git(repoDir, ['tag', '-a', _tag, '-m', 'Existing']);

      final onHead = await _runAft(repoDir, ['publish', '--ci']);
      printOnFailure('${onHead.stdout}\n${onHead.stderr}');
      expect(onHead.exitCode, 0);
      expect(onHead.stdout, contains('already exists at HEAD, skipping'));

      await _git(repoDir, ['commit', '--allow-empty', '-m', 'Next commit']);

      final elsewhere = await _runAft(repoDir, ['publish', '--ci']);
      printOnFailure('${elsewhere.stdout}\n${elsewhere.stderr}');
      expect(elsewhere.exitCode, 1);
      expect(elsewhere.stderr, contains('Tag $_tag already exists at'));

      expect(
        await _tagExists(remoteDir, _tag),
        isFalse,
        reason: 'neither outcome may push',
      );
    },
    timeout: const Timeout(Duration(minutes: 4)),
  );

  test(
    'aft publish --ci rejects --dry-run',
    () async {
      final (repoDir, _) = await _fixture();

      final result = await _runAft(repoDir, ['publish', '--ci', '--dry-run']);
      printOnFailure('${result.stdout}\n${result.stderr}');
      expect(result.exitCode, isNot(0));
      expect(result.stderr, contains('--ci cannot be combined with --dry-run'));
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );
}

/// The tag pattern `publish-tag.yaml` triggers on, so the tag format stays in
/// lockstep with the workflow.
String _publishTagTrigger() {
  final workflow = File(
    p.join(
      Directory.current.path,
      '..',
      '..',
      '.github',
      'workflows',
      'publish-tag.yaml',
    ),
  );
  final yaml = loadYaml(workflow.readAsStringSync()) as Map;
  final on = (yaml['on'] ?? yaml[true]) as Map;
  final tags = (on['push'] as Map)['tags'] as List;
  return tags.single as String;
}

PackageInfo _packageAt(Directory parent, String name, String version) {
  final dir = Directory(p.join(parent.path, name));
  File(p.join(dir.path, 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: $name
version: $version

environment:
  sdk: ^3.0.0
''');
  return PackageInfo.fromDirectory(dir)!;
}

/// Creates a repo holding an unpublished [_packageName] plus a bare remote.
Future<(Directory repo, Directory remote)> _fixture() async {
  final tempDir = Directory.systemTemp.createTempSync('aft_publish_ci_');
  addTearDown(() => tempDir.deleteSync(recursive: true));
  final repoDir = Directory(p.join(tempDir.path, 'repo'));
  final remoteDir = Directory(p.join(tempDir.path, 'remote.git'))
    ..createSync(recursive: true);

  File(p.join(repoDir.path, 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: aft_publish_ci_fixture
publish_to: none

environment:
  sdk: ^3.0.0
''');
  File(p.join(repoDir.path, 'packages', _packageName, 'pubspec.yaml'))
    ..createSync(recursive: true)
    ..writeAsStringSync('''
name: $_packageName
description: Fixture package for `aft publish --ci` tests.
version: $_version

environment:
  sdk: ^3.0.0
''');

  final gitDir = await GitDir.init(
    repoDir.path,
    allowContent: true,
    initialBranch: 'main',
  );
  await gitDir.runCommand(['config', 'user.email', 'aft@example.com']);
  await gitDir.runCommand(['config', 'user.name', 'aft']);
  await gitDir.runCommand(['add', '.']);
  await gitDir.runCommand(['commit', '-m', 'Initial commit']);
  await runGit(['init', '--bare', remoteDir.path]);
  await gitDir.runCommand(['remote', 'add', 'origin', remoteDir.path]);
  return (repoDir, remoteDir);
}

Future<ProcessResult> _runAft(Directory repoDir, List<String> args) =>
    Process.run(Platform.resolvedExecutable, [
      'run',
      _aftEntrypoint,
      '--directory',
      repoDir.path,
      ...args,
    ]);

Future<String> _git(Directory dir, List<String> args) async {
  final result = await runGit(args, processWorkingDir: dir.path);
  return (result.stdout as String).trim();
}

Future<bool> _tagExists(Directory dir, String tag) async {
  final result = await runGit(
    ['rev-parse', '--verify', '--quiet', 'refs/tags/$tag'],
    throwOnError: false,
    processWorkingDir: dir.path,
  );
  return result.exitCode == 0;
}

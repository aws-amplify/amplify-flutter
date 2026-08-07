// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// The fixture uses a real `pub.dev` package name at an unreleased version so
/// that `aft` treats it as needing publish, but not as a brand new package.
const _packageName = 'aws_common';
const _version = '999.0.0';
const _tag = '$_packageName-v$_version';

final _aftEntrypoint = p.join(Directory.current.path, 'bin', 'aft.dart');

void main() {
  group('aft publish --ci', () {
    late Directory tempDir;
    late Directory repoDir;
    late Directory remoteDir;

    setUp(() async {
      tempDir = Directory.systemTemp.createTempSync('aft_publish_ci_');
      repoDir = Directory(p.join(tempDir.path, 'repo'));
      remoteDir = Directory(p.join(tempDir.path, 'remote.git'));
      await _createRepo(repoDir);
      await _createRemote(repoDir, remoteDir);
    });

    tearDown(() => tempDir.deleteSync(recursive: true));

    test(
      'creates and pushes an annotated tag',
      () async {
        final result = await _runAft(repoDir, ['publish', '--ci']);
        printOnFailure('${result.stdout}\n${result.stderr}');

        expect(result.exitCode, 0);
        expect(result.stdout, contains(_tag));
        expect(await _tagExists(repoDir, _tag), isTrue, reason: 'local tag');
        expect(await _tagExists(remoteDir, _tag), isTrue, reason: 'remote tag');
        expect(await _git(repoDir, ['cat-file', '-t', _tag]), 'tag');
        expect(
          await _git(repoDir, ['tag', '-l', '--format=%(contents)', _tag]),
          contains('Release $_packageName $_version'),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    test(
      'skips a tag which already exists at HEAD',
      () async {
        final first = await _runAft(repoDir, ['publish', '--ci']);
        expect(first.exitCode, 0);

        final second = await _runAft(repoDir, ['publish', '--ci']);
        printOnFailure('${second.stdout}\n${second.stderr}');
        expect(second.exitCode, 0);
        expect(second.stdout, contains('already exists at HEAD, skipping'));
        expect(await _tagExists(repoDir, _tag), isTrue, reason: 'local tag');
      },
      timeout: const Timeout(Duration(minutes: 4)),
    );

    test(
      'fails when the tag exists on another commit',
      () async {
        await _git(repoDir, ['tag', '-a', _tag, '-m', 'stale']);
        await _git(repoDir, ['commit', '--allow-empty', '-m', 'Next commit']);

        final result = await _runAft(repoDir, ['publish', '--ci']);
        printOnFailure('${result.stdout}\n${result.stderr}');
        expect(result.exitCode, 1);
        expect(result.stderr, contains('Tag $_tag already exists at'));
        expect(
          await _tagExists(remoteDir, _tag),
          isFalse,
          reason: 'nothing should be pushed on a conflict',
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    test(
      'deletes the local tag when the push fails',
      () async {
        await _git(repoDir, [
          'remote',
          'set-url',
          'origin',
          p.join(tempDir.path, 'missing.git'),
        ]);

        final result = await _runAft(repoDir, ['publish', '--ci']);
        printOnFailure('${result.stdout}\n${result.stderr}');

        expect(result.exitCode, 1);
        expect(result.stderr, contains('Failed to push tag $_tag'));
        expect(
          await _tagExists(repoDir, _tag),
          isFalse,
          reason: 'a leftover local tag would block a retry',
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    test(
      '--dry-run does not create or push a tag',
      () async {
        final result = await _runAft(repoDir, ['publish', '--ci', '--dry-run']);
        printOnFailure('${result.stdout}\n${result.stderr}');

        expect(result.exitCode, 0);
        expect(result.stdout, contains('Would create and push tag $_tag'));
        expect(await _tagExists(repoDir, _tag), isFalse, reason: 'local tag');
        expect(
          await _tagExists(remoteDir, _tag),
          isFalse,
          reason: 'remote tag',
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    test('--tags only prints the tags', () async {
      final result = await _runAft(repoDir, ['publish', '--tags']);
      printOnFailure('${result.stdout}\n${result.stderr}');

      expect(result.exitCode, 0);
      expect(result.stdout, contains('New tag: $_tag'));
      expect(await _tagExists(repoDir, _tag), isFalse, reason: 'local tag');
    }, timeout: const Timeout(Duration(minutes: 3)));
  });
}

Future<ProcessResult> _runAft(Directory repoDir, List<String> args) =>
    Process.run(Platform.resolvedExecutable, [
      'run',
      _aftEntrypoint,
      '--directory',
      repoDir.path,
      ...args,
    ]);

Future<void> _createRepo(Directory repoDir) async {
  final packageDir = Directory(p.join(repoDir.path, 'packages', _packageName))
    ..createSync(recursive: true);
  File(p.join(repoDir.path, 'pubspec.yaml')).writeAsStringSync('''
name: aft_publish_ci_fixture
publish_to: none

environment:
  sdk: ^3.0.0
''');
  File(p.join(packageDir.path, 'pubspec.yaml')).writeAsStringSync('''
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
}

Future<void> _createRemote(Directory repoDir, Directory remoteDir) async {
  remoteDir.createSync(recursive: true);
  await runGit(['init', '--bare', remoteDir.path]);
  final gitDir = await GitDir.fromExisting(repoDir.path);
  await gitDir.runCommand(['remote', 'add', 'origin', remoteDir.path]);
}

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

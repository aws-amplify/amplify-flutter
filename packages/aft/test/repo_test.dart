// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aft/src/config/config_loader.dart';
import 'package:aft/src/git.dart';
import 'package:aft/src/repo.dart';
import 'package:checks/checks.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

const _rootPubspec = '''
name: my_repo
publish_to: none

environment:
  sdk: ^3.9.0
''';

const _packagePubspec = '''
name: my_pkg
version: 0.1.0

environment:
  sdk: ^3.9.0
''';

Future<String> _git(GitDir gitDir, List<String> args) async =>
    ((await gitDir.runCommand(args)).stdout as String).trim();

Future<Repo> _open(Directory workingDirectory) =>
    Repo.open(AftConfigLoader(workingDirectory: workingDirectory).load());

void main() {
  group('Repo.open', () {
    late Directory tempRoot;
    late Directory mainCheckout;
    late GitDir mainGit;
    late String mainHead;

    setUp(() async {
      tempRoot = await Directory.systemTemp.createTemp('aft_repo_test_');
      mainCheckout = Directory(p.join(tempRoot.path, 'main'))
        ..createSync(recursive: true);
      File(
        p.join(mainCheckout.path, 'pubspec.yaml'),
      ).writeAsStringSync(_rootPubspec);
      Directory(
        p.join(mainCheckout.path, 'packages', 'my_pkg'),
      ).createSync(recursive: true);
      File(
        p.join(mainCheckout.path, 'packages', 'my_pkg', 'pubspec.yaml'),
      ).writeAsStringSync(_packagePubspec);

      mainGit = await GitDir.init(
        mainCheckout.path,
        allowContent: true,
        initialBranch: 'main',
      );
      await mainGit.runCommand(['config', 'user.email', 'test@example.com']);
      await mainGit.runCommand(['config', 'user.name', 'Test']);
      await mainGit.runCommand(['add', '.']);
      await mainGit.runCommand(['commit', '-m', 'chore: initial commit']);
      mainHead = await _git(mainGit, ['rev-parse', 'HEAD']);
    });

    tearDown(() async {
      if (tempRoot.existsSync()) {
        await tempRoot.delete(recursive: true);
      }
    });

    test('opens a standard checkout', () async {
      final repo = await _open(mainCheckout);
      check(
        p.canonicalize(repo.rootDir.path),
      ).equals(p.canonicalize(mainCheckout.path));
      final (sha, _) = await repo.git.head;
      check(sha).equals(mainHead);
    });

    test('opens from a nested package directory', () async {
      final repo = await _open(
        Directory(p.join(mainCheckout.path, 'packages', 'my_pkg')),
      );
      check(
        p.canonicalize(repo.rootDir.path),
      ).equals(p.canonicalize(mainCheckout.path));
      final (sha, _) = await repo.git.head;
      check(sha).equals(mainHead);
    });

    test('throws when the directory is not a git checkout', () async {
      final notGit = Directory(p.join(tempRoot.path, 'not_git'))
        ..createSync(recursive: true);
      File(p.join(notGit.path, 'pubspec.yaml')).writeAsStringSync(_rootPubspec);
      await check(_open(notGit)).throws<ProcessException>();
    });

    test('throws when the root pubspec is below the git root', () async {
      final gitRoot = Directory(p.join(tempRoot.path, 'no_root_pubspec'))
        ..createSync(recursive: true);
      final nested = Directory(p.join(gitRoot.path, 'nested'))
        ..createSync(recursive: true);
      File(p.join(nested.path, 'pubspec.yaml')).writeAsStringSync(_rootPubspec);
      final gitDir = await GitDir.init(gitRoot.path, allowContent: true);
      await gitDir.runCommand(['config', 'user.email', 'test@example.com']);
      await gitDir.runCommand(['config', 'user.name', 'Test']);
      await gitDir.runCommand(['add', '.']);
      await gitDir.runCommand(['commit', '-m', 'chore: initial commit']);
      await check(_open(nested)).throws<ArgumentError>();
    });

    group('git worktree', () {
      late Directory worktree;
      late String worktreeHead;

      setUp(() async {
        worktree = Directory(p.join(tempRoot.path, 'worktree'));
        await mainGit.runCommand([
          'worktree',
          'add',
          '-b',
          'release',
          worktree.path,
        ]);

        // Add a worktree-only commit so the worktree `HEAD` is distinct from
        // the main checkout `HEAD`.
        File(
          p.join(worktree.path, 'packages', 'my_pkg', 'lib.dart'),
        ).writeAsStringSync('// worktree only\n');
        final worktreeGit = await GitDir.fromExisting(worktree.path);
        await worktreeGit.runCommand(['add', '.']);
        await worktreeGit.runCommand(['commit', '-m', 'feat: worktree change']);
        worktreeHead = await _git(worktreeGit, ['rev-parse', 'HEAD']);
        check(worktreeHead).not((it) => it.equals(mainHead));
      });

      test('opens a worktree checkout', () async {
        final repo = await _open(worktree);
        check(
          p.canonicalize(repo.rootDir.path),
        ).equals(p.canonicalize(worktree.path));
      });

      test('opens from a nested package directory in a worktree', () async {
        final repo = await _open(
          Directory(p.join(worktree.path, 'packages', 'my_pkg')),
        );
        check(
          p.canonicalize(repo.rootDir.path),
        ).equals(p.canonicalize(worktree.path));
      });

      test('resolves HEAD from the worktree, not the main checkout', () async {
        final repo = await _open(worktree);
        final (sha, commit) = await repo.git.head;
        check(sha).equals(worktreeHead);
        check(commit.message.trim()).equals('feat: worktree change');
        check(
          await _git(repo.git, ['rev-parse', '--abbrev-ref', 'HEAD']),
        ).equals('release');
      });

      test('lists worktree-only commits via revList', () async {
        final repo = await _open(worktree);
        final commits = await repo.git.revList(mainHead, worktreeHead).toList();
        check(commits.map((c) => c.$1)).deepEquals([worktreeHead]);
      });

      test('diffs trees using worktree history', () async {
        final repo = await _open(worktree);
        final base = await repo.git.commitFromRevision(mainHead);
        final head = await repo.git.commitFromRevision(worktreeHead);
        final changed = await repo.git.diffTrees(base.treeSha, head.treeSha);
        check(changed).contains('packages/my_pkg/lib.dart');
      });
    });
  });
}

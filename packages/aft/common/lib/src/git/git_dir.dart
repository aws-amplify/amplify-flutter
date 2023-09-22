// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io' show ProcessResult, ProcessException;

import 'package:aft_common/aft_common.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:path/path.dart' as p;
import 'package:process/process.dart';

final class GitDir {
  GitDir.raw(
    this.path, {
    this.processManager = const LocalProcessManager(),
  }) : assert(p.isAbsolute(path), 'path must be absolute');

  static Future<GitDir> init(
    String path, {
    ProcessManager processManager = const LocalProcessManager(),
    FileSystem fileSystem = const LocalFileSystem(),
  }) async {
    final source = fileSystem.directory(path);
    if (!source.existsSync()) {
      source.createSync(recursive: true);
    }

    // else, verify it's empty
    final isEmpty = await source.list().isEmpty;
    if (!isEmpty) {
      throw ArgumentError('source Directory is not empty - $source');
    }

    // using rev-parse because it will fail in many scenarios
    // including if the directory provided is a bare repository
    final pr = await processManager.runGit(
      ['rev-parse'],
      throwOnError: false,
      processWorkingDir: source.path,
    );
    final isGitDir = pr.exitCode == 0;
    if (isGitDir) {
      throw ArgumentError('Cannot init a directory that is already a '
          'git directory');
    }

    await processManager.runGit([
      'init',
      source.path,
    ]);

    // does a bit more work than strictly necessary
    // but at least it ensures consistency
    return fromExisting(source.path, processManager: processManager);
  }

  static Future<GitDir> fromExisting(
    String gitDirRoot, {
    ProcessManager processManager = const LocalProcessManager(),
  }) async {
    final path = p.absolute(gitDirRoot);

    final pr = await processManager.runGit(
      ['rev-parse', '--git-dir'],
      processWorkingDir: path,
    );
    final gitDirRaw = (pr.stdout as String).trim();
    final gitDir = p.isAbsolute(gitDirRaw)
        ? gitDirRaw
        : p.canonicalize(p.join(path, gitDirRaw));
    final gitRoot = p.dirname(gitDir);

    // `path` is the root of the git repo.
    if (p.equals(path, gitRoot)) {
      return GitDir.raw(path, processManager: processManager);
    }

    final commonDirOut = await processManager.runGit(
      ['rev-parse', '--git-common-dir'],
      processWorkingDir: path,
    );
    final commonDirRaw = (commonDirOut.stdout as String).trim();
    final commonDir = p.isAbsolute(commonDirRaw)
        ? commonDirRaw
        : p.canonicalize(p.join(path, commonDirRaw));

    // When $GIT_DIR and $GIT_COMMON_DIR differ, we are in a worktree.
    // https://git-scm.com/docs/git-worktree#_details
    final isWorktree = !p.equals(gitDir, commonDir);

    // `--show-prefix` returns the relative path from the git root to
    // `path` when working in a subdirectory of a git repo or worktree.
    // https://git-scm.com/docs/git-rev-parse#Documentation/git-rev-parse.txt---show-prefix
    final prefixOutput = await processManager.runGit(
      ['rev-parse', '--show-prefix'],
      processWorkingDir: path,
    );
    final prefix = (prefixOutput.stdout as String).trim();

    if (prefix.isNotEmpty || !isWorktree) {
      throw ArgumentError(
        'The provided value "$gitDirRoot" is not '
        'the root of a git directory or worktree',
      );
    }

    return GitDir.raw(path, processManager: processManager);
  }

  final String path;
  final ProcessManager processManager;

  Future<ProcessResult> runCommand(
    List<String> args, {
    ProcessSink? stdout,
    ProcessSink? stderr,
    bool throwOnError = true,
  }) {
    return processManager.runGit(
      args,
      throwOnError: throwOnError,
      stdout: stdout,
      stderr: stderr,
      processWorkingDir: path,
    );
  }

  Future<Commit> commitFromRevision(String revision) async {
    final pr = await runCommand(['cat-file', '-p', revision]);
    return Commit.parse(pr.stdout as String);
  }

  /// Returns the [CommitRef] for the current `HEAD`.
  Future<CommitRef> get head => commitRef('HEAD');

  /// Returns the [CommitRef] for the given [commit].
  Future<CommitRef> commitRef(String commit) async {
    if (_sha1Regex.hasMatch(commit)) {
      return (
        commit,
        await commitFromRevision(commit),
      );
    }
    return (
      revParse(commit),
      commitFromRevision(commit),
    ).wait;
  }

  Stream<Tag> tags() async* {
    final refs = await showRef(tags: true);

    for (final ref in refs) {
      final pr = await runCommand(['cat-file', '-p', ref.sha]);
      yield Tag.parseCatFile(pr.stdout as String);
    }
  }

  Future<List<CommitReference>> showRef({
    bool heads = false,
    bool tags = false,
  }) async {
    final args = ['show-ref'];

    if (heads) {
      args.add('--heads');
    }

    if (tags) {
      args.add('--tags');
    }

    final pr = await runCommand(args, throwOnError: false);
    if (pr.exitCode == 1) {
      // no heads present, return empty collection
      return [];
    }

    // otherwise, it should have worked fine...
    if (pr.exitCode != 0) {
      throw ProcessException(
        'git',
        args,
        '${pr.stdout}\n${pr.stderr}',
        pr.exitCode,
      );
    }

    return CommitReference.fromShowRefOutput(pr.stdout as String);
  }

  /// Runs a `git diff` between [baseTree] and [headTree] and returns the list
  /// of filepaths changed between the two commits.
  Future<List<String>> diffTrees(String baseTree, String headTree) async {
    final diff = await runCommand(
      ['diff', '--raw', '$baseTree..$headTree'],
    );
    final diffs = LineSplitter.split(diff.stdout as String);
    final changedPaths = <String>[];
    for (final diff in diffs) {
      // Example line:
      // :100644 100644 475c1a84d 3738675a1 M    packages/aws_sdk/smoke_test/test/build_verify_test.dart
      changedPaths.add(diff.split(_whitespace).last);
    }
    return changedPaths;
  }

  /// Runs `git rev-parse` with the provided [input].
  Future<String> revParse(String input) async {
    final revParse = await runCommand(['rev-parse', input]);
    return (revParse.stdout as String).trim();
  }

  /// Lists all commits, in reverse chronological order, between [baseCommit]
  /// and [headCommit].
  Stream<CommitRef> revList(String baseCommit, String headCommit) async* {
    final revList = await runCommand(
      ['rev-list', '$baseCommit..$headCommit'],
    );
    final commits = LineSplitter.split((revList.stdout as String).trim());
    for (final oid in commits) {
      yield await commitRef(oid);
    }
  }

  static final _sha1Regex = RegExp(r'[a-f0-9]{40}');
  static final _whitespace = RegExp(r'\s+');
}

/// A [Commit] and its associated SHA.
typedef CommitRef = (String oid, Commit commit);

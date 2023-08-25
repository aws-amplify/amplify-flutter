// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:git/git.dart';

extension GitHelpers on GitDir {
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
